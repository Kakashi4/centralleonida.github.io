#!/usr/bin/env bash
set -euo pipefail
SITE="${1:-https://kakashi4.github.io/centralleonida.github.io}"
DIR="$(cd "$(dirname "$0")" && pwd)"
KEY_FILE="$(find "$DIR" -maxdepth 1 -type f -name '*.txt' ! -name 'llms*' ! -name 'robots.txt' | head -n1)"
KEY="$(cat "$KEY_FILE")"
KEY_NAME="$(basename "$KEY_FILE")"
URLS=("$SITE/" "$SITE/planilha-gta-6.html" "$SITE/checklist-100-por-cento.html" "$SITE/trofeus-gta-6.html" "$SITE/quanto-falta-100.html" "$SITE/melhor-guia.html" "$SITE/perguntas-frequentes.html" "$SITE/artigos.html" "$SITE/afiliados.html" "$SITE/imprensa.html" "$SITE/sobre.html" "$SITE/reembolso.html" "$SITE/artigo-como-platinar-gta-6.html" "$SITE/artigo-checklist-gta-6-100-por-cento.html" "$SITE/artigo-todos-os-trofeus-gta-6.html" "$SITE/artigo-missoes-gta-6-em-ordem.html" "$SITE/artigo-colecionaveis-gta-6.html" "$SITE/artigo-gta-6-perdiveis.html" "$SITE/artigo-quanto-tempo-para-platinar-gta-6.html" "$SITE/artigo-gta-6-ps5-vs-xbox.html" "$SITE/artigo-gta-6-trofeu-online.html" "$SITE/artigo-planilha-vs-guia-em-video.html")
for U in "${URLS[@]}"; do
  curl -sS -o /dev/null -w "%{http_code} $U\n" "https://api.indexnow.org/indexnow?url=$U&key=$KEY&keyLocation=$SITE/$KEY_NAME" || true
done
