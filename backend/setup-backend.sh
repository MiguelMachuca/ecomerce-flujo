#!/bin/bash

# Script de configuración automatizada para Backend (NestJS)
# Ejecutar con: bash setup-backend.sh

echo "🚀 Configurando proyecto Backend (NestJS)..."
echo ""

# Verificar si Node.js está instalado
if ! command -v node &> /dev/null
then
    echo "❌ Node.js no está instalado. Por favor instala Node.js v18+ primero."
    exit 1
fi

echo "✅ Node.js version: $(node -v)"
echo ""

# Instalar NestJS CLI globalmente
echo "📦 Instalando NestJS CLI..."
npm install -g @nestjs/cli

# Crear proyecto NestJS
echo "📁 Creando proyecto backend..."
nest new backend --package-manager npm --skip-git

# Entrar al directorio
cd backend

echo ""
echo "📦 Instalando dependencias principales..."

# Dependencias principales
npm install @nestjs/config @nestjs/jwt @nestjs/passport passport passport-jwt
npm install @prisma/client bcrypt class-validator class-transformer
npm install passport-local

# Dependencias de desarrollo
npm install -D @types/passport-jwt @types/bcrypt prisma @types/passport-local

echo ""
echo "🗄️ Configurando Prisma..."
npx prisma init

# Crear estructura de carpetas
echo "📂 Creando estructura de carpetas..."
mkdir -p src/modules/auth/{dto,guards,strategies}
mkdir -p src/modules/users/dto
mkdir -p src/modules/products/dto
mkdir -p src/modules/categories/dto
mkdir -p src/modules/orders/dto
mkdir -p src/modules/cart/dto
mkdir -p src/modules/admin
mkdir -p src/common/{decorators,filters,guards,interceptors,pipes,types}
mkdir -p src/config
mkdir -p src/database

echo ""
echo "📝 Creando archivos de configuración..."

# Crear archivo .env
cat > .env << 'EOF'
# Database
DATABASE_URL="postgresql://postgres:postgres@localhost:5432/ecommerce_db?schema=public"

# JWT
JWT_SECRET="your-super-secret-jwt-key-change-this-in-production"
JWT_EXPIRES_IN="7d"

# App
PORT=3001
NODE_ENV="development"

# CORS
CORS_ORIGIN="http://localhost:3000"
EOF

# Crear archivo .env.example
cat > .env.example << 'EOF'
# Database
DATABASE_URL="postgresql://user:password@localhost:5432/database?schema=public"

# JWT
JWT_SECRET="your-jwt-secret"
JWT_EXPIRES_IN="7d"

# App
PORT=3001
NODE_ENV="development"

# CORS
CORS_ORIGIN="http://localhost:3000"
EOF

# Actualizar schema.prisma
cat > prisma/schema.prisma << 'EOF'
generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

model User {
  id        String   @id @default(uuid())
  email     String   @unique
  password  String
  firstName String
  lastName  String
  role      Role     @default(USER)
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
  orders    Order[]
  cart      Cart?

  @@map("users")
}

enum Role {
  USER
  ADMIN
}

model Category {
  id          String    @id @default(uuid())
  name        String    @unique
  slug        String    @unique
  description String?
  products    Product[]
  createdAt   DateTime  @default(now())
  updatedAt   DateTime  @updatedAt

  @@map("categories")
}

model Product {
  id          String      @id @default(uuid())
  name        String
  slug        String      @unique
  description String
  price       Float
  stock       Int
  images      String[]
  categoryId  String
  category    Category    @relation(fields: [categoryId], references: [id])
  isActive    Boolean     @default(true)
  createdAt   DateTime    @default(now())
  updatedAt   DateTime    @updatedAt
  orderItems  OrderItem[]
  cartItems   CartItem[]

  @@map("products")
}

model Cart {
  id        String     @id @default(uuid())
  userId    String     @unique
  user      User       @relation(fields: [userId], references: [id])
  items     CartItem[]
  createdAt DateTime   @default(now())
  updatedAt DateTime   @updatedAt

  @@map("carts")
}

model CartItem {
  id        String  @id @default(uuid())
  cartId    String
  cart      Cart    @relation(fields: [cartId], references: [id], onDelete: Cascade)
  productId String
  product   Product @relation(fields: [productId], references: [id])
  quantity  Int     @default(1)

  @@unique([cartId, productId])
  @@map("cart_items")
}

model Order {
  id              String      @id @default(uuid())
  userId          String
  user            User        @relation(fields: [userId], references: [id])
  items           OrderItem[]
  total           Float
  status          OrderStatus @default(PENDING)
  shippingAddress Json
  createdAt       DateTime    @default(now())
  updatedAt       DateTime    @updatedAt

  @@map("orders")
}

model OrderItem {
  id        String  @id @default(uuid())
  orderId   String
  order     Order   @relation(fields: [orderId], references: [id], onDelete: Cascade)
  productId String
  product   Product @relation(fields: [productId], references: [id])
  quantity  Int
  price     Float

  @@map("order_items")
}

enum OrderStatus {
  PENDING
  PROCESSING
  SHIPPED
  DELIVERED
  CANCELLED
}
EOF

# Actualizar main.ts
cat > src/main.ts << 'EOF'
import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // Validación global
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  // CORS
  app.enableCors({
    origin: process.env.CORS_ORIGIN || 'http://localhost:3000',
    credentials: true,
  });

  // Prefijo global
  app.setGlobalPrefix('api');

  const port = process.env.PORT || 3001;
  await app.listen(port);
  
  console.log(`🚀 Backend running on: http://localhost:${port}/api`);
}
bootstrap();
EOF

# Actualizar package.json scripts
echo ""
echo "📝 Actualizando scripts de package.json..."

# Usar node para actualizar el package.json
node -e "
const fs = require('fs');
const pkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
pkg.scripts['start:dev'] = 'nest start --watch';
pkg.scripts['migrate'] = 'npx prisma migrate dev';
pkg.scripts['migrate:deploy'] = 'npx prisma migrate deploy';
pkg.scripts['studio'] = 'npx prisma studio';
pkg.scripts['seed'] = 'ts-node prisma/seed.ts';
pkg.scripts['generate'] = 'npx prisma generate';
fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));
"

echo ""
echo "✅ ¡Backend configurado exitosamente!"
echo ""
echo "📋 Próximos pasos:"
echo "   1. cd backend"
echo "   2. Configura tu base de datos PostgreSQL"
echo "   3. Actualiza el DATABASE_URL en .env"
echo "   4. Ejecuta: npm run generate"
echo "   5. Ejecuta: npm run migrate"
echo "   6. Ejecuta: npm run start:dev"
echo ""
echo "🎉 El backend estará disponible en http://localhost:3001/api"
