# 🔐 Variables de Entorno - Guía Completa

## 📋 Backend (NestJS) - Variables de Entorno

### `.env` (Archivo principal - NO COMMITEAR)

```env
# =================================
# DATABASE CONFIGURATION
# =================================
# PostgreSQL connection string
# Formato: postgresql://USER:PASSWORD@HOST:PORT/DATABASE?schema=SCHEMA
DATABASE_URL="postgresql://postgres:postgres@localhost:5432/ecommerce_db?schema=public"

# =================================
# JWT CONFIGURATION
# =================================
# Clave secreta para firmar tokens JWT
# IMPORTANTE: Genera una clave segura en producción
# Puedes usar: openssl rand -base64 32
JWT_SECRET="tu-clave-super-secreta-cambia-esto-en-produccion-abc123xyz"

# Tiempo de expiración del token
# Formatos: 60, "2 days", "10h", "7d"
JWT_EXPIRES_IN="7d"

# Clave secreta para refresh tokens
JWT_REFRESH_SECRET="otra-clave-secreta-para-refresh-tokens-xyz789"
JWT_REFRESH_EXPIRES_IN="30d"

# =================================
# APPLICATION CONFIGURATION
# =================================
# Puerto en el que correrá el servidor
PORT=3001

# Entorno de ejecución
NODE_ENV="development"

# Nombre de la aplicación
APP_NAME="E-Commerce API"

# =================================
# CORS CONFIGURATION
# =================================
# Origen permitido para CORS (frontend URL)
CORS_ORIGIN="http://localhost:3000"

# Múltiples orígenes (separados por coma)
# CORS_ORIGIN="http://localhost:3000,http://localhost:3001"

# =================================
# FILE UPLOAD CONFIGURATION
# =================================
# Tamaño máximo de archivo (en bytes)
MAX_FILE_SIZE=5242880  # 5MB

# Directorio para almacenar uploads
UPLOAD_DIRECTORY="./uploads"

# =================================
# CLOUDINARY CONFIGURATION (Opcional)
# =================================
# Si usas Cloudinary para almacenar imágenes
CLOUDINARY_CLOUD_NAME="tu_cloud_name"
CLOUDINARY_API_KEY="tu_api_key"
CLOUDINARY_API_SECRET="tu_api_secret"

# =================================
# EMAIL CONFIGURATION (Opcional)
# =================================
# Para enviar emails de confirmación, etc.
MAIL_HOST="smtp.gmail.com"
MAIL_PORT=587
MAIL_USER="tu-email@gmail.com"
MAIL_PASSWORD="tu-app-password"
MAIL_FROM="noreply@tuapp.com"

# =================================
# RATE LIMITING
# =================================
# Límite de requests por tiempo
THROTTLE_TTL=60000      # Tiempo en ms (60 segundos)
THROTTLE_LIMIT=100      # Número de requests

# =================================
# PAYMENT GATEWAY (Opcional - Sprint futuro)
# =================================
# Stripe
STRIPE_SECRET_KEY="sk_test_..."
STRIPE_WEBHOOK_SECRET="whsec_..."

# =================================
# LOGGING
# =================================
# Nivel de logs: 'debug', 'info', 'warn', 'error'
LOG_LEVEL="debug"

# =================================
# REDIS (Opcional - para caché/sesiones)
# =================================
REDIS_HOST="localhost"
REDIS_PORT=6379
REDIS_PASSWORD=""

# =================================
# FRONTEND URL
# =================================
# URL del frontend (para redirecciones, emails, etc.)
FRONTEND_URL="http://localhost:3000"
```

### `.env.example` (Template para compartir - SÍ COMMITEAR)

