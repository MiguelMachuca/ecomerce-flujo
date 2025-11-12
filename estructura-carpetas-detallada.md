# 📁 Estructura de Carpetas Completa

## 🗂️ Estructura del Proyecto Global

```
ecommerce-project/
├── backend/                    # Aplicación NestJS
├── frontend/                   # Aplicación Next.js
├── docs/                       # Documentación del proyecto
└── README.md                   # Documentación principal
```

---

## 🔧 Backend (NestJS) - Estructura Detallada

```
backend/
├── src/
│   ├── modules/                              # Módulos de funcionalidad
│   │   ├── auth/                             # Módulo de autenticación
│   │   │   ├── dto/                          # Data Transfer Objects
│   │   │   │   ├── login.dto.ts              # DTO para login
│   │   │   │   ├── register.dto.ts           # DTO para registro
│   │   │   │   └── auth-response.dto.ts      # DTO de respuesta
│   │   │   ├── guards/                       # Guards de autenticación
│   │   │   │   ├── jwt-auth.guard.ts         # Guard JWT
│   │   │   │   └── local-auth.guard.ts       # Guard local
│   │   │   ├── strategies/                   # Estrategias de Passport
│   │   │   │   ├── jwt.strategy.ts           # Estrategia JWT
│   │   │   │   └── local.strategy.ts         # Estrategia local
│   │   │   ├── auth.controller.ts            # Controlador de auth
│   │   │   ├── auth.service.ts               # Servicio de auth
│   │   │   └── auth.module.ts                # Módulo de auth
│   │   │
│   │   ├── users/                            # Módulo de usuarios
│   │   │   ├── dto/
│   │   │   │   ├── create-user.dto.ts
│   │   │   │   ├── update-user.dto.ts
│   │   │   │   └── user-response.dto.ts
│   │   │   ├── users.controller.ts
│   │   │   ├── users.service.ts
│   │   │   └── users.module.ts
│   │   │
│   │   ├── products/                         # Módulo de productos
│   │   │   ├── dto/
│   │   │   │   ├── create-product.dto.ts
│   │   │   │   ├── update-product.dto.ts
│   │   │   │   ├── filter-products.dto.ts    # Filtros y búsqueda
│   │   │   │   └── product-response.dto.ts
│   │   │   ├── products.controller.ts
│   │   │   ├── products.service.ts
│   │   │   └── products.module.ts
│   │   │
│   │   ├── categories/                       # Módulo de categorías
│   │   │   ├── dto/
│   │   │   │   ├── create-category.dto.ts
│   │   │   │   ├── update-category.dto.ts
│   │   │   │   └── category-response.dto.ts
│   │   │   ├── categories.controller.ts
│   │   │   ├── categories.service.ts
│   │   │   └── categories.module.ts
│   │   │
│   │   ├── cart/                             # Módulo de carrito
│   │   │   ├── dto/
│   │   │   │   ├── add-to-cart.dto.ts
│   │   │   │   ├── update-cart-item.dto.ts
│   │   │   │   └── cart-response.dto.ts
│   │   │   ├── cart.controller.ts
│   │   │   ├── cart.service.ts
│   │   │   └── cart.module.ts
│   │   │
│   │   ├── orders/                           # Módulo de órdenes
│   │   │   ├── dto/
│   │   │   │   ├── create-order.dto.ts
│   │   │   │   ├── update-order-status.dto.ts
│   │   │   │   ├── filter-orders.dto.ts
│   │   │   │   └── order-response.dto.ts
│   │   │   ├── orders.controller.ts
│   │   │   ├── orders.service.ts
│   │   │   └── orders.module.ts
│   │   │
│   │   └── admin/                            # Módulo de administración
│   │       ├── admin.controller.ts           # Endpoints admin
│   │       ├── admin.service.ts              # Lógica admin
│   │       └── admin.module.ts
│   │
│   ├── common/                               # Código compartido
│   │   ├── decorators/                       # Decoradores personalizados
│   │   │   ├── roles.decorator.ts            # Decorador de roles
│   │   │   ├── current-user.decorator.ts     # Decorador de usuario actual
│   │   │   └── public.decorator.ts           # Decorador para rutas públicas
│   │   │
│   │   ├── filters/                          # Exception filters
│   │   │   ├── http-exception.filter.ts      # Filter global de excepciones
│   │   │   └── prisma-exception.filter.ts    # Filter para errores de Prisma
│   │   │
│   │   ├── guards/                           # Guards globales
│   │   │   ├── roles.guard.ts                # Guard de roles
│   │   │   └── throttler.guard.ts            # Rate limiting
│   │   │
│   │   ├── interceptors/                     # Interceptors
│   │   │   ├── transform.interceptor.ts      # Transform respuestas
│   │   │   └── logging.interceptor.ts        # Logging de requests
│   │   │
│   │   ├── pipes/                            # Pipes de validación
│   │   │   └── parse-uuid.pipe.ts            # Parse UUID
│   │   │
│   │   └── types/                            # Tipos compartidos
│   │       ├── jwt-payload.type.ts
│   │       ├── pagination.type.ts
│   │       └── request-user.type.ts
│   │
│   ├── config/                               # Configuraciones
│   │   ├── database.config.ts                # Config de base de datos
│   │   ├── jwt.config.ts                     # Config de JWT
│   │   └── app.config.ts                     # Config general
│   │
│   ├── database/                             # Prisma
│   │   └── prisma.service.ts                 # Servicio de Prisma
│   │
│   ├── app.module.ts                         # Módulo principal
│   └── main.ts                               # Punto de entrada
│
├── prisma/
│   ├── schema.prisma                         # Schema de Prisma
│   ├── migrations/                           # Migraciones
│   └── seed.ts                               # Seed de datos
│
├── test/                                     # Tests
│   ├── app.e2e-spec.ts                      # Tests end-to-end
│   └── jest-e2e.json
│
├── .env                                      # Variables de entorno
├── .env.example                              # Ejemplo de variables
├── .eslintrc.js                              # Config de ESLint
├── .prettierrc                               # Config de Prettier
├── nest-cli.json                             # Config de NestJS CLI
├── package.json
├── tsconfig.json                             # Config de TypeScript
└── README.md
```

