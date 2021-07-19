FROM squidfunk/mkdocs-material:latest

COPY . /docs
WORKDIR /docs
RUN mkdocs build
CMD ["serve"]
