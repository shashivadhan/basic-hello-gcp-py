# Use the official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set environment variable for Flask
ENV PORT 8080

# Run the application
CMD ["python", "main.py"]
