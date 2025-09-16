# Inception

A containerized WordPress deployment built from scratch using Docker Compose with NGINX, PHP-FPM, and MariaDB.

## Quick Start

1. **Setup environment**

   ```bash
   cp srcs/.env.example srcs/.env
   # Edit srcs/.env with your configuration
   ```

2. **Run**

   ```bash
   make
   ```

3. **Access**
   - HTTPS: `https://localhost`

## Commands

- `make` - Start services
- `make dev` - Development mode
- `make clean` - Stop services
- `make fclean` - Stop and remove everything
