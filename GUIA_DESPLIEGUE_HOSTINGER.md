# 🚀 Guía de Despliegue en Hostinger

Esta guía te ayudará a publicar tu sitio web estático en tu dominio de Hostinger.

## 📋 Requisitos Previos

1. ✅ Tener una cuenta activa en Hostinger
2. ✅ Tener un dominio configurado en Hostinger
3. ✅ Tener un plan de hosting activo

## 🎯 Método 1: Usando el Administrador de Archivos de Hostinger (Recomendado)

Este es el método más fácil para principiantes.

### Paso 1: Accede al Panel de Control de Hostinger

1. Ve a [hostinger.com](https://www.hostinger.com) e inicia sesión
2. Ve a **"Hosting"** en el panel principal
3. Haz clic en **"Administrar"** junto a tu dominio

### Paso 2: Abre el Administrador de Archivos

1. En el panel de control, busca la sección **"Archivos"**
2. Haz clic en **"Administrador de Archivos"**

### Paso 3: Navega a la Carpeta Pública

1. Ve a la carpeta **`public_html`** (esta es la carpeta raíz de tu sitio web)
   - Si es la primera vez, puede estar vacía o tener archivos por defecto
   - Puedes eliminar el archivo `index.html` por defecto si existe

### Paso 4: Sube tus Archivos

Tienes dos opciones:

**Opción A: Subir archivos individuales**
1. Haz clic en el botón **"Subir"** o **"Upload"**
2. Selecciona todos los archivos de tu proyecto:
   - `index.html`
   - `styles.css`
   - `script.js`
   - `privacy.html`
   - `terms.html`
   - `support.html`
3. Espera a que se complete la carga

**Opción B: Subir como ZIP (Más rápido)**
1. En tu computadora, crea un archivo ZIP con todos los archivos:
   ```bash
   # En macOS/Linux, desde la carpeta EliWeb:
   zip -r sitio.zip . -x "*.md" -x ".git/*" -x "vercel.json"
   ```
2. Sube el archivo ZIP a `public_html`
3. Haz clic derecho en el ZIP y selecciona **"Extraer"** o **"Extract"**

### Paso 5: Verifica tu Sitio

1. Abre tu navegador
2. Visita tu dominio: `https://tudominio.com`
3. ¡Tu sitio debería estar funcionando! 🎉

---

## 🎯 Método 2: Usando FTP (Para Usuarios Avanzados)

Si prefieres usar un cliente FTP como FileZilla.

### Paso 1: Obtén las Credenciales FTP

1. En el panel de Hostinger, ve a **"Archivos"** → **"FTP"**
2. Si no tienes un usuario FTP, créalo:
   - Usuario: (lo crearás tú)
   - Contraseña: (la configurarás)
   - Directorio: `/public_html`
3. Anota estos datos:
   - **Servidor FTP**: `ftp.tudominio.com` o la IP que te proporcionen
   - **Usuario**: Tu usuario FTP
   - **Contraseña**: Tu contraseña FTP
   - **Puerto**: 21 (o el que te indiquen)

### Paso 2: Instala un Cliente FTP

- **FileZilla** (Recomendado): [filezilla-project.org](https://filezilla-project.org)
- **Cyberduck**: [cyberduck.io](https://cyberduck.io)
- **WinSCP** (Solo Windows): [winscp.net](https://winscp.net)

### Paso 3: Conéctate al Servidor

1. Abre FileZilla (o tu cliente FTP)
2. Ingresa los datos:
   - **Host**: `ftp.tudominio.com`
   - **Usuario**: Tu usuario FTP
   - **Contraseña**: Tu contraseña FTP
   - **Puerto**: 21
3. Haz clic en **"Conectar"**

### Paso 4: Sube los Archivos

1. En el panel izquierdo (tu computadora), navega a la carpeta `EliWeb`
2. En el panel derecho (servidor), navega a `public_html`
3. Selecciona todos los archivos en el panel izquierdo
4. Arrástralos al panel derecho o haz clic derecho → **"Subir"**

### Paso 5: Verifica tu Sitio

Visita tu dominio en el navegador para confirmar que todo funciona.

---

## 🎯 Método 3: Usando cPanel (Si está Disponible)

Algunos planes de Hostinger incluyen cPanel.

### Paso 1: Accede a cPanel

1. En el panel de Hostinger, busca **"cPanel"** o **"Panel de Control"**
2. Inicia sesión con tus credenciales

### Paso 2: Abre el Administrador de Archivos

1. En cPanel, busca **"Administrador de Archivos"** o **"File Manager"**
2. Haz clic en **"public_html"**

### Paso 3: Sube tus Archivos

1. Haz clic en **"Subir"** o **"Upload"**
2. Selecciona todos los archivos de tu proyecto
3. Espera a que se complete la carga

---

## 📁 Estructura Final en el Servidor

Tu carpeta `public_html` debería verse así:

```
public_html/
├── index.html
├── styles.css
├── script.js
├── privacy.html
├── terms.html
└── support.html
```

## ⚙️ Configuraciones Adicionales

### Configurar HTTPS (SSL)

1. En el panel de Hostinger, ve a **"SSL"** o **"Seguridad"**
2. Si tienes **SSL Gratuito**, actívalo
3. Espera unos minutos a que se active
4. Tu sitio estará disponible en `https://tudominio.com`

### Configurar el Dominio Principal

1. En el panel de Hostinger, ve a **"Dominios"**
2. Verifica que tu dominio esté apuntando correctamente
3. Los DNS deben estar configurados (Hostinger lo hace automáticamente)

## 🔍 Verificación Final

Después de subir tus archivos:

1. ✅ Visita `http://tudominio.com` o `https://tudominio.com`
2. ✅ Verifica que `index.html` se muestre correctamente
3. ✅ Prueba las páginas: `/privacy.html`, `/terms.html`, `/support.html`
4. ✅ Verifica que los estilos CSS se carguen
5. ✅ Verifica que JavaScript funcione (menú móvil, animaciones)

## 🐛 Solución de Problemas

### El sitio no se muestra
- ✅ Verifica que los archivos estén en `public_html` (no en una subcarpeta)
- ✅ Verifica que `index.html` esté en la raíz de `public_html`
- ✅ Espera 5-10 minutos para que los cambios se propaguen (propagación DNS)

### Los estilos no se cargan
- ✅ Verifica que `styles.css` esté en la misma carpeta que `index.html`
- ✅ Verifica las rutas en el HTML: `<link rel="stylesheet" href="/styles.css">`
- ✅ Limpia la caché del navegador (Ctrl+F5 o Cmd+Shift+R)

### Error 404 en páginas secundarias
- ✅ Verifica que `privacy.html`, `terms.html`, `support.html` estén subidas
- ✅ Verifica que los nombres de archivo sean exactos (sin espacios, mayúsculas correctas)

### El sitio muestra una página por defecto
- ✅ Elimina cualquier `index.html` o `index.php` por defecto de Hostinger
- ✅ Asegúrate de que tu `index.html` esté en `public_html`

## 📞 Soporte

Si tienes problemas:
- Contacta al soporte de Hostinger vía chat en vivo
- Revisa la documentación de Hostinger
- Verifica que tu plan de hosting esté activo

---

## 🎉 ¡Listo!

Una vez completados estos pasos, tu sitio web estará disponible en tu dominio. 

**Tiempo estimado**: 10-30 minutos dependiendo del método que elijas.

