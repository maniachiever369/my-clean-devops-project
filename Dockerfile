FROM python:3.9-slim
WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir flask==3.0.3
EXPOSE 5000
CMD ["python", "app.py"]
