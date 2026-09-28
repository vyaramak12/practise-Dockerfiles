FROM python:3.12.14-alpine3.24
WORKDIR /mycode
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . . 
RUN adduser -D vinay && chown -R vinay:vinay .
USER vinay
EXPOSE 8000
ENTRYPOINT ["python"]
CMD ["app.py"]
