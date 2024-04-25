FROM tomcat

COPY . .

RUN apt-get update ; apt-get install maven default-jdk -y ; update-alternatives --config javac

RUN mvn clean package ; cp target/*.war /usr/local/tomcat/webapps/

COPY . .

CMD ["catalina.sh","run"]
