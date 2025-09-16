# ✅ Naya base image (buster → bookworm)
FROM python:3.10-slim-bookworm

WORKDIR /Jisshu-filter-bot
RUN chmod 777 /Jisshu-filter-bot

# ✅ git install fix
RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x start.sh

CMD ["bash", "start.sh"]
