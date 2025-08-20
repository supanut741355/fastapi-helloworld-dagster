# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app/dagster

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN \
  pip install --no-cache-dir -r requirements.txt dagster dagster-k8s


# Copy the application
COPY main.py .

# Expose port 8000
EXPOSE 8080

# Run the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
