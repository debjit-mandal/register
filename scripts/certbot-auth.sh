#!/usr/bin/env bash

echo "$PWD";

echo "AUTH ::[$CERTBOT_VALIDATION]::[$CERTBOT_TOKEN]::[$CERTBOT_REMAINING_CHALLENGES]";
echo "[$CERTBOT_DOMAIN]";

sleep 1;

./scripts/certbot.sh acme_txt "$CERTBOT_VALIDATION";

sleep $((5*60));

./scripts/certbot.sh check;

