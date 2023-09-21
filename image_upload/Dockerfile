FROM python:3.12.0rc3-alpine3.18
WORKDIR /app
COPY requirements.txt .
RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add postgresql-dev
RUN apk --no-cache add netcat-openbsd
RUN apk --no-cache add postgresql-client
RUN pip install -r requirements.txt
COPY . .
CMD ["./docker_entrypoint.sh", "python", "manage.py", "runserver", "0.0.0.0:8000"]
