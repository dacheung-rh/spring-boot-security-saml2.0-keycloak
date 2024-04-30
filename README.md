# Spring-boot2-Security-SAML2.0-keycloak
 
 Single Sign-On With SAML 2.0, Spring Boot - Security and Keycloak 22.0.1
 
# Step 1: Start Keycloak

docker run -d -p 8080:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=redhat\
    -e KC_PROXY=edge \
    --restart always \
    -v /your/projet/path:/opt/jboss/keycloak/standalone/data \
    quay.io/keycloak/keycloak:22.0.6 start-dev

# Step 2: Spring Boot run project:
mvn spring-boot:run

# Step 3: Go to:
http://localhost:8081/

user: **admin**
password: **admin**

# Reference: 
https://stackoverflow.com/questions/71605941/spring-security-global-authenticationmanager-without-the-websecurityconfigurera
https://www.baeldung.com/spring-deprecated-websecurityconfigureradapter
https://github.com/eugenp/tutorials/tree/master/spring-security-modules/spring-security-saml
https://www.baeldung.com/spring-security-saml
https://blog.codecentric.de/en/2019/03/secure-spring-boot-app-saml-keycloak/
https://github.com/thomasdarimont/spring-boot-security-saml-sample
https://codetinkering.com/spring-security-saml2-service-provider-example/
https://codetinkering.com/saml2-spring-security-5-2-tutorial/
https://auth0.com/blog/how-saml-authentication-works/