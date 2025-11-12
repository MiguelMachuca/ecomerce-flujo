#!/bin/bash

# Script de configuración automatizada para Frontend (Next.js)
# Ejecutar con: bash setup-frontend.sh

echo "🚀 Configurando proyecto Frontend (Next.js)..."
echo ""

# Verificar si Node.js está instalado
if ! command -v node &> /dev/null
then
    echo "❌ Node.js no está instalado. Por favor instala Node.js v18+ primero."
    exit 1
fi

echo "✅ Node.js version: $(node -v)"
echo ""

# Crear proyecto Next.js
echo "📁 Creando proyecto frontend..."
npx create-next-app@latest frontend \
  --typescript \
  --tailwind \
  --eslint \
  --app \
  --no-src-dir \
  --import-alias "@/*"

# Entrar al directorio
cd frontend

echo ""
echo "📦 Instalando dependencias adicionales..."

# Dependencias principales
npm install axios zustand zod
npm install react-hot-toast
npm install @heroicons/react

# Dependencias de desarrollo
npm install -D @types/node

echo ""
echo "📂 Creando estructura de carpetas..."

# Crear estructura de carpetas
mkdir -p app/\(auth\)/{login,register}
mkdir -p app/\(shop\)/{products,cart,checkout,orders}
mkdir -p app/\(admin\)/{dashboard,products,categories,orders,users}

mkdir -p components/ui
mkdir -p components/features/{products,cart,checkout,orders,admin}
mkdir -p components/layout

mkdir -p lib/{api,hooks,utils,validations}
mkdir -p store
mkdir -p types
mkdir -p styles

echo ""
echo "📝 Creando archivos de configuración..."

# Crear archivo .env.local
cat > .env.local << 'EOF'
# API Backend URL
NEXT_PUBLIC_API_URL=http://localhost:3001/api

# App
NEXT_PUBLIC_APP_NAME="E-Commerce Store"
NEXT_PUBLIC_APP_URL=http://localhost:3000
EOF

# Crear archivo .env.example
cat > .env.example << 'EOF'
# API Backend URL
NEXT_PUBLIC_API_URL=http://localhost:3001/api

# App
NEXT_PUBLIC_APP_NAME="E-Commerce Store"
NEXT_PUBLIC_APP_URL=http://localhost:3000
EOF

# Actualizar tailwind.config.ts
cat > tailwind.config.ts << 'EOF'
import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#eff6ff',
          100: '#dbeafe',
          200: '#bfdbfe',
          300: '#93c5fd',
          400: '#60a5fa',
          500: '#3b82f6',
          600: '#2563eb',
          700: '#1d4ed8',
          800: '#1e40af',
          900: '#1e3a8a',
          950: '#172554',
        },
      },
      fontFamily: {
        sans: ['var(--font-inter)', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
};

export default config;
EOF

# Crear archivo de configuración de Next.js
cat > next.config.ts << 'EOF'
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: '**',
      },
    ],
  },
  // Experimental features
  experimental: {
    optimizePackageImports: ['@heroicons/react'],
  },
};

export default nextConfig;
EOF

# Crear archivo globals.css
cat > app/globals.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  :root {
    --background: 0 0% 100%;
    --foreground: 222.2 84% 4.9%;
  }

  body {
    @apply bg-gray-50 text-gray-900 antialiased;
  }
}

@layer components {
  .container-custom {
    @apply max-w-7xl mx-auto px-4 sm:px-6 lg:px-8;
  }

  .btn {
    @apply px-4 py-2 rounded-lg font-medium transition-colors duration-200;
  }

  .btn-primary {
    @apply bg-primary-600 text-white hover:bg-primary-700 disabled:bg-gray-300 disabled:cursor-not-allowed;
  }

  .btn-secondary {
    @apply bg-gray-200 text-gray-800 hover:bg-gray-300;
  }

  .input {
    @apply w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent outline-none transition-all;
  }

  .card {
    @apply bg-white rounded-lg shadow-md p-6;
  }
}
EOF

# Crear página principal
cat > app/page.tsx << 'EOF'
export default function Home() {
  return (
    <main className="min-h-screen container-custom py-12">
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          🚀 E-Commerce con Next.js + NestJS
        </h1>
        <p className="text-lg text-gray-600 mb-8">
          Proyecto de aprendizaje - Frontend configurado exitosamente
        </p>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-4xl mx-auto">
          <div className="card">
            <h2 className="text-xl font-semibold mb-2">Next.js 14</h2>
            <p className="text-gray-600">App Router + Server Components</p>
          </div>
          <div className="card">
            <h2 className="text-xl font-semibold mb-2">TypeScript</h2>
            <p className="text-gray-600">Type-safe development</p>
          </div>
          <div className="card">
            <h2 className="text-xl font-semibold mb-2">TailwindCSS</h2>
            <p className="text-gray-600">Utility-first CSS</p>
          </div>
        </div>
      </div>
    </main>
  );
}
EOF

# Crear layout raíz
cat > app/layout.tsx << 'EOF'
import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import { Toaster } from "react-hot-toast";

const inter = Inter({ 
  subsets: ["latin"],
  variable: '--font-inter',
});

export const metadata: Metadata = {
  title: "E-Commerce Store",
  description: "Modern e-commerce built with Next.js and NestJS",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es">
      <body className={inter.variable}>
        {children}
        <Toaster position="top-right" />
      </body>
    </html>
  );
}
EOF

echo ""
echo "✅ ¡Frontend configurado exitosamente!"
echo ""
echo "📋 Próximos pasos:"
echo "   1. cd frontend"
echo "   2. Revisa y ajusta .env.local si es necesario"
echo "   3. Ejecuta: npm run dev"
echo ""
echo "🎉 El frontend estará disponible en http://localhost:3000"
