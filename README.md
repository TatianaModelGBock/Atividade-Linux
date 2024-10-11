# Atividade- Linux

## Atividade para o EStágio DevSecOps Da Compass Uol

Este projeto tem como objetivo verificar o status do serviço Nginx em uma máquina Linux Ubuntu 22.04.5 LTS e registrar o resultado em arquivos de log. O script utilizado é executado automaticamente a cada 5 minutos utilizando o cron.


##  Pré-requisitos
###### 
- **Sistema Operacional**: Ubuntu 22.04.5 LTS (Jammy)
- **Servidor Web**: Nginx
- **Ferramentas Necessárias**: Git, Nano, Crontab

##  Passos para Instalação e Configuração
### Atualizar Pacotes


**Atualize os pacotes do sistema operacional:**  
``sudo apt update``

**Instalar Nginx**

``sudo apt install nginx
``

**Iniciar o Serviço Nginx**

``sudo systemctl start nginx
``

**Verificar o Status do Nginx**

>Verifique se o serviço está ativo:

``sudo systemctl status nginx
``

**Obter o Endereço IP**

>Recupere o endereço IP da máquina para acessar o servidor:

``ip addr show
``

>Acesse no navegador:

``http://<endereço-IP>
``
**Clonar o Repositório**

>Crie um diretório para o projeto e clone o repositório do GitHub:

``mkdir AtividadeLinux``

``cd AtividadeLinux``

``git clone <URL-do-repositório-SSH>
``

**Criar o Script ``nginx_script.sh``**

>Crie o arquivo ``nginx_script.sh`` usando o editor ``nano``:

``nano nginx_script.sh
``

**Definir Permissões**

>Defina as permissões de execução para o script:

``chmod 777 nginx_script.sh
``

**Configurar Cron para Execução Automática**

>Abra o crontab para editar:

``crontab -e
``

>>Adicione a seguinte linha para executar o script a cada 5 minutos:

``*/5 * * * * ~/AtividadeLinux/nginx_script.sh
``

**Visualizar e Modificar o Arquivo** `index.html`

>Navegue até o diretório de HTML do Nginx:

``cd /var/www/html
``

O arquivo principal de página web é o index.nginx-debian.html. Ele será atualizado automaticamente pelo script para exibir o status do serviço.

**Subir o Projeto para o GitHub**

>Faça o versionamento do projeto utilizando os comandos Git:

`git add .``

``git commit -m "Adiciona script de monitoramento do Nginx"``

``git push origin main``

## Como Funciona
####

- O script nginx_script.sh verifica se o serviço Nginx está ativo a cada 5 minutos.

- Dependendo do status (online/offline), o script registra o resultado nos arquivos de log correspondentes.

- A página principal do Nginx ( ``index.nginx-debian.html`` ) é atualizada dinamicamente para exibir o status do serviço.


## Tecnologias Utilizadas

- Ubuntu 22.04.5 LTS
- Nginx
- Git
- Cron





