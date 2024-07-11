# Might have to become python:3.12.2-slim-bullseye
FROM python:3.12 

# Shows some sort of logs
ENV PYTHONBUFFERED=1

# Might not be needed
ENV PORT 8080

WORKDIR /code

# Copy in the source code
COPY . /code

# Install the application dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run productionserver (0.0.0.0 = machine itself)
CMD gunicorn life_overview.wsgi:application --bind 0.0.0.0:"${PORT}"

# Expose port to the internet
EXPOSE ${PORT}