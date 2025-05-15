# —— Build stage ——
FROM golang:1.23.2 AS builder
WORKDIR /app
COPY . .
RUN go build -o wwfc

# —— Runtime stage ——
FROM debian:bookworm-slim
WORKDIR /app
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=builder /app/wwfc /app/
COPY schema.sql .
COPY config.xml .
COPY game_list.tsv .
# Expect config.xml to be mounted by user
EXPOSE 53/tcp 80/tcp 443/tcp 27900/tcp 27901/tcp 28910/tcp 29900/tcp 29901/tcp 29920/tcp 29998/tcp 29999/tcp
EXPOSE 27900-29999/udp
CMD ["./wwfc"]