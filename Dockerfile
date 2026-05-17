
FROM python:3.9-slim
WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir flask  # Adding flask assuming app.py is a standard web service
EXPOSE 5000
CMD ["python", "app.py"]

