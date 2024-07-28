FROM python:3.12

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

ENTRYPOINT ["streamlit", "run"]
CMD ["01_simple_app.py"]