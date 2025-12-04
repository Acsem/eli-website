# ⚡ Resumen Rápido: GitHub + Hostinger

## 🎯 ¿Qué método usar?

Tienes **3 opciones**, te recomiendo empezar con la **Opción 3** (la más simple):

### Opción 3: Subir Manualmente desde GitHub (MÁS FÁCIL) ⭐

1. **Sube tu código a GitHub** (5 minutos)
2. **Descarga el ZIP desde GitHub**
3. **Sube el ZIP a Hostinger** usando el Administrador de Archivos

### Opción 1: Despliegue Automático (AVANZADO) 🚀

Cada vez que subes código a GitHub, se despliega automáticamente en Hostinger.

### Opción 2: Clonar con SSH (INTERMEDIO)

Solo si tu plan de Hostinger tiene acceso SSH.

---

## 📋 Guía Paso a Paso - Opción 3 (La Más Simple)

### Paso 1: Crear Repositorio en GitHub

1. Ve a [github.com/new](https://github.com/new)
2. Nombre: `eli-website`
3. **NO** marques "Initialize with README"
4. Crea el repositorio

### Paso 2: Subir Código a GitHub

Ejecuta estos comandos en tu terminal:

```bash
cd /Users/andressamaniego/Desktop/EliWeb
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/TU_USUARIO/eli-website.git
git push -u origin main
```

**⚠️ IMPORTANTE**: 
- Reemplaza `TU_USUARIO` con tu usuario de GitHub
- Si te pide contraseña, usa un **Personal Access Token** (ver `COMANDOS_GITHUB.md`)

### Paso 3: Descargar desde GitHub

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Code"** → **"Download ZIP"**
3. Extrae el ZIP en tu computadora

### Paso 4: Subir a Hostinger

1. Ve a Hostinger → Panel → **"Administrador de Archivos"**
2. Navega a `public_html`
3. Elimina archivos por defecto si existen
4. Sube SOLO estos archivos:
   - ✅ `index.html`
   - ✅ `styles.css`
   - ✅ `script.js`
   - ✅ `privacy.html`
   - ✅ `terms.html`
   - ✅ `support.html`

   **NO subas:**
   - ❌ `.git/` (carpeta)
   - ❌ `*.md` (archivos de documentación)
   - ❌ `vercel.json`
   - ❌ `.github/` (carpeta)

5. ¡Listo! Visita tu dominio

---

## 🔄 Para Actualizaciones Futuras (Opción 3)

1. Haz cambios en tu código
2. Sube a GitHub:
   ```bash
   git add .
   git commit -m "Descripción del cambio"
   git push
   ```
3. Descarga el nuevo ZIP desde GitHub
4. Sube los archivos actualizados a Hostinger

---

## 🚀 Si Quieres Despliegue Automático (Opción 1)

Sigue la guía completa en `GUIA_GITHUB_HOSTINGER.md` - Método 1.

**Ventajas:**
- ✅ Cada vez que haces `git push`, se despliega automáticamente
- ✅ No necesitas descargar y subir manualmente
- ✅ Más profesional

**Requiere:**
- Configurar GitHub Actions
- Configurar secrets en GitHub
- Credenciales FTP de Hostinger

---

## 📚 Documentación Completa

- **`GUIA_GITHUB_HOSTINGER.md`**: Guía completa con los 3 métodos
- **`COMANDOS_GITHUB.md`**: Comandos Git útiles
- **`GUIA_DESPLIEGUE_HOSTINGER.md`**: Despliegue sin GitHub (método tradicional)

---

## ✅ Checklist Rápido

- [ ] Creé el repositorio en GitHub
- [ ] Subí mi código a GitHub
- [ ] Descargué el ZIP desde GitHub
- [ ] Subí los archivos a Hostinger (`public_html`)
- [ ] Verifiqué que mi sitio funciona en mi dominio
- [ ] Activé SSL/HTTPS en Hostinger

---

## 🆘 ¿Necesitas Ayuda?

- **Problemas con GitHub**: Ver `COMANDOS_GITHUB.md`
- **Problemas con Hostinger**: Ver `GUIA_DESPLIEGUE_HOSTINGER.md`
- **Quiero automatización**: Ver `GUIA_GITHUB_HOSTINGER.md` - Método 1

---

¡Éxito con tu despliegue! 🎉

