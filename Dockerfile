FROM python:3.12-slim

WORKDIR /app

COPY *.py /app/
COPY index.html /app/
COPY requirements.txt /app/

RUN pip install -r requirements.txt

CMD ["python", "/app/gen.py"]
