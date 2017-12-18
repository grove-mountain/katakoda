export NOMAD_ADDR=http://host01:4646
export CONSUL_HTTP_ADDR=http://host01:8500
export FAAS_GATEWAY=https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
export DOCKER_REGISTRY_URL=https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/v2
export DOCKER_REGISTRY=[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com

# Start Nomad
sleep 1; ~/launch.sh;

clear

# Install templates
faas-cli template pull

# Echo status
: The local Docker Registry is [[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com
: The OpenFaaS Gateway is https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
