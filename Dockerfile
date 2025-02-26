# Use a Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire app to the container
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=microblog.py
ENV FLASK_ENV=development

# Expose the port Flask will run on
EXPOSE 5000

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]