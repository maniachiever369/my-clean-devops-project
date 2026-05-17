FROM python:3.11 as builder
WORKDIR /app
RUN pip install --user --no-cache-dir flask==3.1.0

FROM gcr.io/distroless/python3.11:nonroot
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY app.py .
ENV PYTHONPATH=/root/.local
EXPOSE 5000
CMD ["/root/.local/bin/python", "app.py"]
