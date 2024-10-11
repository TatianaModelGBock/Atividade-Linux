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

**Script de Verificação de Status do Nginx**




