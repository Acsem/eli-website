# ⚡ Resumen Rápido: Dominio Hostinger + Vercel/GitHub Pages

## 🎯 Estrategia

- **Hostinger**: Solo el dominio (ej: `tudominio.com`)
- **Hosting**: Vercel o GitHub Pages (gratis)
- **DNS**: Apuntas tu dominio a Vercel/GitHub Pages

## 🚀 Opción 1: Vercel (Recomendado) ⭐

### Paso 1: Desplegar en Vercel (5 minutos)

1. Ve a [vercel.com](https://vercel.com) e inicia sesión con GitHub
2. Haz clic en **"Add New..."** → **"Project"**
3. Importa tu repositorio: `Acsem/eli-website`
4. Haz clic en **"Deploy"**
5. ✅ ¡Listo! Tu sitio está en: `eli-website.vercel.app`

### Paso 2: Conectar Dominio (5 minutos)

1. En Vercel → Tu proyecto → **"Settings"** → **"Domains"**
2. Haz clic en **"Add Domain"**
3. Ingresa: `tudominio.com`
4. Vercel te mostrará valores DNS - **cópyalos**

### Paso 3: Configurar DNS en Hostinger (5 minutos)

1. Ve a Hostinger → **"Dominios"** → Tu dominio → **"Zona DNS"**
2. Agrega los registros que te dio Vercel:
   - **Tipo A**: `@` → IP de Vercel
   - **Tipo CNAME**: `www` → CNAME de Vercel
3. Guarda y espera 5-10 minutos

### Paso 4: ¡Listo! 🎉

Visita: `https://tudominio.com`

---

## 🚀 Opción 2: GitHub Pages

### Paso 1: Activar GitHub Pages

1. Ve a: https://github.com/Acsem/eli-website/settings/pages
2. En **"Source"**, selecciona: `main` branch, `/ (root)`
3. Haz clic en **"Save"**
4. ✅ Tu sitio está en: `acsem.github.io/eli-website`

### Paso 2: Agregar Dominio

1. En la misma página, en **"Custom domain"**, ingresa: `tudominio.com`
2. Haz clic en **"Save"**
3. GitHub te mostrará los valores DNS

### Paso 3: Configurar DNS en Hostinger

Agrega estos registros en Hostinger:

**4 Registros A:**
- `@` → `185.199.108.153`
- `@` → `185.199.109.153`
- `@` → `185.199.110.153`
- `@` → `185.199.111.153`

**1 Registro CNAME:**
- `www` → `acsem.github.io`

### Paso 4: ¡Listo! 🎉

---

## ✅ Ventajas de este Enfoque

- ✅ **Hosting gratis** (Vercel o GitHub Pages)
- ✅ **SSL/HTTPS automático** y gratuito
- ✅ **Rendimiento rápido** (CDN global)
- ✅ **Despliegue automático** desde GitHub
- ✅ **No pagas hosting** en Hostinger, solo el dominio

---

## 🔄 Actualizaciones

Cada vez que hagas cambios:

```bash
git add .
git commit -m "Cambios"
git push
```

**Con Vercel**: Se despliega automáticamente en segundos
**Con GitHub Pages**: Se actualiza en 1-2 minutos

---

## 📚 Guías Completas

- **`GUIA_DOMINIO_HOSTINGER.md`**: Guía completa paso a paso
- **`ESTADO_DESPLIEGUE.md`**: Estado actual del proyecto

---

## 🆘 ¿Necesitas Ayuda?

### El dominio no funciona:
- ⏰ Espera 5-30 minutos (propagación DNS)
- ✅ Verifica que los valores DNS sean correctos
- 🔍 Usa [whatsmydns.net](https://www.whatsmydns.net) para verificar

### HTTPS no funciona:
- ⏰ Espera 10-30 minutos después de configurar DNS
- ✅ Tanto Vercel como GitHub Pages lo activan automáticamente

---

**Recomendación**: Empieza con **Vercel** - es más rápido y fácil. 🚀

