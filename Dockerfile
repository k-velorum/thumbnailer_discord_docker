FROM python:3.9.13-bullseye

RUN apt update && apt -y install tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apt -yV upgrade && \
    apt install -y poppler-utils poppler-data libgl1-mesa-dev libreoffice libreoffice-l10n-ja libreoffice-dmaths libreoffice-ogltrans libreoffice-writer2xhtml libreoffice-help-ja && \
    wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00301.zip && \
    unzip IPAexfont00301.zip && \
    mkdir -p /usr/share/fonts/ipa && \
    cp IPAexfont00301/*.ttf /usr/share/fonts/ipa && \
    fc-cache -fv && \
    pip install -U pip==23.0.1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["python", "main.py"]