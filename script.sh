#!/bin/bash

# Definição do diretório de logs e do nome do serviço
DIR_LOGS="~/AtividadeLinux/logs"
SERVICO="nginx"

# Criação do diretório de logs, se não existir
mkdir -p $DIR_LOGS

# Obtendo data e hora atuais
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')

# Verificando o status do serviço
if systemctl is-active --quiet $SERVICO; then
    STATUS="online"
    MENSAGEM="O serviço $SERVICO está online."
    echo "$DATA_HORA - $SERVICO - $STATUS - $MENSAGEM" >> $DIR_LOGS/servico_online.log
else
    STATUS="offline"
    MENSAGEM="O serviço $SERVICO está offline."
    echo "$DATA_HORA - $SERVICO - $STATUS - $MENSAGEM" >> $DIR_LOGS/servico_offline.log
fi

# Atualizando o arquivo index.html com o status do serviço
echo "<html><body><h1>Status do Serviço: $STATUS</h1></body></html>" > /var/www/html/index.nginx-debian.html