```env
# =================================
# DATABASE CONFIGURATION
# =================================
DATABASE_URL="postgresql://user:password@localhost:5432/database?schema=public"

# =================================
# JWT CONFIGURATION
# =================================
JWT_SECRET="your-super-secret-jwt-key"
JWT_EXPIRES_IN="7d"
JWT_REFRESH_SECRET="your-refresh-token-secret"
JWT_REFRESH_EXPIRES_IN="30d"

# =================================
# APPLICATION CONFIGURATION
# =================================
PORT=3001
NODE_ENV="development"
APP_NAME="E-Commerce API"

# =================================
# CORS CONFIGURATION
# =================================
CORS_ORIGIN="http://localhost:3000"

# =================================
# FILE UPLOAD CONFIGURATION
# =================================
MAX_FILE_SIZE=5242880
UPLOAD_DIRECTORY="./uploads"

# =================================
# CLOUDINARY CONFIGURATION (Opcional)
# =================================
CLOUDINARY_CLOUD_NAME=""
CLOUDINARY_API_KEY=""
CLOUDINARY_API_SECRET=""

# =================================
# EMAIL CONFIGURATION (Opcional)
# =================================
MAIL_HOST="smtp.gmail.com"
MAIL_PORT=587
MAIL_USER=""
MAIL_PASSWORD=""
MAIL_FROM="noreply@tuapp.com"

# =================================
# RATE LIMITING
# =================================
THROTTLE_TTL=60000
THROTTLE_LIMIT=100

# =================================
# FRONTEND URL
# =================================
FRONTEND_URL="http://localhost:3000"
```

### `.env.test` (Para testing)

```env
DATABASE_URL="postgresql://postgres:postgres@localhost:5432/ecommerce_test?schema=public"
JWT_SECRET="test-secret-key"
JWT_EXPIRES_IN="1d"
NODE_ENV="test"
PORT=3002
CORS_ORIGIN="http://localhost:3000"
```

### `.env.production` (Para producción - NO COMMITEAR)

```env
DATABASE_URL="postgresql://user:password@production-host:5432/prod_db?schema=public"
JWT_SECRET="production-super-secure-secret-generate-with-openssl"
JWT_EXPIRES_IN="7d"
NODE_ENV="production"
PORT=3001
CORS_ORIGIN="https://tu-dominio.com"
LOG_LEVEL="error"
FRONTEND_URL="https://tu-dominio.com"
```

---

## 🎨 Frontend (Next.js) - Variables de Entorno

### `.env.local` (Desarrollo local - NO COMMITEAR)

```env
# =================================
# API CONFIGURATION
# =================================
# URL del backend API
NEXT_PUBLIC_API_URL=http://localhost:3001/api

# Timeout para requests (en ms)
NEXT_PUBLIC_API_TIMEOUT=30000

# =================================
# APPLICATION CONFIGURATION
# =================================
# Nombre de la aplicación
NEXT_PUBLIC_APP_NAME="E-Commerce Store"

# URL de la aplicación
NEXT_PUBLIC_APP_URL=http://localhost:3000

# Descripción para SEO
NEXT_PUBLIC_APP_DESCRIPTION="Modern e-commerce built with Next.js"

# =================================
# AUTHENTICATION
# =================================
# Clave para encriptar datos en localStorage (opcional)
NEXT_PUBLIC_STORAGE_KEY="ecommerce_storage"

# =================================
# FEATURES FLAGS
# =================================
# Habilitar/deshabilitar features
NEXT_PUBLIC_ENABLE_REVIEWS=true
NEXT_PUBLIC_ENABLE_WISHLIST=true
NEXT_PUBLIC_ENABLE_CHAT=false

# =================================
# PAGINATION
# =================================
# Items por página por defecto
NEXT_PUBLIC_ITEMS_PER_PAGE=12

# =================================
# CLOUDINARY (Para frontend)
# =================================
NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME="tu_cloud_name"
NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET="tu_upload_preset"

# =================================
# GOOGLE ANALYTICS (Opcional)
# =================================
NEXT_PUBLIC_GA_TRACKING_ID=""

# =================================
# SOCIAL MEDIA LINKS
# =================================
NEXT_PUBLIC_FACEBOOK_URL=""
NEXT_PUBLIC_TWITTER_URL=""
NEXT_PUBLIC_INSTAGRAM_URL=""

# =================================
# PAYMENT GATEWAY (Opcional)
# =================================
# Stripe Public Key
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY="pk_test_..."

# =================================
# MAP INTEGRATION (Opcional)
# =================================
NEXT_PUBLIC_GOOGLE_MAPS_API_KEY=""

# =================================
# CONTACT INFORMATION
# =================================
NEXT_PUBLIC_CONTACT_EMAIL="info@tuapp.com"
NEXT_PUBLIC_CONTACT_PHONE="+1234567890"
NEXT_PUBLIC_CONTACT_ADDRESS="Tu dirección"

# =================================
# DEVELOPMENT
# =================================
# Mostrar logs en consola
NEXT_PUBLIC_DEBUG=true

# Revalidación de páginas (en segundos)
NEXT_PUBLIC_REVALIDATE_TIME=60
```

