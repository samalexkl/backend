
FROM python:3.9-slim


WORKDIR /app


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY backend.ipynb .
COPY Fk-Diffusion-Steering/ ./Fk-Diffusion-Steering/


CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "--inplace", "mi_notebook.ipynb"]
