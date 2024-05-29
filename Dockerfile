FROM python:3.11-slim-bookworm as base

COPY . .

RUN pip3 install -r requirements.txt

ARG HOST="0.0.0.0"
ARG PORT="9099"

ENTRYPOINT [ "./start.sh" ]
#ENTRYPOINT ["uvicorn", "--host", "${HOST}", "--port", ${PORT}, "--forwarded-allow-ips", "'*'", "--reload"] 
