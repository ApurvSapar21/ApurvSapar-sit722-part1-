# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy requirements file and install dependencies
COPY book-catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY book-catalog/ .

# Expose port 8000 for the application
EXPOSE 8000

# Set environment variable for the database URL
# ENV DATABASE_URL="postgresql://sit722_part2_db_user:quBAHt39TXmOZemleYmXGztpVl93PFI3@dpg-crcq9iij1k6c73crekv0-a.oregon-postgres.render.com/sit722_part2_db"

# Command to run the application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

