# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (if it exists) to the working directory
COPY . /app
# Install dependencies

RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 5000

# Set the default command to run your application
CMD ["python", "app.py"]
