FROM python:3.11-slim-bookworm as base

COPY ./pipelines/examples/rate_limit_filter_pipeline.py ./pipelines/rate_limit_filter_pipeline.py

COPY . .

RUN pip3 install -r requirements.txt

ARG HOST="0.0.0.0"
ARG PORT="9099"

ENTRYPOINT [ "./start.sh" ]
