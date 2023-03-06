FROM python:3.9

COPY . /app
WORKDIR /app

RUN pip install -U pip
RUN pip install -r requirements.txt

RUN python train_model.py

EXPOSE 8501

ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]