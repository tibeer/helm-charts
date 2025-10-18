# The primary domain of your Snikket instance
SNIKKET_DOMAIN=chat.example.com

# An email address where the admin can be contacted
# (also used to register your Let's Encrypt account to obtain certificates)
SNIKKET_ADMIN_EMAIL=you@example.com


80/tcp web/file sharing
443/tcp web/file sharing
5222/tcp client app connections
5269/tcp federation
5000/tcp file transfer
3478/tcp stun/turn
3478/udp stun/turn
3479/tcp stun/turn
3479/udp stun/turn
5349/tcp stun/turn tls
5349/udp stun/turn tls
5350/tcp stun/turn tls
5350/udp stun/turn tls
49152-65535/udp turn data
