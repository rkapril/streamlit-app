# app/Dockerfile

FROM python:3.12

WORKDIR /app

COPY requirements11.txt ./requirements11.txt

RUN pip install -U pip

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "01_simple_app.py", "-server.port=8080", "-server.address=0.0.0.0"]