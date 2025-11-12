# ⚙️ Configuración de VS Code para Next.js + NestJS

## 📦 Extensiones Recomendadas

### Esenciales
1. **ESLint** (`dbaeumer.vscode-eslint`)
   - Linting en tiempo real
   
2. **Prettier** (`esbenp.prettier-vscode`)
   - Formateo automático de código

3. **TypeScript + JavaScript** (Built-in)
   - IntelliSense mejorado

4. **Prisma** (`Prisma.prisma`)
   - Syntax highlighting para schema.prisma
   - IntelliSense para Prisma

### Productividad
5. **Auto Rename Tag** (`formulahendry.auto-rename-tag`)
   - Renombra pares de tags HTML/JSX automáticamente

6. **Auto Close Tag** (`formulahendry.auto-close-tag`)
   - Cierra tags automáticamente

7. **Path Intellisense** (`christian-kohler.path-intellisense`)
   - Autocompletado de rutas de archivos

8. **Import Cost** (`wix.vscode-import-cost`)
   - Muestra el tamaño de los imports

### Next.js / React
9. **ES7+ React/Redux/React-Native snippets** (`dsznajder.es7-react-js-snippets`)
   - Snippets útiles para React

10. **Console Ninja** (`wallabyjs.console-ninja`)
    - Logs mejorados en el editor

### TailwindCSS
11. **Tailwind CSS IntelliSense** (`bradlc.vscode-tailwindcss`)
    - Autocompletado de clases de Tailwind
    - Previsualización de colores

12. **Tailwind Documentation** (`alfredbirk.tailwind-documentation`)
    - Documentación rápida de Tailwind

### Git
13. **GitLens** (`eamodio.gitlens`)
    - Git mejorado en VS Code

14. **Git Graph** (`mhutchie.git-graph`)
    - Visualización de ramas y commits

### Utilidades
15. **Better Comments** (`aaron-bond.better-comments`)
    - Comentarios de colores

16. **Error Lens** (`usernamehw.errorlens`)
    - Muestra errores inline

17. **Todo Tree** (`gruntfuggly.todo-tree`)
    - Visualiza TODOs en el código

18. **Thunder Client** (`rangav.vscode-thunder-client`)
    - Cliente REST API (alternativa a Postman)

---

## 📁 Archivos de Configuración

### `.vscode/settings.json` (En la raíz del proyecto)

