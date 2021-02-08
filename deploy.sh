echo "Deploy SolrSearchService to EC2"
DOCKER_IMAGE=022539168230.dkr.ecr.us-east-1.amazonaws.com/solrsearch
docker pull $DOCKER_IMAGE
docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs -r docker stop
docker run -d -p 3000:3000 $DOCKER_IMAGE
