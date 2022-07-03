FROM squidfunk/mkdocs-material:8.2.15
RUN pip install mkdocs-video==1.3.0
RUN git config --global --add safe.directory /docs