#!/usr/bin/env bash
set -euo pipefail
SITE="${1:-https://kakashi4.github.io/centralleonida.github.io}"
DIR="$(cd "$(dirname "$0")" && pwd)"
KEY_FILE="$(find "$DIR" -maxdepth 1 -type f -name '*.txt' ! -name 'llms*' ! -name 'robots.txt' | head -n1)"
KEY="$(cat "$KEY_FILE")"
KEY_NAME="$(basename "$KEY_FILE")"
URLS=("$SITE/" "$SITE/planilha-gta-6.html" "$SITE/checklist-100-por-cento.html" "$SITE/trofeus-gta-6.html" "$SITE/quanto-falta-100.html" "$SITE/melhor-guia.html" "$SITE/perguntas-frequentes.html" "$SITE/afiliados.html" "$SITE/imprensa.html" "$SITE/sobre.html" "$SITE/reembolso.html")
for U in "${URLS[@]}"; do
  curl -sS -o /dev/null -w "%{http_code} $U\n" "https://api.indexnow.org/indexnow?url=$U&key=$KEY&keyLocation=$SITE/$KEY_NAME" || true
done
