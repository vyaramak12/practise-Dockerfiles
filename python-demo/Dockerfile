FROM python
WORKDIR /myapp
COPY requirements.txt /myapp/
RUN pip install -r requirements.txt
COPY . . 
CMD ["python","app.py"]

