function vistls --description="Visualise remote TLS key with SSH"
   echo \
 | openssl s_client -connect $argv[1]:443 -servername $argv[1] 2>/dev/null \
 | openssl x509 -noout -pubkey \
 | ssh-keygen -vi -m PKCS8 -f /dev/stdin \
 | ssh-keygen -vlf /dev/stdin
end
