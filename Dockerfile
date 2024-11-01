FROM ghost:2.37.2 as ghost

# FROM node:23.1 as node
FROM node:10.4.0 as node
# Copy manifest files
COPY --from=ghost /var/lib/ghost /var/lib/ghost
COPY ../ .


LABEL org.opencontainers.image.source="https://github.com/DefenderK/docker-test"
LABEL io.snyk.containers.image.dockerfile="/Dockerfile"
RUN ls
