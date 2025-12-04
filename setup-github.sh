#!/bin/bash

# Script para configurar y subir el repositorio a GitHub

echo "🚀 Configurando GitHub para Eli Website"
echo ""

# Verificar si ya hay un remote
if git remote -v | grep -q "origin"; then
    echo "⚠️  Ya existe un remote 'origin'. Mostrando configuración actual:"
    git remote -v
    echo ""
    read -p "¿Quieres reemplazarlo? (s/n): " respuesta
    if [ "$respuesta" = "s" ] || [ "$respuesta" = "S" ]; then
        git remote remove origin
        echo "✅ Remote 'origin' eliminado"
    else
        echo "❌ Operación cancelada"
        exit 1
    fi
fi

echo ""
echo "📝 Por favor, proporciona la siguiente información:"
echo ""

read -p "Usuario de GitHub: " GITHUB_USER
read -p "Nombre del repositorio (ej: eli-website): " REPO_NAME

REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

echo ""
echo "🔗 URL del repositorio: $REPO_URL"
read -p "¿Es correcta? (s/n): " confirmar

if [ "$confirmar" != "s" ] && [ "$confirmar" != "S" ]; then
    echo "❌ Operación cancelada"
    exit 1
fi

echo ""
echo "📦 Configurando remote..."
git remote add origin "$REPO_URL"

echo "✅ Remote configurado"
echo ""
echo "🚀 Intentando hacer push..."
echo ""

# Intentar hacer push
if git push -u origin main; then
    echo ""
    echo "✅ ¡Éxito! Tu código ha sido subido a GitHub"
    echo "🔗 Repositorio: $REPO_URL"
else
    echo ""
    echo "⚠️  El push falló. Posibles razones:"
    echo "   1. El repositorio no existe en GitHub (debes crearlo primero)"
    echo "   2. Problemas de autenticación (necesitas Personal Access Token)"
    echo ""
    echo "💡 Crea el repositorio en: https://github.com/new"
    echo "💡 Y luego ejecuta: git push -u origin main"
fi

