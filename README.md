# Docker Tor

Docker image for [Tor](https://www.torproject.org).

Currently only used as Tor network proxy daemon allowing connections to port `9050`.

## Information

| Service                                           | Stats |
|---------------------------------------------------|-------|
| [GitHub](https://github.com/x-jokay/docker-tor)   | ![Last commit](https://img.shields.io/github/last-commit/x-jokay/docker-tor.svg?style=flat-square) ![Issues](https://img.shields.io/github/issues-raw/x-jokay/docker-tor.svg?style=flat-square) ![PR](https://img.shields.io/github/issues-pr-raw/x-jokay/docker-tor.svg?style=flat-square) |
| [Docker Hub](https://hub.docker.com/r/xjokay/tor) | ![Pulls](https://img.shields.io/docker/pulls/xjokay/tor.svg?style=flat-square) ![Stars](https://img.shields.io/docker/stars/xjokay/tor.svg?style=flat-square) |

## Usage

```sh
docker pull docker.io/xjokay/tor:latest
```

### Supported tags

| Tag       | Description         | Size |
|-----------|---------------------|------|
| latest    | Latest `main` build | ![Size](https://shields.beevelop.com/docker/image/image-size/xjokay/tor/latest.svg?style=flat-square) |
| {release} | Specific release version, see available [releases](https://github.com/x-jokay/docker-tor/releases) | |

### Exposed Ports

| Port | Protocol | Description           |
|------|----------|-----------------------|
| 9050 | TCP      | SOCKS5 (without auth) |

## Samples

### docker-compose

```yaml
version: '3.8'

services:
  app:
    image: docker.io/xjokay/tor:latest
    ports:
      - 9050:9050
    networks:
      - default
    restart: always
```

### docker run

```sh
docker run -d \
  -p 9050:9050 \
  docker.io/xjokay/tor:latest
```
