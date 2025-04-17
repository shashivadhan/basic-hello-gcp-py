# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set port
ENV PORT=8080

# Command to run app with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
