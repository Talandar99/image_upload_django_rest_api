FROM python
WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y netcat-openbsd
RUN pip install -r requirements.txt
COPY . .
CMD ["./docker_entrypoint.sh", "python", "manage.py", "runserver", "0.0.0.0:8000"]
