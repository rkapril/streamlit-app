# app/Dockerfile

FROM python:3.12

WORKDIR /app

RUN apt-get update 

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["streamlit", "run", "01_simple_app.py"]