# docker build -t terraform-image:lab1 .
# docker run -dit --name lab-1 terraform-image:lab1 /bin/bash

# terraform version
# gcloud --version
# https://stackoverflow.com/questions/62148797/how-can-i-install-google-cloud-sdkgcloud-cli-on-docker-container-using-pip

# Usando a imagem oficial do Ubuntu como base
FROM ubuntu:latest

# Mantenedor da imagem 
LABEL maintainer="DSA"

# Atualizando os pacotes do sistema e instalar dependências necessárias
RUN apt-get update && \
    apt-get install -y wget unzip curl

# Definir a versão do Terraform 
ENV TERRAFORM_VERSION=1.6.4

# Baixar e instalar Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Criar a pasta /lab1 dentro do container
RUN mkdir /lab1

# Copiar main.tf para a pasta /lab1 no container
COPY main.tf /lab1/

# Instalar o Google Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN apt-get install apt-transport-https ca-certificates gnupg curl -y
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install google-cloud-sdk -y


# Definir o comando padrão para execução quando o container for iniciado
CMD ["/bin/bash"]
