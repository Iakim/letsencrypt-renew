#!/bin/bash

# Obter a data de expiração do certificado
# Obtener la fecha de expiración del certificado
# Get the certificate expiration date
# Abrufen des Ablaufdatums des Zertifikats
expiry_date=$(openssl s_client -connect yourdomain.com:443 -servername yourdomain.com < /dev/null 2> /dev/null | openssl x509 -noout -dates | grep notAfter | sed 's/notAfter=//g')

# Converter a data de expiração para o formato adequado para comparação
# Convertir la fecha de expiración al formato adecuado para la comparación
# Convert the expiration date to the appropriate format for comparison
# Konvertieren Sie das Ablaufdatum in das geeignete Format für den Vergleich
expiry_timestamp=$(date -d "$expiry_date" +%s)

# Obter a data atual e adicionar 7 dias (604800 segundos)
# Obtener la fecha actual y agregar 7 días (604800 segundos)
# Get the current date and add 7 days (604800 seconds)
# Holen Sie sich das aktuelle Datum und fügen Sie 7 Tage hinzu (604800 Sekunden)
current_timestamp=$(date +%s)
future_timestamp=$(($current_timestamp + 604800))

# Comparar as datas
# Comparar las fechas
# Compare the dates
# Vergleichen Sie die Daten
if [ $expiry_timestamp -le $future_timestamp ]; then
    echo "certbot renew --quiet --deploy-hook \"systemctl reload nginx\""
else
    exit 0
fi
