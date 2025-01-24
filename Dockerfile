# Para determinar uma imagem que vai ser usado com a versão 18-alpine3.20
FROM node:18-alpine3.20
# Criar diretorio de trabalho, criando pasta de trabalho
WORKDIR /usr/src/app
# Realiza copia de todos os arquivo Raiz do projeto dentro da pasta app
COPY . .
# Executa o comando para instalar node_modules
RUN npm install
# Executa o comando para executar para converte o Typescript
RUN npm run build
# Vai expor a porta para ficar acessivo no conteiner
EXPOSE 3333
# Executar a aplicação
CMD [ "npm", "start" ]
