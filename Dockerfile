FROM python:slim

RUN mkdir /project
WORKDIR /project
RUN pip install poetry
COPY pyproject.toml poetry.lock .
RUN poetry install
COPY . .
#RUN poetry run pytest
