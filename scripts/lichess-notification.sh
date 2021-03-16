#!/bin/sh
TOKEN="V3znLbk3TK87pdo4"
games=$(curl -sf https://lichess.org/api/account/playing -H "Authorization: Bearer $TOKEN" | jq "[.nowPlaying[] | select(.isMyTurn == true)] | length")
echo "$games"
