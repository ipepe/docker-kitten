# docker-kitten
Example http nginx server running a html page with kitten image

## quick run

`docker run -d -p 80:80 ipepe/kitten:latest`

## traefik 1.7

```yml
version: '2'
services:
  kitten:
    image: ipepe/kitten
    restart: always
    network_mode: bridge
    expose:
      - '8080'
    labels:
      - 'traefik.enable=true'
      - 'traefik.port=8080'
      - 'traefik.frontend.rule=Host:otherkitten.example.org,kitten.example.org'
 ```
