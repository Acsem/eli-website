# 🌐 Usar tu Dominio de Hostinger con Vercel o GitHub Pages

Esta guía te explica cómo usar **solo el dominio** de Hostinger mientras el hosting está en **Vercel** o **GitHub Pages**.

## 🎯 ¿Cómo Funciona?

- **Hostinger**: Solo proporciona el dominio (ej: `tudominio.com`)
- **Vercel/GitHub Pages**: Proporciona el hosting (gratis y rápido)
- **DNS**: Apuntas tu dominio a Vercel/GitHub Pages

## ✅ Ventajas

- ✅ **Hosting gratis** en Vercel o GitHub Pages
- ✅ **Dominio personalizado** de Hostinger
- ✅ **SSL/HTTPS automático** y gratuito
- ✅ **Despliegue automático** desde GitHub
- ✅ **Rendimiento rápido** (CDN global)
- ✅ **No necesitas** pagar por hosting en Hostinger

---

## 🚀 Opción 1: Desplegar en Vercel (Recomendado) ⭐

Vercel es perfecto para sitios estáticos. Es rápido, gratis y fácil de usar.

### Paso 1: Desplegar en Vercel

#### 1.1. Conecta GitHub con Vercel

1. Ve a [vercel.com](https://vercel.com)
2. Haz clic en **"Sign Up"** (puedes usar tu cuenta de GitHub)
3. Una vez dentro, haz clic en **"Add New..."** → **"Project"**
4. Conecta tu repositorio de GitHub:
   - Busca `Acsem/eli-website`
   - Haz clic en **"Import"**

#### 1.2. Configura el Proyecto

1. **Project Name**: `eli-website` (o el que prefieras)
2. **Framework Preset**: Deja "Other" (sitio estático)
3. **Root Directory**: Deja `./` (raíz)
4. Haz clic en **"Deploy"**

#### 1.3. Espera el Despliegue

- Vercel desplegará tu sitio automáticamente
- Te dará una URL temporal: `eli-website.vercel.app`
- ⏱️ Tarda 1-2 minutos

### Paso 2: Conectar tu Dominio de Hostinger

#### 2.1. Agrega el Dominio en Vercel

1. En el dashboard de Vercel, ve a tu proyecto
2. Haz clic en **"Settings"** → **"Domains"**
3. Haz clic en **"Add Domain"**
4. Ingresa tu dominio: `tudominio.com` (y `www.tudominio.com` si quieres)
5. Haz clic en **"Add"**

#### 2.2. Obtén los Valores DNS de Vercel

Vercel te mostrará valores DNS como estos:

```
Tipo: A
Nombre: @
Valor: 76.76.21.21

Tipo: CNAME
Nombre: www
Valor: cname.vercel-dns.com
```

O puede ser:
```
Tipo: A
Nombre: @
Valor: 76.76.21.21

Tipo: A
Nombre: @
Valor: 76.76.21.22
```

**Anota estos valores** - los necesitarás en Hostinger.

### Paso 3: Configurar DNS en Hostinger

#### 3.1. Accede a la Configuración DNS

1. Ve a tu panel de Hostinger
2. Busca **"Dominios"** o **"DNS"**
3. Selecciona tu dominio
4. Ve a **"Zona DNS"** o **"DNS Zone Editor"**

#### 3.2. Configura los Registros DNS

Elimina o edita los registros existentes y agrega estos:

**Registro A (Para el dominio principal):**
- **Tipo**: A
- **Nombre/Host**: `@` o deja vacío
- **Valor/Points to**: `76.76.21.21` (o el valor que te dio Vercel)
- **TTL**: 3600 (o déjalo por defecto)

**Registro A adicional (si Vercel te dio 2):**
- **Tipo**: A
- **Nombre/Host**: `@` o deja vacío
- **Valor/Points to**: `76.76.21.22` (el segundo valor de Vercel)
- **TTL**: 3600

**Registro CNAME (Para www):**
- **Tipo**: CNAME
- **Nombre/Host**: `www`
- **Valor/Points to**: `cname.vercel-dns.com` (o el que te dio Vercel)
- **TTL**: 3600

#### 3.3. Guarda los Cambios

1. Haz clic en **"Guardar"** o **"Save"**
2. Espera 5-10 minutos para que se propaguen los cambios DNS

### Paso 4: Verificar en Vercel

1. Regresa a Vercel → Tu proyecto → **"Settings"** → **"Domains"**
2. Verás el estado de tu dominio:
   - ⏳ **Pending**: Aún propagándose (espera más)
   - ✅ **Valid**: ¡Listo! Tu dominio está funcionando

### Paso 5: Verificar tu Sitio

1. Visita: `https://tudominio.com`
2. También prueba: `https://www.tudominio.com`
3. ¡Debería funcionar con SSL automático! 🎉

---

## 🚀 Opción 2: Desplegar en GitHub Pages

GitHub Pages es perfecto si quieres mantener todo en GitHub.

### Paso 1: Activar GitHub Pages

#### 1.1. Configura GitHub Pages

1. Ve a tu repositorio: https://github.com/Acsem/eli-website
2. Haz clic en **"Settings"**
3. En el menú izquierdo, busca **"Pages"**
4. En **"Source"**, selecciona:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Haz clic en **"Save"**

#### 1.2. Espera el Despliegue

- GitHub Pages te dará una URL: `https://acsem.github.io/eli-website`
- ⏱️ Tarda 1-2 minutos

### Paso 2: Configurar Dominio Personalizado

#### 2.1. Agrega el Dominio en GitHub

1. En la página de Settings → Pages
2. En la sección **"Custom domain"**, ingresa: `tudominio.com`
3. Haz clic en **"Save"**
4. GitHub te mostrará los valores DNS que necesitas

**Valores DNS que necesitarás:**
```
Tipo: A
Nombre: @
Valor: 185.199.108.153

Tipo: A
Nombre: @
Valor: 185.199.109.153

Tipo: A
Nombre: @
Valor: 185.199.110.153

Tipo: A
Nombre: @
Valor: 185.199.111.153

Tipo: CNAME
Nombre: www
Valor: acsem.github.io
```

### Paso 3: Configurar DNS en Hostinger

1. Ve a Hostinger → **"Dominios"** → Tu dominio → **"Zona DNS"**
2. Agrega estos registros:

**4 Registros A:**
- **A** | `@` | `185.199.108.153` | TTL 3600
- **A** | `@` | `185.199.109.153` | TTL 3600
- **A** | `@` | `185.199.110.153` | TTL 3600
- **A** | `@` | `185.199.111.153` | TTL 3600

**1 Registro CNAME:**
- **CNAME** | `www` | `acsem.github.io` | TTL 3600

3. Guarda los cambios
4. Espera 5-30 minutos para la propagación

### Paso 4: Verificar

1. Visita: `https://tudominio.com`
2. ¡Debería funcionar! 🎉

---

## 🔄 Actualizaciones Automáticas

### Con Vercel:
Cada vez que hagas `git push` a GitHub, Vercel desplegará automáticamente:
```bash
git add .
git commit -m "Cambios"
git push
```

### Con GitHub Pages:
Los cambios se reflejan automáticamente en cada push (puede tardar 1-2 minutos).

---

## 🔧 Configuración Adicional

### Forzar HTTPS

Tanto Vercel como GitHub Pages activan HTTPS automáticamente. No necesitas hacer nada.

### Redirección www a no-www (o viceversa)

**En Vercel:**
- Ve a Settings → Domains
- Puedes configurar redirecciones automáticas

**En GitHub Pages:**
- GitHub maneja automáticamente www y no-www

---

## 🐛 Solución de Problemas

### El dominio no funciona después de configurar DNS

- ⏰ **Espera más tiempo**: La propagación DNS puede tardar hasta 24 horas (normalmente 5-30 minutos)
- ✅ **Verifica los valores DNS**: Asegúrate de que sean exactamente los que te dio Vercel/GitHub
- 🔍 **Usa herramientas de verificación**:
  - [whatsmydns.net](https://www.whatsmydns.net) - Verifica propagación DNS
  - [dnschecker.org](https://dnschecker.org) - Verifica desde múltiples ubicaciones

### Error "Domain not configured"

- Verifica que los registros DNS estén correctos
- Espera más tiempo para la propagación
- Verifica en Vercel/GitHub que el dominio esté agregado correctamente

### HTTPS no funciona

- Espera 5-10 minutos después de que el dominio esté activo
- Tanto Vercel como GitHub Pages activan SSL automáticamente
- Si después de 30 minutos no funciona, verifica la configuración DNS

### El sitio muestra un error 404

- Verifica que tu sitio esté desplegado correctamente en Vercel/GitHub Pages
- Verifica que el dominio esté apuntando correctamente
- Limpia la caché del navegador

---

## 📚 Recursos

- **Vercel Docs**: [vercel.com/docs](https://vercel.com/docs)
- **GitHub Pages Docs**: [docs.github.com/pages](https://docs.github.com/pages)
- **Hostinger DNS Guide**: En el panel de Hostinger

---

## ✨ Comparación: Vercel vs GitHub Pages

| Característica | Vercel | GitHub Pages |
|----------------|--------|--------------|
| Velocidad | ⚡ Muy rápido (CDN global) | ⚡ Rápido |
| SSL/HTTPS | ✅ Automático | ✅ Automático |
| Despliegue automático | ✅ Sí | ✅ Sí |
| Configuración | 🟢 Muy fácil | 🟢 Fácil |
| Ancho de banda | ✅ Ilimitado | ✅ Ilimitado |
| Mejor para | Sitios estáticos y apps | Sitios estáticos simples |

**Recomendación**: Empieza con **Vercel** - es más fácil y rápido. Si prefieres mantener todo en GitHub, usa **GitHub Pages**.

---

¡Listo! Ahora tienes tu dominio de Hostinger funcionando con hosting gratis y rápido. 🚀

