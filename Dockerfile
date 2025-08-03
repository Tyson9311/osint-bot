# Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
# Agar repo me requirements.txt hai to ye chalega
RUN pip install --no-cache-dir --upgrade pip \
    && if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Start the bot (file name adjust karo agar alag hai)
CMD ["python", "bot.py"]
