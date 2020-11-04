SECRET='redhat-io-secret'
REGISTRY='registry.redhat.io'
USERNAME='XXX'
PASSWORD='YYY'
MAIL="ZZZ"
oc create secret docker-registry $SECRET --docker-server=$REGISTRY --docker-username=$USERNAME --docker-password=$PASSWORD --docker-email=$MAIL
oc secrets link default $SECRET --for=pull
oc secrets link builder $SECRET --for=pull