### 📋 Descripción de Carpetas Backend

| Carpeta | Propósito |
|---------|-----------|
| `modules/` | Cada feature de la aplicación (auth, users, products, etc.) |
| `common/` | Código reutilizable (decorators, guards, filters, etc.) |
| `config/` | Archivos de configuración centralizados |
| `database/` | Servicio de Prisma y utilidades de BD |
| `prisma/` | Schema, migraciones y seeds |

---

## 🎨 Frontend (Next.js) - Estructura Detallada

```
frontend/
├── app/                                      # App Router de Next.js 14
│   ├── (auth)/                               # Grupo de rutas de autenticación
│   │   ├── login/
│   │   │   └── page.tsx                      # Página de login
│   │   ├── register/
│   │   │   └── page.tsx                      # Página de registro
│   │   └── layout.tsx                        # Layout para auth
│   │
│   ├── (shop)/                               # Grupo de rutas de tienda
│   │   ├── products/
│   │   │   ├── page.tsx                      # Lista de productos
│   │   │   ├── [slug]/
│   │   │   │   └── page.tsx                  # Detalle de producto
│   │   │   └── loading.tsx                   # Loading state
│   │   │
│   │   ├── categories/
│   │   │   └── [slug]/
│   │   │       └── page.tsx                  # Productos por categoría
│   │   │
│   │   ├── cart/
│   │   │   └── page.tsx                      # Página del carrito
│   │   │
│   │   ├── checkout/
│   │   │   └── page.tsx                      # Proceso de checkout
│   │   │
│   │   ├── orders/
│   │   │   ├── page.tsx                      # Lista de órdenes
│   │   │   └── [id]/
│   │   │       └── page.tsx                  # Detalle de orden
│   │   │
│   │   └── layout.tsx                        # Layout de tienda (con header/footer)
│   │
│   ├── (admin)/                              # Grupo de rutas de administración
│   │   ├── dashboard/
│   │   │   └── page.tsx                      # Dashboard principal
│   │   │
│   │   ├── products/
│   │   │   ├── page.tsx                      # Lista de productos admin
│   │   │   ├── new/
│   │   │   │   └── page.tsx                  # Crear producto
│   │   │   └── [id]/
│   │   │       └── edit/
│   │   │           └── page.tsx              # Editar producto
│   │   │
│   │   ├── categories/
│   │   │   └── page.tsx                      # Gestión de categorías
│   │   │
│   │   ├── orders/
│   │   │   ├── page.tsx                      # Lista de órdenes admin
│   │   │   └── [id]/
│   │   │       └── page.tsx                  # Detalle de orden admin
│   │   │
│   │   ├── users/
│   │   │   ├── page.tsx                      # Lista de usuarios
│   │   │   └── [id]/
│   │   │       └── page.tsx                  # Detalle de usuario
│   │   │
│   │   └── layout.tsx                        # Layout admin (con sidebar)
│   │
│   ├── api/                                  # API Routes (opcional)
│   │   └── hello/
│   │       └── route.ts
│   │
│   ├── layout.tsx                            # Layout raíz
│   ├── page.tsx                              # Página principal
│   ├── globals.css                           # Estilos globales
│   ├── loading.tsx                           # Loading global
│   └── error.tsx                             # Error boundary global
│
├── components/                               # Componentes React
│   ├── ui/                                   # Componentes UI base (Atomic Design)
│   │   ├── Button.tsx                        # Botón reutilizable
│   │   ├── Input.tsx                         # Input de texto
│   │   ├── Select.tsx                        # Select dropdown
│   │   ├── Card.tsx                          # Card contenedor
│   │   ├── Badge.tsx                         # Badge para estados
│   │   ├── Modal.tsx                         # Modal dialog
│   │   ├── Spinner.tsx                       # Loading spinner
│   │   ├── Alert.tsx                         # Alert messages
│   │   ├── Table.tsx                         # Tabla reutilizable
│   │   ├── Pagination.tsx                    # Componente de paginación
│   │   └── ImageUpload.tsx                   # Upload de imágenes
│   │
│   ├── features/                             # Componentes específicos de features
│   │   ├── products/
│   │   │   ├── ProductCard.tsx               # Card de producto
│   │   │   ├── ProductGrid.tsx               # Grid de productos
│   │   │   ├── ProductDetail.tsx             # Detalle completo
│   │   │   ├── ProductFilters.tsx            # Filtros de productos
│   │   │   ├── ProductForm.tsx               # Formulario de producto (admin)
│   │   │   └── ProductImageGallery.tsx       # Galería de imágenes
│   │   │
│   │   ├── cart/
│   │   │   ├── CartDrawer.tsx                # Carrito lateral (drawer)
│   │   │   ├── CartItem.tsx                  # Item del carrito
│   │   │   ├── CartSummary.tsx               # Resumen de precios
│   │   │   └── CartBadge.tsx                 # Badge con cantidad
│   │   │
│   │   ├── checkout/
│   │   │   ├── CheckoutForm.tsx              # Formulario de checkout
│   │   │   ├── ShippingForm.tsx              # Formulario de envío
│   │   │   └── OrderSummary.tsx              # Resumen de orden
│   │   │
│   │   ├── orders/
│   │   │   ├── OrderCard.tsx                 # Card de orden
│   │   │   ├── OrderDetail.tsx               # Detalle de orden
│   │   │   ├── OrderStatusBadge.tsx          # Badge de estado
│   │   │   └── OrderTimeline.tsx             # Timeline de orden
│   │   │
│   │   └── admin/
│   │       ├── StatCard.tsx                  # Card de estadísticas
│   │       ├── UserTable.tsx                 # Tabla de usuarios
│   │       ├── ProductTable.tsx              # Tabla de productos
│   │       ├── OrdersTable.tsx               # Tabla de órdenes
│   │       ├── CategoryForm.tsx              # Formulario de categorías
│   │       └── DashboardChart.tsx            # Gráficos (opcional)
│   │
│   └── layout/                               # Componentes de layout
│       ├── Header.tsx                        # Header principal
│       ├── Footer.tsx                        # Footer
│       ├── Navbar.tsx                        # Barra de navegación
│       ├── AdminSidebar.tsx                  # Sidebar de admin
│       ├── MobileMenu.tsx                    # Menú móvil
│       └── UserMenu.tsx                      # Menú de usuario
│
├── lib/                                      # Utilidades y configuraciones
│   ├── api/                                  # Cliente API y servicios
│   │   ├── client.ts                         # Config de axios con interceptors
│   │   ├── auth.service.ts                   # Servicios de auth
│   │   ├── products.service.ts               # Servicios de productos
│   │   ├── categories.service.ts             # Servicios de categorías
│   │   ├── cart.service.ts                   # Servicios de carrito
│   │   ├── orders.service.ts                 # Servicios de órdenes
│   │   └── users.service.ts                  # Servicios de usuarios
│   │
│   ├── hooks/                                # Custom hooks
│   │   ├── useAuth.ts                        # Hook de autenticación
│   │   ├── useProducts.ts                    # Hook de productos
│   │   ├── useCart.ts                        # Hook de carrito
│   │   ├── useOrders.ts                      # Hook de órdenes
│   │   ├── useFilters.ts                     # Hook de filtros
│   │   ├── usePagination.ts                  # Hook de paginación
│   │   └── useDebounce.ts                    # Hook de debounce
│   │
│   ├── utils/                                # Funciones utilitarias
│   │   ├── format.ts                         # Formateo (fecha, precio, etc.)
│   │   ├── constants.ts                      # Constantes de la app
│   │   ├── helpers.ts                        # Funciones auxiliares
│   │   └── storage.ts                        # LocalStorage helpers
│   │
│   └── validations/                          # Esquemas de validación con Zod
│       ├── auth.schema.ts                    # Validación de auth
│       ├── product.schema.ts                 # Validación de productos
│       ├── order.schema.ts                   # Validación de órdenes
│       └── user.schema.ts                    # Validación de usuarios
│
├── store/                                    # Estado global (Zustand)
│   ├── auth.store.ts                         # Store de autenticación
│   ├── cart.store.ts                         # Store de carrito
│   └── ui.store.ts                           # Store de UI (modals, etc.)
│
├── types/                                    # Tipos TypeScript compartidos
│   ├── index.ts                              # Exportación central
│   ├── auth.types.ts                         # Tipos de autenticación
│   ├── product.types.ts                      # Tipos de productos
│   ├── order.types.ts                        # Tipos de órdenes
│   ├── user.types.ts                         # Tipos de usuarios
│   └── api.types.ts                          # Tipos de respuestas API
│
├── styles/                                   # Estilos adicionales
│   └── custom.css                            # Estilos personalizados
│
├── public/                                   # Archivos estáticos
│   ├── images/                               # Imágenes estáticas
│   ├── icons/                                # Íconos
│   └── favicon.ico
│
├── .env.local                                # Variables de entorno locales
├── .env.example                              # Ejemplo de variables
├── .eslintrc.json                            # Config de ESLint
├── .prettierrc                               # Config de Prettier
├── next.config.ts                            # Config de Next.js
├── tailwind.config.ts                        # Config de Tailwind
├── postcss.config.js                         # Config de PostCSS
├── tsconfig.json                             # Config de TypeScript
├── package.json
└── README.md
```

