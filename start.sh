sudo docker-compose rm -f 
export EXTERNAL_IP=$(curl -LSs 'https://api.ipify.org')
echo EXTERNAL_IP $EXTERNAL_IP
sudo --preserve-env=EXTERNAL_IP docker-compose up -d
sudo watch docker ps