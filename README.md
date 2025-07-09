# 🛠️ Config Server - AtendeIA

Este projeto é o **Config Server** do sistema **AtendeIA**, responsável por centralizar e fornecer as configurações dos microsserviços.

---

## 📦 Tecnologias Utilizadas

- Java 17
- Spring Boot 3.2.6
- Spring Cloud Config Server (`2023.0.1`)
- Maven
- Docker

---

## 🧪 Como rodar localmente pela IDE

1. Clone este repositório.
2. Certifique-se de que o repositório de configuração (`config-repo-atendeia`) esteja acessível.
3. Configure o arquivo `application.yml` conforme abaixo:

```yaml
server:
  port: 8888

spring:
  application:
    name: config-server-atendeia

  cloud:
    config:
      server:
        git:
          uri: https://github.com/SEU_USUARIO/config-repo-atendeia
          default-label: master
          clone-on-start: true
```

4. Rode a classe `ConfigServerAtendeiaApplication.java`.

5. Acesse em: [http://localhost:8888](http://localhost:8888)

---

## 🐳 Como rodar via Docker

1. Gere o JAR da aplicação:
   ```bash
   mvn clean package -DskipTests
   ```

2. Execute o script de build:
   ```bash
   ./build.sh
   ```

3. Acesse em:
   ```
   http://localhost:8888
   ```

---

## 🧰 Scripts úteis

### 🔨 build.sh

Script que:

- Gera a imagem Docker com base na versão do `pom.xml`.
- Remove containers antigos.
- Sobe o container mapeando a porta `8888`.
- Informa a URL correta para acesso (localhost ou IP local).

---

## 🧪 Testar configuração de outro serviço

Exemplo de chamada para testar se o Config Server está entregando configurações:

```
http://localhost:8888/discovery-server-atendeia/default
```

---

## 📁 Estrutura de repositórios

- Este projeto: `config-server-atendeia`
- Configurações centralizadas: `config-repo-atendeia`
- Outros microsserviços: estarão no repositório `AtendeIA` em subpastas

---

## ✅ Requisitos

- Git
- Java 17+
- Maven
- Docker

---

## 🧾 Licença

Projeto desenvolvido para fins educacionais e empresariais.
