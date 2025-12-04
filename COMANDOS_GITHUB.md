# 📝 Comandos Rápidos para GitHub

## 🚀 Pasos Rápidos para Subir a GitHub

### 1. Crea el Repositorio en GitHub Primero

1. Ve a [github.com/new](https://github.com/new)
2. Nombre: `eli-website` (o el que prefieras)
3. Descripción: "Landing page para la app Eli"
4. Elige **Público** o **Privado**
5. **NO** marques "Initialize with README"
6. Haz clic en **"Create repository"**

### 2. Copia la URL del Repositorio

GitHub te mostrará algo como:
```
https://github.com/TU_USUARIO/eli-website.git
```

### 3. Ejecuta estos Comandos

Abre la terminal en la carpeta del proyecto y ejecuta:

```bash
# Asegúrate de estar en la carpeta correcta
cd /Users/andressamaniego/Desktop/EliWeb

# Verifica el estado de Git
git status

# Agrega todos los archivos (incluyendo los nuevos)
git add .

# Haz commit
git commit -m "Initial commit: Landing page Eli con despliegue automático"

# Reemplaza TU_USUARIO con tu usuario de GitHub y el nombre del repo
git remote add origin https://github.com/TU_USUARIO/eli-website.git

# Si ya tienes un remote, elimínalo primero con:
# git remote remove origin

# Sube el código
git push -u origin main
```

### 4. Si te Pide Autenticación

GitHub ya no acepta contraseñas. Necesitas un **Personal Access Token**:

1. Ve a GitHub → Tu foto de perfil → **Settings**
2. Ve a **Developer settings** (abajo del menú)
3. Ve a **Personal access tokens** → **Tokens (classic)**
4. Haz clic en **"Generate new token (classic)"**
5. Dale un nombre: "Eli Website Deployment"
6. Selecciona el scope: **`repo`** (todo marcado)
7. Haz clic en **"Generate token"**
8. **Copia el token** (solo se muestra una vez)
9. Úsalo como contraseña cuando hagas `git push`

---

## 🔄 Comandos para Actualizaciones Futuras

Cada vez que hagas cambios:

```bash
# Ver qué cambió
git status

# Agrega los cambios
git add .

# O agrega archivos específicos
git add index.html styles.css

# Haz commit
git commit -m "Descripción de los cambios"

# Sube a GitHub
git push
```

Si usas el Método 1 (GitHub Actions), el despliegue será automático. 🎉

---

## 🔧 Configurar GitHub Actions (Solo para Método 1)

Después de hacer el primer push:

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Settings"**
3. Ve a **"Secrets and variables"** → **"Actions"**
4. Haz clic en **"New repository secret"**

Crea estos 3 secrets:

**Secret 1:**
- Name: `FTP_SERVER`
- Value: `ftp.tudominio.com` (tu servidor FTP de Hostinger)

**Secret 2:**
- Name: `FTP_USERNAME`
- Value: Tu usuario FTP de Hostinger

**Secret 3:**
- Name: `FTP_PASSWORD`
- Value: Tu contraseña FTP de Hostinger

Después de configurar los secrets, haz un pequeño cambio y haz push:

```bash
git add .
git commit -m "Configure automatic deployment"
git push
```

Ve a la pestaña **"Actions"** en GitHub para ver el despliegue en tiempo real.

---

## 📦 Comandos Útiles

```bash
# Ver el historial de commits
git log

# Ver cambios no guardados
git diff

# Ver qué archivos están siendo rastreados
git ls-files

# Deshacer cambios en un archivo
git restore nombre-archivo.html

# Ver ramas
git branch

# Cambiar de rama
git checkout nombre-rama

# Ver configuración remota
git remote -v
```

---

## ❓ Troubleshooting

### Error: "remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/TU_USUARIO/eli-website.git
```

### Error: "Authentication failed"
- Usa un Personal Access Token en lugar de tu contraseña
- Ve a GitHub → Settings → Developer settings → Personal access tokens

### Error: "refusing to merge unrelated histories"
```bash
git pull origin main --allow-unrelated-histories
```

### Verificar que todo está bien
```bash
git status
git log --oneline
git remote -v
```

---

¡Listo! Con estos comandos puedes gestionar tu repositorio fácilmente. 🚀