```json
{
  // =================================
  // EDITOR GENERAL
  // =================================
  "editor.fontSize": 14,
  "editor.fontFamily": "'Fira Code', 'Cascadia Code', 'JetBrains Mono', Consolas, monospace",
  "editor.fontLigatures": true,
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.detectIndentation": false,
  "editor.wordWrap": "on",
  "editor.lineHeight": 1.6,
  "editor.cursorBlinking": "smooth",
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.smoothScrolling": true,
  "editor.minimap.enabled": true,
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": true,

  // =================================
  // AUTO SAVE
  // =================================
  "files.autoSave": "onFocusChange",
  "files.autoSaveDelay": 1000,

  // =================================
  // FORMAT ON SAVE
  // =================================
  "editor.formatOnSave": true,
  "editor.formatOnPaste": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit",
    "source.organizeImports": "explicit"
  },

  // =================================
  // PRETTIER
  // =================================
  "prettier.enable": true,
  "prettier.singleQuote": true,
  "prettier.trailingComma": "all",
  "prettier.semi": true,
  "prettier.tabWidth": 2,
  "prettier.printWidth": 80,
  "prettier.arrowParens": "always",

  // =================================
  // JAVASCRIPT / TYPESCRIPT
  // =================================
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },

  // =================================
  // TYPESCRIPT
  // =================================
  "typescript.updateImportsOnFileMove.enabled": "always",
  "typescript.preferences.importModuleSpecifier": "relative",
  "typescript.suggest.autoImports": true,
  "typescript.inlayHints.parameterNames.enabled": "all",
  "typescript.inlayHints.functionLikeReturnTypes.enabled": true,

  // =================================
  // JAVASCRIPT
  // =================================
  "javascript.updateImportsOnFileMove.enabled": "always",
  "javascript.suggest.autoImports": true,

  // =================================
  // TAILWIND CSS
  // =================================
  "tailwindCSS.emmetCompletions": true,
  "tailwindCSS.includeLanguages": {
    "typescript": "javascript",
    "typescriptreact": "javascript"
  },
  "tailwindCSS.experimental.classRegex": [
    ["cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]"],
    ["cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)"]
  ],

  // =================================
  // EMMET
  // =================================
  "emmet.includeLanguages": {
    "javascript": "javascriptreact",
    "typescript": "typescriptreact"
  },
  "emmet.triggerExpansionOnTab": true,

  // =================================
  // FILES
  // =================================
  "files.exclude": {
    "**/.git": true,
    "**/.DS_Store": true,
    "**/node_modules": true,
    "**/.next": true,
    "**/dist": true,
    "**/.turbo": true
  },
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/node_modules/**": true,
    "**/.next/**": true,
    "**/dist/**": true
  },
  "search.exclude": {
    "**/node_modules": true,
    "**/.next": true,
    "**/dist": true,
    "**/package-lock.json": true,
    "**/yarn.lock": true,
    "**/pnpm-lock.yaml": true
  },

  // =================================
  // ESLINT
  // =================================
  "eslint.enable": true,
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ],
  "eslint.workingDirectories": [
    { "mode": "auto" }
  ],

  // =================================
  // PRISMA
  // =================================
  "[prisma]": {
    "editor.defaultFormatter": "Prisma.prisma"
  },

  // =================================
  // GIT
  // =================================
  "git.autofetch": true,
  "git.confirmSync": false,
  "git.enableSmartCommit": true,

  // =================================
  // TERMINAL
  // =================================
  "terminal.integrated.fontSize": 13,
  "terminal.integrated.fontFamily": "'Fira Code', 'Cascadia Code', monospace",
  "terminal.integrated.defaultProfile.osx": "zsh",
  "terminal.integrated.defaultProfile.linux": "bash",
  "terminal.integrated.defaultProfile.windows": "PowerShell",

  // =================================
  // ERROR LENS
  // =================================
  "errorLens.enabledDiagnosticLevels": ["error", "warning"],
  "errorLens.fontSize": "13",

  // =================================
  // BETTER COMMENTS
  // =================================
  "better-comments.tags": [
    {
      "tag": "!",
      "color": "#FF2D00",
      "strikethrough": false,
      "underline": false,
      "backgroundColor": "transparent",
      "bold": false,
      "italic": false
    },
    {
      "tag": "?",
      "color": "#3498DB",
      "strikethrough": false,
      "underline": false,
      "backgroundColor": "transparent",
      "bold": false,
      "italic": false
    },
    {
      "tag": "//",
      "color": "#474747",
      "strikethrough": true,
      "underline": false,
      "backgroundColor": "transparent",
      "bold": false,
      "italic": false
    },
    {
      "tag": "todo",
      "color": "#FF8C00",
      "strikethrough": false,
      "underline": false,
      "backgroundColor": "transparent",
      "bold": false,
      "italic": false
    },
    {
      "tag": "*",
      "color": "#98C379",
      "strikethrough": false,
      "underline": false,
      "backgroundColor": "transparent",
      "bold": false,
      "italic": false
    }
  ],

  // =================================
  // TODO TREE
  // =================================
  "todo-tree.general.tags": [
    "TODO",
    "FIXME",
    "NOTE",
    "BUG",
    "HACK",
    "XXX"
  ],
  "todo-tree.highlights.defaultHighlight": {
    "gutterIcon": true
  },

  // =================================
  // PATH INTELLISENSE
  // =================================
  "path-intellisense.mappings": {
    "@": "${workspaceFolder}/frontend",
    "@/components": "${workspaceFolder}/frontend/components",
    "@/lib": "${workspaceFolder}/frontend/lib"
  },

  // =================================
  // WORKSPACE
  // =================================
  "workbench.colorTheme": "One Dark Pro",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.startupEditor": "none",
  "workbench.editor.enablePreview": false,

  // =================================
  // EXPLORER
  // =================================
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "explorer.compactFolders": false
}
```

