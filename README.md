# PLEX MEDIA SERVER

### Run plexmediaserver in a raspberry pi inside a container

### Supports for traefik router


Usage:

```bash
make	# Build and detach
make build	# Build and keep terminal active to see logs in real time
```

Note:
- You can get a claim key [here](https://quickbox.io/knowledge-base/claim-plex/)
- plex_cloudflare_cache.sh is used to disable cache to respect Cloudflare terms of use (optionnal) : API key required => get it from [cloudflare](https://www.cloudflare.com/)
