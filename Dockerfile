FROM python:3.12

# Expose port you want your app on
EXPOSE 8080

# Upgrade pip and install requirements
COPY requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

# Copy app code and set working directory
COPY . .
WORKDIR /app

# Run
ENTRYPOINT ["streamlit", "run"]
CMD ["01_simple_app.py"]