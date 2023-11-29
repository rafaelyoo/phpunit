# Comando para criar a imagem, no diretório onde se encontra o Dockerfile
docker build -t img_primeiraimagem .

# Comando para iniciar executar o script
docker run -it --rm --name my-first-script-docker -v "$PWD/src/app":/usr/src/app -w /usr/src/app img_phpcli81bllseye php main.php