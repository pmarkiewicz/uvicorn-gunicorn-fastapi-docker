FROM pmarkiewicz/uvicorn-gunicorn:python3.10

LABEL maintainer="piotr"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
