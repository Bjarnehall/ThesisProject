
echo "--------------------------------------------------------"
echo "|-request index.html from localhost:8443 with HTTP/1.1-|"
echo "--------------------------------------------------------"
# Curl HTTP/1 localhost Yes SSL
curl -ik --http1.1 https://localhost:8443

echo
echo "--------------------------------------------------------"
echo "|-request index.html from localhost:8443 with HTTP/2---|"
echo "--------------------------------------------------------"
# Curl HTTP/2 localhost Yes SSL
curl -ik --http2 https://localhost:8443

echo
echo "--------------------------------------------------------"
echo "|-request index.html from localhost:8443 with HTTP/3---|"
echo "--------------------------------------------------------"
# Curl HTTP/3 localhost Yes SSL
curl -ik --http3 https://localhost:8443