### 📋 Descripción de Carpetas Frontend

| Carpeta | Propósito |
|---------|-----------|
| `app/` | Páginas y rutas usando App Router de Next.js 14 |
| `components/ui/` | Componentes base reutilizables (botones, inputs, etc.) |
| `components/features/` | Componentes específicos por feature |
| `components/layout/` | Componentes de estructura (header, sidebar, etc.) |
| `lib/api/` | Servicios para comunicación con backend |
| `lib/hooks/` | Custom hooks reutilizables |
| `lib/utils/` | Funciones auxiliares y utilidades |
| `lib/validations/` | Esquemas de validación con Zod |
| `store/` | Estado global con Zustand |
| `types/` | Tipos TypeScript compartidos |

---

## 🎯 Convenciones de Nombres

### Backend (NestJS)
- **Archivos:** `kebab-case` (ej: `user.service.ts`, `auth.controller.ts`)
- **Clases:** `PascalCase` (ej: `UserService`, `AuthController`)
- **Métodos:** `camelCase` (ej: `findUserById`, `createProduct`)
- **DTOs:** `PascalCase` con sufijo `.dto.ts` (ej: `CreateUserDto`)

### Frontend (Next.js)
- **Componentes:** `PascalCase.tsx` (ej: `Button.tsx`, `ProductCard.tsx`)
- **Páginas:** `page.tsx` dentro de carpetas con nombres en `kebab-case`
- **Hooks:** `camelCase` con prefijo `use` (ej: `useAuth.ts`, `useCart.ts`)
- **Tipos:** `PascalCase` con sufijo `.types.ts` (ej: `Product` en `product.types.ts`)
- **Stores:** `camelCase` con sufijo `.store.ts` (ej: `auth.store.ts`)

---

## 🔄 Flujo de Datos

```
Frontend (Next.js)
    ↓
lib/api/services (axios)
    ↓
Backend (NestJS) - Controller
    ↓
Service (lógica de negocio)
    ↓
Prisma (ORM)
    ↓
PostgreSQL (Base de datos)
```

---

## 📝 Notas Importantes

1. **Grupos de rutas:** Los paréntesis en `(auth)`, `(shop)`, `(admin)` crean grupos de rutas sin afectar la URL
2. **Colocation:** Coloca archivos relacionados cerca (ej: `loading.tsx` junto a `page.tsx`)
3. **Barrel exports:** Usa `index.ts` para exportar múltiples componentes/tipos desde una carpeta
4. **Separación de responsabilidades:** Mantén lógica de negocio en servicios, no en componentes
5. **Reutilización:** Los componentes UI base deben ser genéricos y reutilizables
