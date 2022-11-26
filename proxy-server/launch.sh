script_dir = $(dirname "$0")

java -jar karate.jar -m test.feature -p 3010 -s\
     -c karate-crt.pem \
     -k karate-private-key.pem