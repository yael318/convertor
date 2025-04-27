# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script into the container
COPY convert_image_to_pdf.py .

# Set the entry point to the Python script
CMD ["python", "convert_image_to_pdf.py"]

