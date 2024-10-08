# DockerAutoPrune
A minimal image to automatically prune Docker.

When working with containers a lot, images tend to pile up. This minimal container cleans these images, by default once a day.

## Options

You can configure the tool via environment variables:

| Variable | Type | Description |
| ------------- | ------------- | ------------- |
| INTERVAL_S  | optional | Interval between cleaning runs (default: 24h) |
| REMOVE_ALL  | optional | Removes all unused images, not just dangling (default: false) |
| REMOVE_VOLUMES | optional | Prune anonymous volumes (default: false)|
