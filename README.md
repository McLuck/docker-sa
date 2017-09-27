# Docker-SGAP
Projeto para montar imagem para o SA

Para monmtar a imagem: docker build -t [NOME_DA_IMAGEM] .

Infra está atualmente na versão 6 do java.

Realizar mapeamento do arquivo de configuracao da JVM: 
-V /opt/meuservico/run.conf:/opt/sicat/app/bin/run.conf

Realizar mapeamento do diretorio para deploy de datasource a partir do host: 
-V /opt/datasource:/opt/sicat/app/server/sgap/deploy/datasources

Realizar mapeamento do diretorio para das configurações padrões do concentrador: 
-V /opt/concentrador/configs:/opt/sicat/app/config-concentrador

Portas de serviços disponíveis:
- 55555 => JMX
- 18080 => HTTP
- 5445 => Fila JMS protocolo JMS
- 5446 => Fila JMS protocolo STOMP