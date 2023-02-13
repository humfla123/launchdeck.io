apt update
apt install docker
docker pull accetto/ubuntu-vnc-xfce
docker run -d -p 25901:5901 -p 26901:6901 accetto/ubuntu-vnc-xfce
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && apt update && apt install ngrok
ngrok config add-authtoken 26l2eR5cm1MuLRoKVXkVn3UQzHk_6WzTXhwxmHegKUvQsxwVu
ngrok tcp 26901
