#!/bin/sh


### https://selfhosters.net/docker/plex/cloudflare/


email=email@sample.com
token=YOUR_CLOUDFLARE_API_TOKEN
zone=YOUR_CLOUDFLARE_DNS_ZONE

# Disable ipv6 for cloudflare.com

# Get an API token from cloudflare.com (create one -> DNZ -> Zone settings -> Edit -> ADD)
# Verify token
#   curl -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
#     -H "Authorization: Bearer ${token}" \
#     -H "Content-Type:application/json"



# Disable cache adding a route : sub.domain.com/*

curl -X PATCH "https://api.cloudflare.com/client/v4/zones/${zone}/settings/ipv6" \
    -H "X-Auth-Email: ${email}" \
    -H "Authorization: Bearer ${token}" \
    -H "Content-Type: application/json" \
    --data '{"value":"off"}'

