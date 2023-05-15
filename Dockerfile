# Use a base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install dependencies
# RUN pip install --no-cache-dir -r E:/Office/PythonPrograms/WebScrapProject_01/requirements.txt
# RUN pip install --no-cache-dir --use-feature=fast-deps -r E:\Office\PythonPrograms\WebScrapProject_01\requirements.txt
RUN pip install --no-cache-dir --use-feature=fast-deps -r /app/requirements.txt

# Specify the command to run when the container starts
CMD ["python", "app.py"]
