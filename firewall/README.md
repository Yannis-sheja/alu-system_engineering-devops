# Firewall

Configures the `ufw` firewall on a web server so that all incoming traffic is blocked except SSH, HTTP and HTTPS.

## Files

| File | Description |
|---|---|
| `0-block_all_incoming_traffic_but` | Installs `ufw`, denies all incoming traffic, and allows only TCP ports 22 (SSH), 80 (HTTP) and 443 (HTTPS) |

## Usage

Run on the target server (web-01):

```bash
chmod +x 0-block_all_incoming_traffic_but
./0-block_all_incoming_traffic_but
```

Verify:

```bash
sudo ufw status verbose
```

## Notes

- Port 22 is allowed **before** the firewall is enabled, so the SSH session is not cut off.
- Outgoing traffic is allowed by default.

## Servers

- web-01: 18.170.217.131
- web-02: 18.132.98.220
- lb-01: 18.169.184.99
