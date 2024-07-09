echo "Stopping and removing API container"
docker stop API
docker rm API
echo "Container stopped and removed"
docker run -d --name API -p 8000:8000 fastapi