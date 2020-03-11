disable_cache = true
disable_mlock = true
ui = true
listener "tcp" {
    address = "0.0.0.0:8001"
    tls_disable = 1
}

storage "file" {
    path="/home/ubuntu/vault"
}
