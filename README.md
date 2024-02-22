# Export the following environment variables

```bash
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
```

SSH into the instance using user `ubuntu` and IP in terraform output

Install docker

```bash
curl -fsSL https://get.docker.com | sh -
```

Add user `ubuntu` to `docker` group

```bash
sudo usermod -aG docker ubuntu
```

Clone the repos

```bash
git clone https://github.com/Fuviathan/CNWEB_Frontend.git cnweb-fe
git clone https://github.com/Fuviathan/CNWEB_backend.git cnweb-be
```

Pull docker images

```bash
docker compose pull
```

Deploy containers

```bash
docker compose up -d
```
