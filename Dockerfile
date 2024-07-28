FROM python:3.12

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "01_simple_app.py", "--server.port=8501", "--server.address=0.0.0.0"]