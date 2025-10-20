# Use a smaller Python base image
FROM python:3.11-alpine

# Install system dependencies, Python and clean in a single layer
RUN apk add --no-cache \
    postgresql-dev \
    gcc \
    musl-dev \
    linux-headers && \
    pip install --upgrade --no-cache-dir pip

# Set working directory
WORKDIR /app

# Copy and install Python dependencies in a single layer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt gunicorn && \
    find /usr/local -name "*.pyc" -delete && \
    find /usr/local -name "__pycache__" -delete

# Clean build dependencies that are no longer needed
RUN apk del gcc musl-dev linux-headers

# Copy source code
COPY . .

# Explicitly copy and make script executable
COPY init_superuser.sh /app/init_superuser.sh
RUN chmod +x /app/init_superuser.sh

# Expose port
EXPOSE 8000

# Startup command
CMD ["/app/init_superuser.sh"]
