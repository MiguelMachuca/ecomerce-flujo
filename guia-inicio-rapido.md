# 🚀 Guía de Inicio Rápido - Setup Completo

## 📋 Resumen de Archivos Creados

Has recibido 4 recursos fundamentales para tu aprendizaje:

1. **`plan-aprendizaje-nextjs-nestjs.md`** - Plan completo de sprints
2. **`setup-backend.sh`** - Script automatizado para backend
3. **`setup-frontend.sh`** - Script automatizado para frontend
4. **`estructura-carpetas-detallada.md`** - Arquitectura completa
5. **`variables-entorno.md`** - Configuración de variables de entorno
6. **`vscode-configuracion.md`** - Configuración optimizada de VS Code

---

## 🎯 Pasos para Comenzar (ORDEN RECOMENDADO)

### ✅ PASO 1: Configurar VS Code (5 minutos)

1. **Abre VS Code**

2. **Instala las extensiones recomendadas:**
   - Presiona `Cmd/Ctrl + Shift + X` para abrir extensiones
   - Busca e instala:
     - ESLint
     - Prettier
     - Prisma
     - Tailwind CSS IntelliSense
     - Error Lens

3. **Crea la carpeta de configuración:**
   ```bash
   mkdir -p .vscode
   ```

4. **Copia las configuraciones:**
   - Abre `vscode-configuracion.md`
   - Crea `.vscode/settings.json` y pega la configuración
   - Crea `.vscode/extensions.json` y pega las extensiones
   - Recarga VS Code: `Cmd/Ctrl + Shift + P` → "Reload Window"

---

### ✅ PASO 2: Instalar PostgreSQL (10-15 minutos)

**Opción A: Con Docker (Recomendado)**
```bash
docker run --name ecommerce-postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=ecommerce_db \
  -p 5432:5432 \
  -d postgres:15
```

**Opción B: Instalación local**
- **macOS:** `brew install postgresql@15 && brew services start postgresql@15`
- **Ubuntu:** `sudo apt install postgresql postgresql-contrib`
- **Windows:** Descargar desde postgresql.org

**Verificar instalación:**
```bash
# Con Docker
docker ps | grep postgres

# Localmente
psql --version
```

---

### ✅ PASO 3: Configurar Backend (15-20 minutos)

1. **Ejecuta el script de configuración:**
   ```bash
   # Dale permisos de ejecución
   chmod +x setup-backend.sh
   
   # Ejecuta el script
   ./setup-backend.sh
   ```

2. **Si prefieres hacerlo manual:**
   ```bash
   # Instalar NestJS CLI
   npm i -g @nestjs/cli
   
   # Crear proyecto
   nest new backend
   cd backend
   
   # Instalar dependencias
   npm install @nestjs/config @nestjs/jwt @nestjs/passport passport passport-jwt
   npm install @prisma/client bcrypt class-validator class-transformer
   npm install -D @types/passport-jwt @types/bcrypt prisma
   
   # Inicializar Prisma
   npx prisma init
   ```

3. **Configurar variables de entorno:**
   - Abre `backend/.env`
   - Actualiza `DATABASE_URL` con tu PostgreSQL
   - Genera un JWT_SECRET seguro:
     ```bash
     openssl rand -base64 32
     ```

4. **Ejecutar migraciones:**
   ```bash
   cd backend
   npm run generate
   npm run migrate
   ```

5. **Iniciar el backend:**
   ```bash
   npm run start:dev
   ```

6. **Verificar:**
   - Abre http://localhost:3001
   - Deberías ver "Hello World!" o similar

---

### ✅ PASO 4: Configurar Frontend (10-15 minutos)

1. **Ejecuta el script de configuración:**
   ```bash
   # Dale permisos de ejecución
   chmod +x setup-frontend.sh
   
   # Ejecuta el script
   ./setup-frontend.sh
   ```

2. **Si prefieres hacerlo manual:**
   ```bash
   # Crear proyecto Next.js
   npx create-next-app@latest frontend \
     --typescript \
     --tailwind \
     --eslint \
     --app \
     --no-src-dir \
     --import-alias "@/*"
   
   cd frontend
   
   # Instalar dependencias
   npm install axios zustand zod react-hot-toast @heroicons/react
   ```

3. **Configurar variables de entorno:**
   - Crea `frontend/.env.local`
   - Agrega:
     ```env
     NEXT_PUBLIC_API_URL=http://localhost:3001/api
     NEXT_PUBLIC_APP_NAME="E-Commerce Store"
     ```

4. **Iniciar el frontend:**
   ```bash
   npm run dev
   ```

5. **Verificar:**
   - Abre http://localhost:3000
   - Deberías ver la página de inicio de Next.js

---

### ✅ PASO 5: Verificar Integración (5 minutos)

