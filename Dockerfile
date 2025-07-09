# Imagem base leve com Java 17 (OpenJDK via Eclipse Temurin)
FROM eclipse-temurin:17-jdk-alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Cria volume para arquivos temporários (boa prática no Spring Boot)
VOLUME /tmp

# Argumento para localizar o JAR compilado
ARG JAR_FILE=target/*.jar

# Copia o JAR para o diretório /app com o nome fixo "app.jar"
COPY ${JAR_FILE} app.jar

# Expõe a porta usada pela aplicação
EXPOSE 8888

# Executa a aplicação
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
