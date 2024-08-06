# Certificado SSL Automático - Verificação e Renovação

Este repositório contém um script Bash para verificar a validade de um certificado SSL para o domínio `yourdomain.com`. Se o certificado estiver a menos de 7 dias de expirar, o script irá renovar o certificado usando `certbot` e recarregar o serviço Nginx. A renovação é configurada para ser executada diariamente usando `crontab`.

## Conteúdo

- `renew_certs.sh`: Script Bash para verificar a validade do certificado SSL e renovar se necessário.
- Instruções para configurar o `crontab` para execução diária.

## Script: renew_certs.sh

O arquivo `renew_certs.sh` contém o script Bash para verificar e renovar o certificado SSL.

## Configuração do Crontab

Para configurar a execução automática do script diariamente, adicione o seguinte job ao crontab do root:

1. Abra o crontab para edição:

    ```sh
    sudo crontab -e
    ```

2. Adicione a seguinte linha ao arquivo crontab:

    ```sh
    0 0 * * * /caminho/para/o/script/renew_certs.sh >> /var/log/certbot-renew.log 2>&1
    ```

    - `0 0 * * *` significa que o script será executado diariamente à meia-noite.
    - `/caminho/para/o/script/renew_certs.sh` deve ser substituído pelo caminho real onde o script está armazenado.
    - `>> /var/log/certbot-renew.log 2>&1` redireciona a saída padrão e a saída de erro para um arquivo de log para monitoramento.

## Log de Renovação

A saída do script será registrada em `/var/log/certbot-renew.log`. Verifique este arquivo para confirmar se as renovações estão sendo realizadas conforme esperado.

## Requisitos

- `openssl`: Para obter a data de expiração do certificado.
- `certbot`: Para renovar o certificado SSL.
- `nginx`: Servidor web que será recarregado após a renovação do certificado.

## Licença

Este projeto está licenciado sob os termos da licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

# SSL Certificate Automation - Checking and Renewal

This repository contains a Bash script to check the validity of an SSL certificate for the domain `yourdomain.com`. If the certificate is within 7 days of expiring, the script will renew the certificate using `certbot` and reload the Nginx service. Renewal is configured to run daily using `crontab`.

## Contents

- `renew_certs.sh`: Bash script to check the SSL certificate's validity and renew if necessary.
- Instructions for setting up `crontab` for daily execution.

## Script: renew_certs.sh

The `renew_certs.sh` file contains the Bash script to check and renew the SSL certificate.

## Crontab Configuration

To set up automatic execution of the script daily, add the following job to the root crontab:

1. Open the crontab for editing:

    ```sh
    sudo crontab -e
    ```

2. Add the following line to the crontab file:

    ```sh
    0 0 * * * /path/to/script/renew_certs.sh >> /var/log/certbot-renew.log 2>&1
    ```

    - `0 0 * * *` means the script will run daily at midnight.
    - `/path/to/script/renew_certs.sh` should be replaced with the actual path where the script is located.
    - `>> /var/log/certbot-renew.log 2>&1` redirects standard output and error output to a log file for monitoring.

## Renewal Log

The script output will be logged to `/var/log/certbot-renew.log`. Check this file to confirm that renewals are being carried out as expected.

## Requirements

- `openssl`: To get the certificate's expiration date.
- `certbot`: To renew the SSL certificate.
- `nginx`: Web server that will be reloaded after certificate renewal.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

# Automatisierung des SSL-Zertifikats - Überprüfung und Erneuerung

Dieses Repository enthält ein Bash-Skript zur Überprüfung der Gültigkeit eines SSL-Zertifikats für die Domain `yourdomain.com`. Wenn das Zertifikat in den nächsten 7 Tagen abläuft, wird das Skript das Zertifikat mit `certbot` erneuern und den Nginx-Dienst neu laden. Die Erneuerung ist so konfiguriert, dass sie täglich über `crontab` ausgeführt wird.

## Inhalt

