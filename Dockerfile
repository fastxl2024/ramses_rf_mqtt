FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir ramses_rf paho-mqtt

COPY ramses_rf.yaml /app/ramses_rf.yaml

ENTRYPOINT ["python", "-m", "ramses_rf", "--config", "/app/ramses_rf.yaml"]
