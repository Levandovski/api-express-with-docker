#chmod +x
IMAGE_NAME='docker/express-api'
CONTAINER_NAME='api-express-simple'

echo
echo "[+] Stop Container"
docker stop $CONTAINER_NAME
echo
echo "[+] Removing Container"
docker rm $CONTAINER_NAME
echo
echo "[+] Removeing Image"
docker rmi $IMAGE_NAME
echo 
echo "[+] Generate Build..."
docker build -t $IMAGE_NAME .
echo 
echo "[+] Generate Container..."
docker run --name $CONTAINER_NAME -p 3001:3000 -d $IMAGE_NAME 