### `.env.example` (Template - SÍ COMMITEAR)

```env
# =================================
# API CONFIGURATION
# =================================
NEXT_PUBLIC_API_URL=http://localhost:3001/api
NEXT_PUBLIC_API_TIMEOUT=30000

# =================================
# APPLICATION CONFIGURATION
# =================================
NEXT_PUBLIC_APP_NAME="E-Commerce Store"
NEXT_PUBLIC_APP_URL=http://localhost:3000
NEXT_PUBLIC_APP_DESCRIPTION="Modern e-commerce built with Next.js"

# =================================
# AUTHENTICATION
# =================================
NEXT_PUBLIC_STORAGE_KEY="ecommerce_storage"

# =================================
# FEATURES FLAGS
# =================================
NEXT_PUBLIC_ENABLE_REVIEWS=true
NEXT_PUBLIC_ENABLE_WISHLIST=true
NEXT_PUBLIC_ENABLE_CHAT=false

# =================================
# PAGINATION
# =================================
NEXT_PUBLIC_ITEMS_PER_PAGE=12

# =================================
# CLOUDINARY
# =================================
NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME=""
NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET=""

# =================================
# ANALYTICS
# =================================
NEXT_PUBLIC_GA_TRACKING_ID=""

# =================================
# PAYMENT
# =================================
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY=""

# =================================
# CONTACT
# =================================
NEXT_PUBLIC_CONTACT_EMAIL="info@tuapp.com"
NEXT_PUBLIC_CONTACT_PHONE=""
NEXT_PUBLIC_CONTACT_ADDRESS=""

# =================================
# DEVELOPMENT
# =================================
NEXT_PUBLIC_DEBUG=false
NEXT_PUBLIC_REVALIDATE_TIME=60
```

### `.env.production` (Producción - NO COMMITEAR)

```env
NEXT_PUBLIC_API_URL=https://api.tu-dominio.com/api
NEXT_PUBLIC_API_TIMEOUT=30000
NEXT_PUBLIC_APP_NAME="E-Commerce Store"
NEXT_PUBLIC_APP_URL=https://tu-dominio.com
NEXT_PUBLIC_APP_DESCRIPTION="Modern e-commerce built with Next.js"
NEXT_PUBLIC_STORAGE_KEY="ecommerce_storage"
NEXT_PUBLIC_ENABLE_REVIEWS=true
NEXT_PUBLIC_ENABLE_WISHLIST=true
NEXT_PUBLIC_ENABLE_CHAT=false
NEXT_PUBLIC_ITEMS_PER_PAGE=12
NEXT_PUBLIC_DEBUG=false
NEXT_PUBLIC_REVALIDATE_TIME=3600
```

---

## 🔒 Seguridad y Mejores Prácticas

### ✅ DO (Hacer)

1. **Usa prefijo `NEXT_PUBLIC_` en Next.js** para variables públicas del cliente
2. **Nunca commites archivos `.env`** con valores reales
3. **Usa `.env.example`** como template para otros desarrolladores
4. **Genera claves seguras** para JWT:
   ```bash
   # En terminal:
   openssl rand -base64 32
   ```
5. **Diferentes valores** para desarrollo, test y producción
6. **Documenta cada variable** con comentarios
7. **Usa valores por defecto** en el código cuando sea posible
8. **Valida variables requeridas** al inicio de la aplicación

### ❌ DON'T (No hacer)

1. **No hardcodees** valores sensibles en el código
2. **No uses las mismas claves** en desarrollo y producción
3. **No expongas** variables del backend en el frontend
4. **No compartas** archivos `.env` por email o chat
5. **No uses claves simples** como "secret" o "password123"

