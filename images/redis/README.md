# Redis Docker Image

A custom Redis Docker image based on the DoD Iron Bank Redis 7.4.2 image, configured for local development use.

## Image Details

- **Base Image**: `registry1.dso.mil/ironbank/opensource/redis/redis7:7.4.2`
- **Redis Version**: 7.4.2
- **Maintainer**: Fred Lackey
- **Tags**: `fredlackey/redis:7`, `fredlackey/redis:latest`, `fredlackey/redis`

## Building the Image

To build the Redis image locally:

```bash
./build.sh
```

This will create three tagged versions of the image:
- `fredlackey/redis:7`
- `fredlackey/redis:latest` 
- `fredlackey/redis`

## Usage

### Using Docker Compose (Recommended)

The easiest way to run Redis for development is using the provided `docker-compose.yaml`:

```bash
# Start Redis in the background
docker-compose up -d

# View logs
docker-compose logs -f redis

# Stop Redis
docker-compose down

# Stop and remove volumes (deletes data)
docker-compose down -v
```

### Using Docker Run

Alternatively, you can run Redis directly with Docker:

```bash
# Basic Redis instance
docker run -d --name redis-dev -p 6379:6379 fredlackey/redis:latest

# With data persistence
docker run -d --name redis-dev -p 6379:6379 -v redis_data:/data fredlackey/redis:latest redis-server --appendonly yes
```

## Configuration

### Docker Compose Features

- **Port**: Exposed on `6379` (standard Redis port)
- **Persistence**: Data is persisted using AOF (Append Only File)
- **Volume**: Named volume `redis_data` for data persistence
- **Health Check**: Built-in health monitoring
- **Network**: Dedicated bridge network for service isolation
- **No Authentication**: Configured without password for development ease

### Connecting to Redis

Once running, you can connect to Redis at:
- **Host**: `localhost`
- **Port**: `6379`
- **Password**: None (development setup)

### Testing the Connection

```bash
# Using redis-cli from another container
docker exec -it redis-dev redis-cli ping

# Should return: PONG
```

## Development Notes

- This image is configured for **development use only**
- No authentication is configured by default
- Data persists between container restarts via Docker volumes
- Health checks ensure the service is running properly
- Based on DoD Iron Bank image for enhanced security baseline

## Troubleshooting

### Container won't start
- Ensure port 6379 is not already in use
- Check Docker logs: `docker-compose logs redis`

### Data not persisting
- Verify the volume is mounted: `docker volume ls`
- Check if AOF is enabled in Redis config

### Connection refused
- Confirm the container is running: `docker-compose ps`
- Verify port mapping: `docker port redis-dev` 