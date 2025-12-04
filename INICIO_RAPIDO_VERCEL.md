# 🚀 Inicio Rápido: Desplegar en Vercel

Guía rápida para desplegar tu sitio en Vercel y conectar tu dominio de Hostinger.

## ⏱️ Tiempo Total: ~15 minutos

---

## Paso 1: Desplegar en Vercel (5 min)

### 1.1. Inicia Sesión en Vercel

1. Ve a [vercel.com](https://vercel.com)
2. Haz clic en **"Sign Up"**
3. Elige **"Continue with GitHub"**
4. Autoriza la conexión

### 1.2. Importa tu Proyecto

1. En el dashboard, haz clic en **"Add New..."** → **"Project"**
2. Busca tu repositorio: `Acsem/eli-website`
3. Haz clic en **"Import"**

### 1.3. Configura el Proyecto

Deja todo por defecto (ya está configurado):

- **Framework Preset**: Other (está bien para sitio estático)
- **Root Directory**: `./` (raíz)
- **Build Command**: Deja vacío (no necesario)
- **Output Directory**: Deja vacío (no necesario)

### 1.4. Despliega

1. Haz clic en **"Deploy"**
2. Espera 1-2 minutos
3. ✅ ¡Listo! Tu sitio está en: `eli-website.vercel.app`

---

## Paso 2: Conectar tu Dominio (5 min)

### 2.1. Agrega el Dominio

1. En el dashboard de Vercel, haz clic en tu proyecto
2. Ve a **"Settings"** (arriba)
3. Haz clic en **"Domains"** (menú izquierdo)
4. Haz clic en **"Add Domain"**
5. Ingresa: `tudominio.com`
6. Haz clic en **"Add"**

### 2.2. Obtén los Valores DNS

Vercel te mostrará algo como esto:

```
Configure the following DNS records:

Type: A
Name: @
Value: 76.76.21.21

Type: CNAME
Name: www
Value: cname.vercel-dns.com
```

**IMPORTANTE**: Copia estos valores - los necesitarás en el siguiente paso.

---

## Paso 3: Configurar DNS en Hostinger (5 min)

### 3.1. Accede a la Zona DNS

1. Ve a tu panel de Hostinger
2. Busca **"Dominios"** en el menú
3. Haz clic en tu dominio
4. Busca **"Zona DNS"** o **"DNS Zone Editor"**
5. Haz clic para editarla

### 3.2. Agrega los Registros DNS

Elimina los registros A y CNAME existentes si los hay, y agrega los nuevos:

**Registro A (Dominio principal):**
- **Tipo**: `A`
- **Nombre/Host**: `@` (o déjalo vacío)
- **Valor/Points to**: `76.76.21.21` (el valor que te dio Vercel)
- **TTL**: `3600` (o déjalo por defecto)
- Haz clic en **"Agregar"** o **"Add"**

**Registro CNAME (Para www):**
- **Tipo**: `CNAME`
- **Nombre/Host**: `www`
- **Valor/Points to**: `cname.vercel-dns.com` (el valor que te dio Vercel)
- **TTL**: `3600` (o déjalo por defecto)
- Haz clic en **"Agregar"** o **"Add"**

### 3.3. Guarda los Cambios

1. Haz clic en **"Guardar"** o **"Save"**
2. Espera 5-10 minutos para la propagación DNS

---

## Paso 4: Verificar (Esperar y Probar)

### 4.1. Verifica el Estado en Vercel

1. Regresa a Vercel → Tu proyecto → Settings → Domains
2. Verás el estado de tu dominio:
   - ⏳ **Pending**: Aún propagándose (espera más)
   - ✅ **Valid**: ¡Listo! Funcionando

### 4.2. Prueba tu Sitio

Después de 5-10 minutos, prueba:

1. Visita: `https://tudominio.com`
2. También prueba: `https://www.tudominio.com`
3. ¡Ambos deberían funcionar con SSL! 🎉

---

## ✅ ¡Listo!

Tu sitio está ahora:
- ✅ Desplegado en Vercel (hosting gratis)
- ✅ Conectado a tu dominio de Hostinger
- ✅ Con SSL/HTTPS automático
- ✅ Con CDN global (rápido en todo el mundo)

---

## 🔄 Actualizaciones Automáticas

Cada vez que hagas cambios:

```bash
cd /Users/andressamaniego/Desktop/EliWeb
git add .
git commit -m "Descripción de los cambios"
git push
```

**Vercel desplegará automáticamente en segundos** - no necesitas hacer nada más.

---

## 🐛 Solución Rápida de Problemas

### El dominio dice "Pending" por mucho tiempo

- ⏰ Espera hasta 24 horas (normalmente 5-30 minutos)
- ✅ Verifica que los valores DNS sean exactamente los que te dio Vercel
- 🔍 Usa [whatsmydns.net](https://www.whatsmydns.net) para verificar la propagación

### El dominio no funciona

- ✅ Verifica que hayas agregado el dominio en Vercel
- ✅ Verifica que los registros DNS estén correctos en Hostinger
- ✅ Espera más tiempo (propagación DNS puede tardar)

### HTTPS no funciona

- ⏰ Espera 10-30 minutos después de que el dominio esté activo
- ✅ Vercel activa SSL automáticamente
- ✅ Asegúrate de que el dominio esté en estado "Valid" en Vercel

---

## 📚 Más Información

- **Guía completa**: `GUIA_DOMINIO_HOSTINGER.md`
- **Documentación de Vercel**: [vercel.com/docs](https://vercel.com/docs)

---

¡Felicidades! Tu sitio está en línea. 🚀

