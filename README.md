# Homelab Services

This repository contains configurations for multiple self-hosted services running in my [tailnet](https://tailscale.com/kb/1136/tailnet).

## Services

The following services are included in this setup:

### Automation

- Home Assistant
- N8N

### Backups

- Lazywarden

### Dashboard

- Glance
- Homarr

### Media

- Immich

### Monitoring

- Beszel
- Dozzle
- Portainer
- Uptime Kuma
- Watchtower

### Others

- IT-Tools
- TsD Proxy

## Requirements

- `docker`
- `tailscale`

## Setup Instructions

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/PedroDSFerreira/homelab.git
   cd homelab/services
   ```

2. **Prepare Environment Variables**:

   ```sh
   ./compose-env.sh
   ```

3. **Manually update the necessary values in the** `.env` **files before proceeding**

4. **Start All Services**:

   ```sh
   ./compose-up.sh
   ```

5. **Stop All Services**:

   ```sh
   ./compose-down.sh
   ```

## Notes

- Each service runs in its own directory with an individual `docker-compose.yaml` file.
- Persistent data is stored in mounted volumes, where applicable.
- Some services may require additional configuration, such as modifying configuration files or setting up authentication, within their respective directories and applications.
- Logs can be viewed using Dozzle: `https://dozzle.your-tailnet-domain.ts.net`
