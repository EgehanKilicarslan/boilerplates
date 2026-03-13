#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Starting Supabase external volumes and network configuration..."

# 1. Create External Networks
# These networks are defined as 'external' in your docker-compose.yaml
echo "🌐 Creating networks..."
docker network create frontend || true
docker network create backend || true

# 2. Create External Volumes
# These volumes persist your data and configurations independently of containers
echo "📦 Creating volumes..."
VOLUMES=(
  "supabase-defaults"
  "supabase-db-data"
  "supabase-db-config"
  "supabase-storage-data"
  "supabase-studio-snippets"
  "supabase-studio-functions"
)

for vol in "${VOLUMES[@]}"; do
    docker volume create "$vol" || true
done

# 3. Copy Local Configuration to supabase-defaults Volume
# This uses a temporary Alpine container to move your local files into the Docker volume
echo "📂 Copying configuration files to supabase-defaults volume..."

# Ensure the local volumes directory exists before copying
if [ -d "./volumes" ]; then
    docker run --rm \
      -v "$(pwd)/volumes:/src" \
      -v "supabase-defaults:/dest" \
      alpine sh -c "cp -rv /src/* /dest/"
    echo "✅ Configuration files successfully synced."
else
    echo "❌ Error: Local './volumes' directory not found. Please ensure your config files are in the correct path."
    exit 1
fi

echo "✨ Setup complete!"
echo "You can now start your stack by running: docker compose up -d"