---

### `.vscode/extensions.json` (Extensiones recomendadas)

```json
{
  "recommendations": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode",
    "Prisma.prisma",
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    "christian-kohler.path-intellisense",
    "wix.vscode-import-cost",
    "dsznajder.es7-react-js-snippets",
    "bradlc.vscode-tailwindcss",
    "eamodio.gitlens",
    "mhutchie.git-graph",
    "aaron-bond.better-comments",
    "usernamehw.errorlens",
    "gruntfuggly.todo-tree",
    "rangav.vscode-thunder-client"
  ]
}
```

---

### `.vscode/launch.json` (Debugging)

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Next.js: Debug Server-Side",
      "type": "node-terminal",
      "request": "launch",
      "command": "npm run dev",
      "cwd": "${workspaceFolder}/frontend",
      "serverReadyAction": {
        "pattern": "- Local:.+(https?://.+)",
        "uriFormat": "%s",
        "action": "debugWithChrome"
      }
    },
    {
      "name": "Next.js: Debug Client-Side",
      "type": "chrome",
      "request": "launch",
      "url": "http://localhost:3000",
      "webRoot": "${workspaceFolder}/frontend"
    },
    {
      "name": "Next.js: Debug Full Stack",
      "type": "node-terminal",
      "request": "launch",
      "command": "npm run dev",
      "cwd": "${workspaceFolder}/frontend",
      "console": "integratedTerminal",
      "serverReadyAction": {
        "action": "debugWithChrome",
        "pattern": "- Local:.+(https?://[^\\s]+)",
        "uriFormat": "%s",
        "killOnServerStop": true
      }
    },
    {
      "name": "NestJS: Debug",
      "type": "node",
      "request": "launch",
      "runtimeExecutable": "npm",
      "runtimeArgs": ["run", "start:debug"],
      "cwd": "${workspaceFolder}/backend",
      "console": "integratedTerminal",
      "restart": true,
      "protocol": "inspector",
      "sourceMaps": true,
      "outFiles": ["${workspaceFolder}/backend/dist/**/*.js"]
    },
    {
      "name": "NestJS: Attach",
      "type": "node",
      "request": "attach",
      "port": 9229,
      "restart": true,
      "stopOnEntry": false,
      "protocol": "inspector"
    }
  ],
  "compounds": [
    {
      "name": "Full Stack Debug",
      "configurations": ["Next.js: Debug Full Stack", "NestJS: Debug"],
      "stopAll": true
    }
  ]
}
```

---

### `.vscode/tasks.json` (Tareas)

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Start Backend",
      "type": "shell",
      "command": "npm run start:dev",
      "options": {
        "cwd": "${workspaceFolder}/backend"
      },
      "isBackground": true,
      "problemMatcher": {
        "pattern": {
          "regexp": "^(.*)$",
          "file": 1,
          "location": 2,
          "message": 3
        },
        "background": {
          "activeOnStart": true,
          "beginsPattern": "^.*Nest application successfully started.*$"
        }
      }
    },
    {
      "label": "Start Frontend",
      "type": "shell",
      "command": "npm run dev",
      "options": {
        "cwd": "${workspaceFolder}/frontend"
      },
      "isBackground": true,
      "problemMatcher": {
        "pattern": {
          "regexp": "^(.*)$",
          "file": 1,
          "location": 2,
          "message": 3
        },
        "background": {
          "activeOnStart": true,
          "beginsPattern": "^.*ready - started server on.*$"
        }
      }
    },
    {
      "label": "Start Both",
      "dependsOn": ["Start Backend", "Start Frontend"],
      "problemMatcher": []
    },
    {
      "label": "Prisma: Generate",
      "type": "shell",
      "command": "npm run generate",
      "options": {
        "cwd": "${workspaceFolder}/backend"
      }
    },
    {
      "label": "Prisma: Migrate",
      "type": "shell",
      "command": "npm run migrate",
      "options": {
        "cwd": "${workspaceFolder}/backend"
      }
    },
    {
      "label": "Prisma: Studio",
      "type": "shell",
      "command": "npm run studio",
      "options": {
        "cwd": "${workspaceFolder}/backend"
      }
    }
  ]
}
```

