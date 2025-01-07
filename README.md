# Team Friends Boilerplates

This repository contains a collection of boilerplate configurations, Docker Compose files, and system configurations used by Team Friends.

## Repository Structure

- `docker-compose/` - Collection of Docker Compose configurations for various services
  - `nginx-proxy-manager/` - Nginx Proxy Manager setup
  - `redis/` - Redis database setup
  - `freshrss/` - FreshRSS feed reader setup
  - *and more...*
- `dotfiles/` - System configuration files and dotfiles
- `how-to/` - Documentation and guides
- `renovate.json` - Renovate Bot configuration for automated dependency updates

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/your-org/team-friends-boilerplates.git
   cd team-friends-boilerplates
   ```

2. Navigate to the desired service directory in `docker-compose/`
3. Follow the specific service's README or compose file instructions

## Docker Compose Services

Each service in the `docker-compose/` directory contains its own `compose.yaml` file with the necessary configuration to run the service.

To start a service:

```bash
cd docker-compose/<service-name>
docker compose up -d
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Maintenance

This repository uses Renovate Bot to keep dependencies up to date. Configuration can be found in `renovate.json`.
