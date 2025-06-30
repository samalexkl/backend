
FROM python:3.9-slim


WORKDIR /app

RUN pip install torch==2.4.1 torchvision torchaudio \
    --index-url https://download.pytorch.org/whl/cpu
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY backend.ipynb .
COPY Fk-Diffusion-Steering/ ./Fk-Diffusion-Steering/


CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "--inplace", "mi_notebook.ipynb"]
