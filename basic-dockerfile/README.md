
# Basic Dockerfile

A minimal Alpine-based Docker image that prints a greeting and exits. The image supports a build-time default (`ARG`) that is chained into an `ENV` so operators can also override the greeting at runtime via `-e` or `--env-file`.

## Getting Started

1. **Build the image**

```bash
docker build -t basic-greeter .
```

2. **Set a build-time default name**

```bash
docker build --build-arg DEFAULT_NAME=Captain -t basic-greeter:with-default .
```

3. **Run the image (uses baked default)**

```bash
docker run --rm basic-greeter
```

4. **Override the greeting at runtime**

```bash
docker run --rm -e NAME=Jean basic-greeter
```

5. **Use an env-file** (create a file named `.env` with `NAME=Jean`):

```bash
docker run --rm --env-file .env basic-greeter
```

## Files

- `Dockerfile`: [Dockerfile](Dockerfile#L1-L5) — uses `FROM alpine:latest`, `ARG DEFAULT_NAME`, `ENV NAME=$DEFAULT_NAME`, and a single `CMD` that echoes the greeting.

## How it works

- **Build-Time Baseline (`ARG`)**: lets image creators inject defaults during `docker build` (`--build-arg`).
- **Persistent Runtime Default (`ENV`)**: bakes the default into the image so the container has a safe fallback value.
- **External Injection**: operators can override `NAME` at runtime using `-e NAME=...` or `--env-file` without rebuilding.

This project is part of [roadmap.sh](https://roadmap.sh/projects/basic-dockerfile) DevOps projects.