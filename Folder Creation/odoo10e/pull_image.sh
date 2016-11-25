image_pull () {
docker pull postgres:9.3
docker pull redis
docker pull nginx:alpine
docker pull tozny/rancher-lets-encrypt
docker pull razeen/odoo10e:v1.1
}

read -r -p "Do you wish to pull down all images? [y/N]" response
case $response in
    [yY][eE][sS]|[yY])
      image_pull
      echo "Image Pull Secussful."
        ;;
    *)
      echo "Image pulling skiped. Process finish."
        ;;
esac