1. **Crear endpoint de prueba en el backend:**

   ```typescript
   // backend/src/app.controller.ts
   import { Controller, Get } from '@nestjs/common';

   @Controller('api')
   export class AppController {
     @Get('health')
     health() {
       return { status: 'ok', message: 'Backend is running!' };
     }
   }
   ```

2. **Probar desde el frontend:**

   ```typescript
   // frontend/app/page.tsx
   'use client';

   import { useEffect, useState } from 'react';
   import axios from 'axios';

   export default function Home() {
     const [status, setStatus] = useState('');

     useEffect(() => {
       axios.get('http://localhost:3001/api/health')
         .then(res => setStatus(res.data.message))
         .catch(err => setStatus('Error connecting to backend'));
     }, []);

     return (
       <main className="min-h-screen flex items-center justify-center">
         <div className="text-center">
           <h1 className="text-4xl font-bold mb-4">
             🚀 Setup Completo!
           </h1>
           <p className="text-lg">Backend status: {status}</p>
         </div>
       </main>
     );
   }
   ```

3. **Refresca el navegador** y deberías ver el mensaje del backend.

---

## 🎉 ¡Setup Completo! ¿Qué Sigue?

### Tu Situación Actual:
- ✅ VS Code configurado
- ✅ PostgreSQL corriendo
- ✅ Backend (NestJS) funcionando en http://localhost:3001
- ✅ Frontend (Next.js) funcionando en http://localhost:3000
- ✅ Comunicación entre ambos verificada

### Próximos Pasos:

1. **Lee el Plan de Aprendizaje completo** (`plan-aprendizaje-nextjs-nestjs.md`)
2. **Familiarízate con la estructura de carpetas** (`estructura-carpetas-detallada.md`)
3. **Revisa las variables de entorno** (`variables-entorno.md`)

### Cuando estés listo:

**AVÍSAME** diciendo:
> "Terminé el setup, estoy listo para el Sprint 1"

Y te guiaré paso a paso con:
- ✅ Código específico del Sprint 1 (Autenticación)
- ✅ Explicaciones detalladas
- ✅ Resolución de dudas
- ✅ Ejercicios prácticos

---

## 🐛 Troubleshooting Común

### Error: Puerto 3000 o 3001 ya en uso
```bash
# macOS/Linux
lsof -ti:3000 | xargs kill -9
lsof -ti:3001 | xargs kill -9

# Windows
netstat -ano | findstr :3000
taskkill /PID <PID> /F
```

### Error: PostgreSQL no conecta
```bash
# Verificar que esté corriendo
docker ps  # Si usas Docker

# Probar conexión
psql -h localhost -U postgres -d ecommerce_db
```

### Error: Prisma no genera los tipos
```bash
cd backend
npm run generate
# Si falla, elimina node_modules y reinstala
rm -rf node_modules package-lock.json
npm install
npm run generate
```

### Error: ESLint o Prettier no funciona
1. Recarga VS Code: `Cmd/Ctrl + Shift + P` → "Reload Window"
2. Verifica que las extensiones estén instaladas
3. Revisa que `.eslintrc` y `.prettierrc` existan

---

## 📚 Recursos Útiles Durante el Desarrollo

### Documentación
- [Next.js Docs](https://nextjs.org/docs)
- [NestJS Docs](https://docs.nestjs.com)
- [Prisma Docs](https://www.prisma.io/docs)
- [TailwindCSS Docs](https://tailwindcss.com/docs)

### Herramientas
- **Prisma Studio:** Visualiza tu base de datos
  ```bash
  cd backend && npm run studio
  ```
- **Thunder Client:** Cliente REST en VS Code (alternativa a Postman)

### Comunidades
- [Next.js Discord](https://nextjs.org/discord)
- [NestJS Discord](https://discord.nestjs.com)
- Stack Overflow con tags: `next.js`, `nestjs`, `prisma`

---

## 🎯 Checklist Final

Antes de continuar al Sprint 1, verifica:

- [ ] VS Code configurado con extensiones
- [ ] PostgreSQL instalado y corriendo
- [ ] Backend corriendo sin errores en http://localhost:3001
- [ ] Frontend corriendo sin errores en http://localhost:3000
- [ ] Prisma genera los tipos correctamente
- [ ] Variables de entorno configuradas
- [ ] Comunicación frontend-backend funciona
- [ ] Git inicializado en ambos proyectos
- [ ] `.env` añadido a `.gitignore`

---

## 💪 Estás Listo!

Has completado el **Sprint 0** exitosamente. Ahora tienes:

- ✅ Entorno de desarrollo profesional
- ✅ Arquitectura bien definida
- ✅ Herramientas configuradas
- ✅ Base sólida para aprender

**¡Felicidades!** 🎉

Cuando estés listo para comenzar con autenticación, usuarios y tus primeros componentes React, **avísame** y empezamos el Sprint 1.

¡Mucho éxito en tu aprendizaje! 🚀
