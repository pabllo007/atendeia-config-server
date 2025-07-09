#!/bin/bash

IMAGE_NAME="atendeia-config-server"
VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

echo "➡️ Versão detectada no pom.xml: $VERSION"

# Build da imagem com tags
docker build -t $IMAGE_NAME:$VERSION -t $IMAGE_NAME:latest .

# Remove container antigo (se existir)
docker rm -f config-server 2>/dev/null

# Sobe o container
docker run -d -p 8888:8888 \
  --name config-server \
  $IMAGE_NAME:$VERSION

# Detecta IP local
HOST_IP=$(hostname -I | awk '{print $1}')
if [ -z "$HOST_IP" ]; then
  HOST_IP="localhost"
fi

echo "✅ Imagem do Config Server criada e container iniciado!"
echo "🌐 Config Server disponível em: http://$HOST_IP:8888"
