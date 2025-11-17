# Eli - Landing Page

Landing page moderna y responsive para la aplicación Eli, un sistema de tareas y recompensas para niños.

## Características

- ✨ Diseño moderno y atractivo
- 📱 Completamente responsive (móvil, tablet, desktop)
- 🎨 Colores de la app original (púrpura, rosa, verde, naranja, azul)
- 🚀 Animaciones suaves y efectos interactivos
- 📊 Secciones: Hero, Características, Cómo Funciona, Planes, CTA, Footer
- 🎯 Navegación suave entre secciones
- 📱 Menú móvil hamburguesa

## Estructura del Proyecto

```
EliWeb/
├── index.html      # Estructura HTML principal
├── styles.css      # Estilos CSS
├── script.js       # JavaScript para interactividad
└── README.md       # Este archivo
```

## Uso

1. Abre `index.html` en tu navegador web
2. O usa un servidor local:
   ```bash
   # Con Python
   python -m http.server 8000
   
   # Con Node.js
   npx http-server
   ```

## Secciones

### Hero
- Título principal con gradiente
- Descripción de la app
- Botones de descarga (App Store, Google Play)
- Estadísticas
- Mockup de teléfono animado

### Características
- 6 características principales de la app
- Iconos con gradientes
- Cards interactivas con hover effects

### Cómo Funciona
- 4 pasos para usar la app
- Números destacados
- Descripción de cada paso

### Planes
- 3 planes: Gratis, 2 Niños, Mensual
- Plan destacado (Popular)
- Lista de características por plan
- Botones de acción

### CTA (Call to Action)
- Sección final para descargar
- Botones de descarga
- Fondo con gradiente

### Footer
- Información de la app
- Enlaces de navegación
- Enlaces de soporte
- Redes sociales

## Tecnologías

- HTML5
- CSS3 (Variables CSS, Grid, Flexbox, Animations)
- JavaScript (Vanilla JS)
- Google Fonts (Inter)

## Colores

- Primary: #8B5CF6 (Púrpura)
- Secondary: #EC4899 (Rosa)
- Accent: #10B981 (Verde)
- Accent Orange: #F59E0B (Naranja)
- Accent Blue: #3B82F6 (Azul)

## Responsive Design

La página está optimizada para:
- 📱 Móvil (320px - 768px)
- 📱 Tablet (768px - 1024px)
- 💻 Desktop (1024px+)

## Personalización

Puedes personalizar los colores editando las variables CSS en `styles.css`:

```css
:root {
    --primary: #8B5CF6;
    --secondary: #EC4899;
    /* ... más colores ... */
}
```

## Notas

- Los enlaces de descarga (App Store, Google Play) están como placeholders
- Las estadísticas son ejemplos y pueden ser actualizadas
- Las imágenes pueden ser agregadas si se necesitan
- El diseño está basado en la app React Native original

## Autor

Creado para la aplicación Eli (TaskRewardApp)

