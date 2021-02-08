echo "Deploy SolrSearchService to EC2"
DOCKER_IMAGE=022539168230.dkr.ecr.us-east-1.amazonaws.com/solrsearch
DOCKER_APPNAME=solrsearchservice
docker pull $DOCKER_IMAGE
docker container stop $DOCKER_APPNAME
docker container rm $DOCKER_APPNAME
docker run -d -p 3000:3000 --name $DOCKER_APPNAME $DOCKER_IMAGE
