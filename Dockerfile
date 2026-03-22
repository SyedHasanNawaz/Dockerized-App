# Stage 1: Build
FROM python:3.12-slim AS initializer
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY p.py .

# Stage 2: Final image
FROM python:3.12-slim
WORKDIR /app
COPY --from=initializer /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
COPY p.py .

CMD ["python3", "p.py"]