---

## 🛡️ Validación de Variables de Entorno

### Backend (NestJS) - Configuración con validación

```typescript
// src/config/env.validation.ts
import { plainToClass } from 'class-transformer';
import { IsEnum, IsNumber, IsString, validateSync } from 'class-validator';

enum Environment {
  Development = 'development',
  Production = 'production',
  Test = 'test',
}

class EnvironmentVariables {
  @IsEnum(Environment)
  NODE_ENV: Environment;

  @IsNumber()
  PORT: number;

  @IsString()
  DATABASE_URL: string;

  @IsString()
  JWT_SECRET: string;

  @IsString()
  JWT_EXPIRES_IN: string;

  @IsString()
  CORS_ORIGIN: string;
}

export function validate(config: Record<string, unknown>) {
  const validatedConfig = plainToClass(EnvironmentVariables, config, {
    enableImplicitConversion: true,
  });

  const errors = validateSync(validatedConfig, {
    skipMissingProperties: false,
  });

  if (errors.length > 0) {
    throw new Error(errors.toString());
  }

  return validatedConfig;
}
```

### Frontend (Next.js) - Validación con Zod

```typescript
// lib/env.ts
import { z } from 'zod';

const envSchema = z.object({
  NEXT_PUBLIC_API_URL: z.string().url(),
  NEXT_PUBLIC_APP_NAME: z.string().min(1),
  NEXT_PUBLIC_APP_URL: z.string().url(),
  NEXT_PUBLIC_ITEMS_PER_PAGE: z.string().transform(Number),
});

export const env = envSchema.parse({
  NEXT_PUBLIC_API_URL: process.env.NEXT_PUBLIC_API_URL,
  NEXT_PUBLIC_APP_NAME: process.env.NEXT_PUBLIC_APP_NAME,
  NEXT_PUBLIC_APP_URL: process.env.NEXT_PUBLIC_APP_URL,
  NEXT_PUBLIC_ITEMS_PER_PAGE: process.env.NEXT_PUBLIC_ITEMS_PER_PAGE,
});

// Uso:
// import { env } from '@/lib/env';
// const apiUrl = env.NEXT_PUBLIC_API_URL;
```

---

## 📦 Instalación de PostgreSQL

### Opción 1: Docker (Recomendado)

```bash
# Crear contenedor de PostgreSQL
docker run --name ecommerce-postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=ecommerce_db \
  -p 5432:5432 \
  -d postgres:15

# Verificar que esté corriendo
docker ps
```

### Opción 2: Instalación Local

**macOS:**
```bash
brew install postgresql@15
brew services start postgresql@15
createdb ecommerce_db
```

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql
sudo -u postgres createdb ecommerce_db
```

**Windows:**
- Descargar desde: https://www.postgresql.org/download/windows/
- Seguir el instalador
- Crear base de datos desde pgAdmin

---

## 🎯 Checklist de Configuración

### Backend
- [ ] Copiar `.env.example` a `.env`
- [ ] Configurar `DATABASE_URL` con tu PostgreSQL
- [ ] Generar `JWT_SECRET` seguro
- [ ] Ajustar `PORT` si es necesario
- [ ] Configurar `CORS_ORIGIN` con la URL de tu frontend
- [ ] Ejecutar `npm run generate` (Prisma)
- [ ] Ejecutar `npm run migrate` (Migraciones)

### Frontend
- [ ] Copiar `.env.example` a `.env.local`
- [ ] Configurar `NEXT_PUBLIC_API_URL` con la URL de tu backend
- [ ] Ajustar otras variables según necesites
- [ ] Reiniciar servidor de desarrollo

---

## 💡 Tips Adicionales

1. **Restart requerido:** Cambios en `.env` requieren reiniciar el servidor
2. **Next.js:** Variables con `NEXT_PUBLIC_` están disponibles en el navegador
3. **Gitignore:** Asegúrate de tener `.env*` en `.gitignore` (excepto `.env.example`)
4. **Deployment:** En plataformas como Vercel/Railway, configura variables en el dashboard
5. **Secrets:** Para producción, usa servicios de gestión de secretos (AWS Secrets Manager, etc.)

