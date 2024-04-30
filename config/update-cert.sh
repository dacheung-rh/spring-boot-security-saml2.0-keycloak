IDP_HOST=keycloak.apps.sno.cheers.local
IDP_PORT=443
CERTIFICATE_FILE=keycloak.pem
KEYSTORE_FILE=keystore.jks
KEYSTORE_PASSWORD=store123

openssl s_client -host $IDP_HOST -port $IDP_PORT -prexit -showcerts </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > $CERTIFICATE_FILE

keytool -delete -alias keycloak -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD

keytool -import -alias keycloak -file $CERTIFICATE_FILE -keystore $KEYSTORE_FILE -storepass $KEYSTORE_PASSWORD -noprompt

