# Docker Tor

Docker image for [Tor](https://www.torproject.org).

Currently only used as Tor network proxy daemon allowing connections to port `9050`.

## Information

| Service                                           | Stats |
|---------------------------------------------------|-------|
| [Docker Hub](https://hub.docker.com/r/xjokay/tor) | [![Pulls](https://img.shields.io/docker/pulls/xjokay/tor.svg?style=flat-square)](https://hub.docker.com/r/xjokay/tor) [![Stars](https://img.shields.io/docker/stars/xjokay/tor.svg?style=flat-square)](https://hub.docker.com/r/xjokay/tor) |
| [GitHub](https://github.com/x-jokay/docker-tor)   | [![Last commit](https://img.shields.io/github/last-commit/x-jokay/docker-tor.svg?style=flat-square)](https://github.com/x-jokay/docker-tor/commits/master) [![Issues](https://img.shields.io/github/issues-raw/x-jokay/docker-tor.svg?style=flat-square)](https://github.com/x-jokay/docker-tor/issues) [![PR](https://img.shields.io/github/issues-pr-raw/x-jokay/docker-tor.svg?style=flat-square)](https://github.com/x-jokay/docker-tor/pulls) [![Size](https://img.shields.io/github/repo-size/x-jokay/docker-tor.svg?style=flat-square)](https://github.com/x-jokay/docker-tor/) [![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/x-jokay/docker-tor/blob/master/LICENSE) |

## Installation

```sh
docker pull xjokay/tor
```

### Supported tags

| Tag    | Description         | Size                                                                                                                                              |
|--------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| latest | Latest master build | [![Size](https://shields.beevelop.com/docker/image/image-size/xjokay/tor/latest.svg?style=flat-square)](https://hub.docker.com/r/xjokay/tor/tags) |

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
    image: xjokay/tor:latest
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
  xjokay/tor:latest
```
