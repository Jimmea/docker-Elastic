echo "1/Up" &&
docker-compose build
docker-compose -f docker-compose.yml up -d
echo "2/ Check version" &&
curl localhost:9200
echo "3/ Check index" &&
curl localhost:9200/customer/_search?pretty
echo "4/ Check state container" &&
docker ps -a
echo "Sucessfully upgrade"