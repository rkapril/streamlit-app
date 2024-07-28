# app/Dockerfile

FROM python:3.12

WORKDIR /app

RUN pip install pipenv

COPY pipfile ./pipfile

RUN pipenv install

COPY . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "01_simple_app.py", "-server.port=8080", "-server.address=0.0.0.0"]