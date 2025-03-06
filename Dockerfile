# Use official Python image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy app code
COPY app.py app.py

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
