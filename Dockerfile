FROM python:3.12
WORKDIR /code

# Install the application dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy in the source code
COPY . code
EXPOSE 8000

# Run by automateduser
# USER automateduser

# Run productionserver
ENTRYPOINT ["python", "mysite/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]