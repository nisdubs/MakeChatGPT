# Start with a base image
FROM python:3.10-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application files
COPY . .

# Set the default command to start the app on port 8080
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
