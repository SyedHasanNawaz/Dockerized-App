FROM python:3.12
WORKDIR /app
COPY p.py .
CMD ["python3","p.py"]
