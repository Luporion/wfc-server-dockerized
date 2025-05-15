# WiiLink WFC Server (Docker Edition)

A modern, open-source server replacement for Nintendo Wi-Fi Connection, with easy Docker deployment.

## Getting Started

### Prerequisites
- Docker and Docker Compose

### Quickstart

```sh
git clone https://github.com/yourusername/wfc-server
cd wfc-server
docker compose up --build
```
You need to generate a payload for the server and a gecko code for the dolphin instance with the wfc-patcher.


### Configuration

- Edit `config.xml` for server options.
- See comments inside the file for descriptions.

### Exposing Ports

Make sure to expose these UDP ports: `27900-29999` (or as needed for your use case).

### Troubleshooting

- **Public IP mismatch:** still trying to fix this myself
- **Database connection issues:** Ensure the `db` service is running.

## Contributing

Pull requests welcome!
