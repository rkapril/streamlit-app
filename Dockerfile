# app/Dockerfile

FROM python:3.12

WORKDIR /app

RUN apt-get update 

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["streamlit", "run", "01_simple_app.py"]