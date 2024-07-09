echo "Starting fastapi container"
if docker stop fastapi && docker rm fastapi; then
    echo "Container stopped and removed"
else
    echo "No container to stop"
fi
docker build -t fastapi .
docker run -d --name API -p 8000:8000 fastapi
echo "Container started"