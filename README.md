Export the following environment variables
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
```

SSH into the instance using user `ubuntu` and IP in terraform output

Install docker
```
curl -fsSL https://get.docker.com | sh -
```
Add user `ubuntu` to `docker` group
```
sudo usermod -aG docker ubuntu
```
Clone the repos
```
git clone https://github.com/Fuviathan/CNWEB_Frontend.git cnweb-fe
git clone https://github.com/Fuviathan/CNWEB_backend.git cnweb-be
```
Deploy containers
```
docker compose up -d
```

docker run cloudflare/cloudflared:latest tunnel --no-autoupdate run --token eyJhIjoiZmQ3Yjg3MGQ5NzMxYmM1ODdjMzlkMGEzYTNjNzRmNTgiLCJ0IjoiZDYxMzllN2EtMzM3OC00ZWI3LWJhYmEtNTIxN2NmMmVlZjkyIiwicyI6IlpqY3hZbUppTURNdE5ERmpOaTAwTTJNeExXSm1aRFl0WkdKaU5qSTFNall5T0RBeSJ9
