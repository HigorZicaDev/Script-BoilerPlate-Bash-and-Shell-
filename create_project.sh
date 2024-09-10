#!/bin/bash

# Verifica se o nome do projeto foi fornecido
if [ -z "$1" ]; then
  echo "Erro: Nenhum nome de projeto fornecido."
  echo "Uso: ./create_project.sh <nome-do-projeto>"
  exit 1
fi

# Nome do projeto
PROJECT_NAME=$1

# Cria o diretório do projeto
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Cria as pastas para o projeto
mkdir css js images

# Cria o arquivo index.html
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${PROJECT_NAME}</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Boilerplate de Projet ${PROJECT_NAME}</h1>
    <script src="js/script.js"></script>
</body>
</html>
EOL

# Cria o arquivo style.css
cat <<EOL > css/style.css
/* CSS Boilerplate para ${PROJECT_NAME} */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
h1 {
    color: #333;
    text-align: center;
    margin-top: 50px;
}
EOL

# Cria o arquivo script.js
cat <<EOL > js/script.js
// JavaScript Boilerplate para ${PROJECT_NAME}
console.log("Projeto ${PROJECT_NAME} iniciado com sucesso!");
EOL

# Exibe mensagem de sucesso
echo "Projeto ${PROJECT_NAME} criado com sucesso!"
