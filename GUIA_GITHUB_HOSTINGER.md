# 🚀 Desplegar desde GitHub a Hostinger

Esta guía te mostrará cómo usar GitHub para desplegar tu sitio web en Hostinger de forma automática o manual.

## 📋 Opciones Disponibles

Tienes **3 métodos** para usar GitHub con Hostinger:

1. **GitHub Actions + FTP** (Despliegue automático) ⭐ Recomendado
2. **Clonar desde GitHub** (Si tienes acceso SSH)
3. **Descargar desde GitHub** (Método manual pero simple)

---

## 🎯 Método 1: Despliegue Automático con GitHub Actions + FTP

Este método despliega automáticamente cada vez que haces un push a GitHub. ¡Es el más profesional!

### Paso 1: Sube tu Código a GitHub

#### 1.1. Crea un Repositorio en GitHub

1. Ve a [github.com](https://github.com) e inicia sesión
2. Haz clic en el botón **"+"** → **"New repository"**
3. Nombre del repositorio: `eli-website` (o el que prefieras)
4. Descripción: "Landing page para la app Eli"
5. Elige **Público** o **Privado**
6. **NO** marques "Initialize with README" (ya tienes archivos)
7. Haz clic en **"Create repository"**

#### 1.2. Sube tu Código Local a GitHub

Abre tu terminal en la carpeta del proyecto y ejecuta:

```bash
cd /Users/andressamaniego/Desktop/EliWeb

# Verifica que estás en la rama main
git branch

# Agrega todos los archivos
git add .

# Haz commit
git commit -m "Initial commit: Landing page Eli"

# Conecta con GitHub (reemplaza TU_USUARIO con tu usuario de GitHub)
git remote add origin https://github.com/TU_USUARIO/eli-website.git

# Sube el código
git push -u origin main
```

**Nota**: Si GitHub te pide autenticación, usa un Personal Access Token en lugar de tu contraseña.

### Paso 2: Obtén las Credenciales FTP de Hostinger

1. Ve a tu panel de Hostinger → **"Hosting"** → **"Administrar"**
2. Ve a **"Archivos"** → **"FTP"**
3. Si no tienes un usuario FTP, créalo:
   - Usuario FTP: (crea uno nuevo)
   - Contraseña: (configura una segura)
   - Directorio: `/public_html`
4. Anota estos datos:
   - **Servidor FTP**: `ftp.tudominio.com` o la IP que te proporcionen
   - **Usuario FTP**: Tu usuario
   - **Contraseña FTP**: Tu contraseña
   - **Puerto**: 21

### Paso 3: Configura GitHub Actions

#### 3.1. Crea el Directorio de Workflows

En tu proyecto local, crea la estructura:

```bash
mkdir -p .github/workflows
```

#### 3.2. Crea el Archivo de Workflow

Crea el archivo `.github/workflows/deploy.yml` con este contenido:

```yaml
name: Deploy to Hostinger

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v3
      
    - name: Deploy to Hostinger via FTP
      uses: SamKirkland/FTP-Deploy-Action@4.3.0
      with:
        server: ${{ secrets.FTP_SERVER }}
        username: ${{ secrets.FTP_USERNAME }}
        password: ${{ secrets.FTP_PASSWORD }}
        local-dir: ./
        server-dir: /public_html/
        exclude: |
          **/.git*
          **/.git*/**
          **/node_modules/**
          **/.DS_Store
          **/*.md
          **/vercel.json
          **/.github/**
```

#### 3.3. Configura los Secrets en GitHub

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Settings"** (Configuración)
3. En el menú izquierdo, ve a **"Secrets and variables"** → **"Actions"**
4. Haz clic en **"New repository secret"**
5. Crea estos 3 secrets:

   **Secret 1:**
   - Name: `FTP_SERVER`
   - Value: `ftp.tudominio.com` (tu servidor FTP)

   **Secret 2:**
   - Name: `FTP_USERNAME`
   - Value: Tu usuario FTP

   **Secret 3:**
   - Name: `FTP_PASSWORD`
   - Value: Tu contraseña FTP

### Paso 4: Activa el Despliegue Automático

1. Haz un pequeño cambio en cualquier archivo (o agrega un comentario)
2. Haz commit y push:

```bash
git add .
git commit -m "Configure GitHub Actions for automatic deployment"
git push
```

3. Ve a GitHub → Tu repositorio → Pestaña **"Actions"**
4. Verás que se está ejecutando el workflow
5. Espera 1-2 minutos para que termine

### Paso 5: Verifica

1. Visita tu dominio: `https://tudominio.com`
2. ¡Tu sitio debería estar desplegado! 🎉

**Ahora, cada vez que hagas un cambio y lo subas a GitHub, se desplegará automáticamente.**

---

## 🎯 Método 2: Clonar desde GitHub (Si tienes acceso SSH)

Si tu plan de Hostinger incluye acceso SSH, puedes clonar directamente.

### Paso 1: Sube tu Código a GitHub

Sigue el **Paso 1 del Método 1** para subir tu código.

### Paso 2: Conéctate a Hostinger vía SSH

1. En el panel de Hostinger, ve a **"Avanzado"** → **"SSH"**
2. Activa el acceso SSH si no está activado
3. Obtén tus credenciales SSH o genera una clave SSH

### Paso 3: Clona el Repositorio

Conéctate vía SSH a tu servidor y ejecuta:

```bash
# Conéctate a tu servidor
ssh usuario@tudominio.com

# Ve a la carpeta pública
cd public_html

# Si hay archivos, haz backup
mv index.html index.html.backup

# Clona el repositorio
git clone https://github.com/TU_USUARIO/eli-website.git .

# O si es privado, usa SSH
git clone git@github.com:TU_USUARIO/eli-website.git .
```

### Paso 4: Configura Pull Automático (Opcional)

Para actualizar automáticamente:

```bash
# Crea un script de actualización
echo '#!/bin/bash
cd /home/usuario/public_html
git pull origin main' > update.sh

chmod +x update.sh
```

---

## 🎯 Método 3: Descargar desde GitHub (Método Manual)

Este método es simple: descargas el código desde GitHub y lo subes a Hostinger.

### Paso 1: Sube tu Código a GitHub

Sigue el **Paso 1 del Método 1** para subir tu código.

### Paso 2: Descarga el Código desde GitHub

1. Ve a tu repositorio en GitHub
2. Haz clic en el botón verde **"Code"**
3. Haz clic en **"Download ZIP"**
4. Extrae el ZIP en tu computadora

### Paso 3: Sube a Hostinger

1. Abre el Administrador de Archivos de Hostinger
2. Ve a `public_html`
3. Sube todos los archivos EXCEPTO:
   - `.git/` (carpeta)
   - `*.md` (archivos markdown - opcional)
   - `vercel.json` (no necesario para Hostinger)
   - `.github/` (carpeta - no necesaria)

4. O crea un ZIP solo con los archivos necesarios:

```bash
# En tu computadora, desde la carpeta EliWeb:
zip -r sitio.zip . -x "*.git*" -x "*.md" -x "vercel.json" -x ".github/*"
```

5. Sube el ZIP a Hostinger y extráelo

### Paso 4: Actualizaciones Futuras

Cada vez que actualices tu código:

1. Sube los cambios a GitHub
2. Descarga el ZIP nuevamente
3. Sube los archivos nuevos a Hostinger

---

## 📁 Archivos a Incluir/Excluir

### ✅ Incluir en el Despliegue:
- `index.html`
- `styles.css`
- `script.js`
- `privacy.html`
- `terms.html`
- `support.html`
- Cualquier imagen o recurso estático

### ❌ Excluir del Despliegue:
- `.git/` (carpeta de Git)
- `.github/` (configuración de GitHub Actions - solo si usas Método 1)
- `*.md` (archivos de documentación)
- `vercel.json` (configuración de Vercel)
- `.DS_Store` (archivos del sistema macOS)

---

## 🔧 Configuración Adicional

### Actualizar el .gitignore

Asegúrate de que tu `.gitignore` no excluya archivos importantes:

```gitignore
# Mantén estos excluidos
node_modules/
.env
.DS_Store

# NO excluyas estos (son parte de tu sitio):
# index.html
# styles.css
# script.js
```

### Configurar el Dominio

1. En Hostinger, ve a **"Dominios"**
2. Verifica que tu dominio esté configurado correctamente
3. Activa el SSL gratuito para HTTPS

---

## 🎉 Ventajas de Usar GitHub

✅ **Control de Versiones**: Puedes ver el historial de cambios
✅ **Backup Automático**: Tu código está seguro en GitHub
✅ **Colaboración**: Otros pueden contribuir fácilmente
✅ **Despliegue Automático**: (Método 1) Los cambios se publican solos
✅ **Rollback**: Puedes volver a versiones anteriores fácilmente

---

## 🐛 Solución de Problemas

### El despliegue automático no funciona
- ✅ Verifica que los secrets en GitHub estén correctos
- ✅ Verifica que el servidor FTP sea accesible
- ✅ Revisa los logs en GitHub → Actions

### Error al hacer push a GitHub
- ✅ Verifica que tengas un Personal Access Token configurado
- ✅ Verifica que el repositorio existe en GitHub
- ✅ Verifica que la URL del remote sea correcta

### Los archivos no se actualizan en Hostinger
- ✅ Verifica que los archivos estén en `public_html`
- ✅ Limpia la caché del navegador
- ✅ Espera unos minutos para propagación

---

## 📞 Ayuda

- **GitHub Docs**: [docs.github.com](https://docs.github.com)
- **Hostinger Support**: Chat en vivo en el panel de Hostinger
- **GitHub Actions**: [github.com/features/actions](https://github.com/features/actions)

---

## ✨ ¿Qué Método Elegir?

- **Método 1 (GitHub Actions)**: Si quieres automatización completa
- **Método 2 (Clonar)**: Si tienes acceso SSH y quieres control total
- **Método 3 (Descargar)**: Si prefieres un proceso simple y manual

**Recomendación**: Empieza con el **Método 1** para automatización, o **Método 3** si prefieres simplicidad.

---

¡Listo! Ahora tienes tu sitio en GitHub y puedes desplegarlo en Hostinger fácilmente. 🚀

