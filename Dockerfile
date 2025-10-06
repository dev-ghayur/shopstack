# Dockerfile
FROM python:3.12-slim

# set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


# copy project
COPY . .

# expose port
EXPOSE 8000

# run server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
