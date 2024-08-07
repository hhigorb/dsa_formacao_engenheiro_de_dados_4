# Instruções do Lab 1


# Abra o terminal ou prompt de comando e navegue até a pasta onde você colocou os arquivos do Lab1 (não use espaço ou acento em nome de pasta)


# Execute o comando abaixo para criar a imagem Docker

docker build -t image-modelagem-dsa:lab1 .


# Execute o comando abaixo para criar o container Docker

docker run -dit --name dsa-dw-lab1 -v ./terraform:/lab1 image-modelagem-dsa:lab1 /bin/bash


NOTA: No Windows você deve substituir ./Lab1 pelo caminho completo da pasta, por exemplo: C:\DSA\Cap05\Lab1


# Verifique as versões

terraform version
gcloud version

