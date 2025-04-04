# Use the official Python image
FROM python:3.12

# Set working directory in the container
WORKDIR /app

# Copy all files from current directory to the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

