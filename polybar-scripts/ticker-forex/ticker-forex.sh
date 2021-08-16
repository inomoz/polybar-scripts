#!/bin/sh

API="http://api.exchangeratesapi.io/v1/latest?access_key=35dce38c4a5691bfd60f30bf9f5bb4d0"

CURRENCY_BASE="EUR"
CURRENCY_QUOTE="RUB"

quote=$(curl -sf "$API&symbols=USD,RUB&format=1" | jq -r ".rates.$CURRENCY_QUOTE")
echo $quote
quote=$(LANG=C printf "%.2f" "$quote")



echo "# $quote"
