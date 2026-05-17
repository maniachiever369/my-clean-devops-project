# Stage 1: Build environment
FROM python:3.11-slim AS builder
WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir flask==3.0.3

# Stage 2: Verified Safe production environment
FROM gcr.io/distroless/python3-debian12:nonroot
WORKDIR /app
COPY --from=builder /app /app
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
ENV PYTHONPATH=/usr/local/lib/python3.11/site-packages
EXPOSE 5000
CMD ["app.py"]

