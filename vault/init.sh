docker run -d --rm -p8200:8200 vault:1.2.0 server -dev -dev-root-token-id=toor
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=toor
echo "showing vault status";vault status

# this is sops specific
echo "initializing vault transit engine & few keys"
vault secrets enable -path=sops transit
vault write sops/keys/firstkey type=rsa-4096
vault write sops/keys/secondkey type=rsa-2048
vault write sops/keys/thirdkey type=chacha20-poly1305