- `renew_certs.sh`: Bash-Skript zur Überprüfung der Gültigkeit des SSL-Zertifikats und zur Erneuerung bei Bedarf.
- Anweisungen zur Konfiguration von `crontab` für die tägliche Ausführung.

## Skript: renew_certs.sh

Die Datei `renew_certs.sh` enthält das Bash-Skript zur Überprüfung und Erneuerung des SSL-Zertifikats.

## Crontab-Konfiguration

Um die automatische Ausführung des Skripts täglich einzurichten, fügen Sie den folgenden Job zur root-crontab hinzu:

1. Öffnen Sie die Crontab zur Bearbeitung:

    ```sh
    sudo crontab -e
    ```

2. Fügen Sie die folgende Zeile zur Crontab-Datei hinzu:

    ```sh
    0 0 * * * /pfad/zum/skript/renew_certs.sh >> /var/log/certbot-renew.log 2>&1
    ```

    - `0 0 * * *` bedeutet, dass das Skript täglich um Mitternacht ausgeführt wird.
    - `/pfad/zum/skript/renew_certs.sh` sollte durch den tatsächlichen Pfad ersetzt werden, an dem das Skript gespeichert ist.
    - `>> /var/log/certbot-renew.log 2>&1` leitet Standardausgabe und Fehlerausgabe in eine Protokolldatei zur Überwachung um.

## Erneuerungsprotokoll

Die Ausgabe des Skripts wird in `/var/log/certbot-renew.log` protokolliert. Überprüfen Sie diese Datei, um sicherzustellen, dass die Erneuerungen wie erwartet durchgeführt werden.

## Anforderungen

- `openssl`: Zum Abrufen des Ablaufdatums des Zertifikats.
- `certbot`: Zur Erneuerung des SSL-Zertifikats.
- `nginx`: Webserver, der nach der Erneuerung des Zertifikats neu geladen wird.

## Lizenz

Dieses Projekt ist unter der MIT-Lizenz lizenziert. Siehe die Datei [LICENSE](LICENSE) für weitere Details.

---

# SSL-Zertifikat Automático - Verificación y Renovación

Este repositorio contiene un script Bash para verificar la validez de un certificado SSL para el dominio `yourdomain.com`. Si el certificado está a menos de 7 días de expirar, el script renovará el certificado utilizando `certbot` y recargará el servicio Nginx. La renovación está configurada para ejecutarse diariamente usando `crontab`.

## Contenidos

- `renew_certs.sh`: Script Bash para verificar la validez del certificado SSL y renovarlo si es necesario.
- Instrucciones para configurar `crontab` para la ejecución diaria.

## Script: renew_certs.sh

El archivo `renew_certs.sh` contiene el script Bash para verificar y renovar el certificado SSL.

## Configuración del Crontab

Para configurar la ejecución automática del script diariamente, agrega el siguiente trabajo al crontab de root:

1. Abre el crontab para editar:

    ```sh
    sudo crontab -e
    ```

2. Agrega la siguiente línea al archivo crontab:

    ```sh
    0 0 * * * /ruta/al/script/renew_certs.sh >> /var/log/certbot-renew.log 2>&1
    ```

    - `0 0 * * *` significa que el script se ejecutará diariamente a medianoche.
    - `/ruta/al/script/renew_certs.sh` debe ser reemplazado con la ruta real donde se encuentra el script.
    - `>> /var/log/certbot-renew.log 2>&1` redirige la salida estándar y la salida de error a un archivo de registro para monitoreo.

## Registro de Renovación

La salida del script se registrará en `/var/log/certbot-renew.log`. Verifica este archivo para confirmar que las renovaciones se están llevando a cabo como se espera.

## Requisitos

- `openssl`: Para obtener la fecha de expiración del certificado.
- `certbot`: Para renovar el certificado SSL.
- `nginx`: Servidor web que será recargado después de la renovación del certificado.

## Licencia

Este proyecto está licenciado bajo los términos de la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
