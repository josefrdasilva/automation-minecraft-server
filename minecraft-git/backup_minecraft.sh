#!/bin/bash

# 1. Forçar o Minecraft a salvar tudo no disco
docker exec -u 1000 -i mc-server mc-send-to-console save-all
sleep 5

# 2. Definir o caminho fixo (sem data no nome)
ARQUIVO_FINAL="/mnt/hdd500gb/backup_minecraft_atual.tar.gz"

# 3. Compactar a pasta de dados
# O Linux irá substituir o arquivo se ele já existir
tar -czf $ARQUIVO_FINAL /home/zefr/minecraft-server/data

# 4. (Opcional) Registrar no log que o backup foi renovado
echo "Backup atualizado em: $(date)" >> /home/zefr/scripts/log_backup.txt