---

### `.vscode/snippets/typescript.json` (Snippets personalizados)

```json
{
  "NestJS Controller": {
    "prefix": "nest-controller",
    "body": [
      "import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';",
      "import { ${1:Name}Service } from './${1/(.*)/${1:/downcase}/}.service';",
      "import { Create${1}Dto } from './dto/create-${1/(.*)/${1:/downcase}/}.dto';",
      "import { Update${1}Dto } from './dto/update-${1/(.*)/${1:/downcase}/}.dto';",
      "",
      "@Controller('${1/(.*)/${1:/downcase}/}s')",
      "export class ${1}Controller {",
      "  constructor(private readonly ${1/(.*)/${1:/downcase}/}Service: ${1}Service) {}",
      "",
      "  @Post()",
      "  create(@Body() create${1}Dto: Create${1}Dto) {",
      "    return this.${1/(.*)/${1:/downcase}/}Service.create(create${1}Dto);",
      "  }",
      "",
      "  @Get()",
      "  findAll() {",
      "    return this.${1/(.*)/${1:/downcase}/}Service.findAll();",
      "  }",
      "",
      "  @Get(':id')",
      "  findOne(@Param('id') id: string) {",
      "    return this.${1/(.*)/${1:/downcase}/}Service.findOne(id);",
      "  }",
      "",
      "  @Patch(':id')",
      "  update(@Param('id') id: string, @Body() update${1}Dto: Update${1}Dto) {",
      "    return this.${1/(.*)/${1:/downcase}/}Service.update(id, update${1}Dto);",
      "  }",
      "",
      "  @Delete(':id')",
      "  remove(@Param('id') id: string) {",
      "    return this.${1/(.*)/${1:/downcase}/}Service.remove(id);",
      "  }",
      "}"
    ],
    "description": "Create a NestJS Controller"
  },
  "NestJS Service": {
    "prefix": "nest-service",
    "body": [
      "import { Injectable } from '@nestjs/common';",
      "import { Create${1:Name}Dto } from './dto/create-${1/(.*)/${1:/downcase}/}.dto';",
      "import { Update${1}Dto } from './dto/update-${1/(.*)/${1:/downcase}/}.dto';",
      "",
      "@Injectable()",
      "export class ${1}Service {",
      "  create(create${1}Dto: Create${1}Dto) {",
      "    return 'This action adds a new ${1/(.*)/${1:/downcase}/}';",
      "  }",
      "",
      "  findAll() {",
      "    return `This action returns all ${1/(.*)/${1:/downcase}/}s`;",
      "  }",
      "",
      "  findOne(id: string) {",
      "    return `This action returns a #\\${id} ${1/(.*)/${1:/downcase}/}`;",
      "  }",
      "",
      "  update(id: string, update${1}Dto: Update${1}Dto) {",
      "    return `This action updates a #\\${id} ${1/(.*)/${1:/downcase}/}`;",
      "  }",
      "",
      "  remove(id: string) {",
      "    return `This action removes a #\\${id} ${1/(.*)/${1:/downcase}/}`;",
      "  }",
      "}"
    ],
    "description": "Create a NestJS Service"
  },
  "React Functional Component": {
    "prefix": "rfc",
    "body": [
      "interface ${1:Component}Props {",
      "  ${2:prop}: ${3:string};",
      "}",
      "",
      "export default function ${1}({ ${2} }: ${1}Props) {",
      "  return (",
      "    <div>",
      "      ${4}",
      "    </div>",
      "  );",
      "}"
    ],
    "description": "React Functional Component with TypeScript"
  },
  "Next.js Page": {
    "prefix": "next-page",
    "body": [
      "import { Metadata } from 'next';",
      "",
      "export const metadata: Metadata = {",
      "  title: '${1:Page Title}',",
      "  description: '${2:Page Description}',",
      "};",
      "",
      "export default function ${3:Page}() {",
      "  return (",
      "    <main className=\"container-custom py-12\">",
      "      <h1 className=\"text-3xl font-bold\">${1}</h1>",
      "      ${4}",
      "    </main>",
      "  );",
      "}"
    ],
    "description": "Next.js Page Component"
  },
  "Zustand Store": {
    "prefix": "zustand",
    "body": [
      "import { create } from 'zustand';",
      "import { persist } from 'zustand/middleware';",
      "",
      "interface ${1:Store}State {",
      "  ${2:value}: ${3:string};",
      "  set${2/(.*)/${1:/capitalize}/}: (${2}: ${3}) => void;",
      "}",
      "",
      "export const use${1}Store = create<${1}State>()(",
      "  persist(",
      "    (set) => ({",
      "      ${2}: '${4}',",
      "      set${2/(.*)/${1:/capitalize}/}: (${2}) => set({ ${2} }),",
      "    }),",
      "    {",
      "      name: '${1/(.*)/${1:/downcase}/}-storage',",
      "    }",
      "  )",
      ");"
    ],
    "description": "Create a Zustand Store"
  }
}
```

---

## 🎨 Temas Recomendados

1. **One Dark Pro** - Tema oscuro popular
2. **GitHub Theme** - Tema claro/oscuro de GitHub
3. **Material Theme** - Material Design para VS Code
4. **Dracula Official** - Tema Dracula

## 🎯 Atajos de Teclado Útiles

### Generales
- `Cmd/Ctrl + P` - Búsqueda rápida de archivos
- `Cmd/Ctrl + Shift + P` - Paleta de comandos
- `Cmd/Ctrl + B` - Toggle sidebar
- `Cmd/Ctrl + J` - Toggle terminal

### Edición
- `Alt + Up/Down` - Mover línea
- `Shift + Alt + Up/Down` - Duplicar línea
- `Cmd/Ctrl + D` - Seleccionar siguiente coincidencia
- `Cmd/Ctrl + /` - Toggle comentario

### Navegación
- `Cmd/Ctrl + Click` - Ir a definición
- `F12` - Ir a definición
- `Alt + F12` - Peek definition
- `Shift + F12` - Ver referencias

---

## 📝 Configuración del Proyecto

### `.prettierrc` (Raíz del proyecto)

```json
{
  "semi": true,
  "trailingComma": "all",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2,
  "arrowParens": "always",
  "endOfLine": "lf"
}
```

### `.prettierignore`

```
node_modules
.next
dist
build
coverage
.env*
*.lock
package-lock.json
yarn.lock
pnpm-lock.yaml
```

### `.eslintignore`

```
node_modules
.next
dist
build
coverage
*.config.js
*.config.ts
```

---

## 🚀 Instalación Rápida

```bash
# En la raíz del proyecto
mkdir -p .vscode

# Copiar los archivos de configuración
# settings.json, extensions.json, launch.json, tasks.json

# Instalar extensiones recomendadas
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension Prisma.prisma
code --install-extension bradlc.vscode-tailwindcss
# ... etc
```

---

## 💡 Tips Adicionales

1. **Workspace:** Guarda como workspace multi-root para manejar backend y frontend juntos
2. **Settings Sync:** Activa Settings Sync en VS Code para sincronizar tu configuración
3. **Font:** Instala "Fira Code" o "JetBrains Mono" para ligatures
4. **Reload:** Después de cambiar settings, recarga la ventana: `Cmd/Ctrl + Shift + P` → "Reload Window"
5. **Format Document:** `Shift + Alt + F` para formatear todo el documento

