# Generating the SSL certificate for the first time
Start and keep the nginx server (no cert version.) on:
```
docker compose up -d --build --force-recreate nginxnocert
```

Then, do a dry run first (replace "example.org" with your domain):
```
docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d example.org
```

If successful, then request a new certifcate (replace "example.org" with your domain):
```
docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d example.org
```

# Running the nginx HTTPS server
Start the server (replace example.org with your domain):
```
docker compose --profile server build --build-arg DOMAIN_NAME=example.org
docker compose --profile server up -d
```
