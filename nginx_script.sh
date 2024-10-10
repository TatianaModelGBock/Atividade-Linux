#!/bin/bash

# Definir o diretório de saída para armazenar os resultados
DIR_SAIDA="/home/tatiana/validacao_servico"  # Substitua pelo caminho desejado
SERVICO="nginx"  # Defina o nome do serviço que deseja verificar (ex: nginx)

# Criar diretório de saída, caso não exista
mkdir -p $DIR_SAIDA

# Obter a data e hora atual
DATA_HORA=$(date "+%Y-%m-%d %H:%M:%S")

# Verificar se o serviço está ativo
if systemctl is-active --quiet $SERVICO
then
    STATUS="ONLINE"
    MENSAGEM="O serviço $SERVICO está ativo."
    # Criar arquivo de saída para serviço online
    echo "$DATA_HORA - Serviço: $SERVICO - Status: $STATUS - $MENSAGEM" >> "$DIR_SAIDA/servico_online.log"
else
    STATUS="OFFLINE"
    MENSAGEM="O serviço $SERVICO está inativo."
    # Criar arquivo de saída para serviço offline
    echo "$DATA_HORA - Serviço: $SERVICO - Status: $STATUS - $MENSAGEM" >> "$DIR_SAIDA/servico_offline.log"
fi
