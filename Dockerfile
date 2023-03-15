FROM python:3.9

WORKDIR /home

ENV OPENAI_KEY=""
ENV BOT_TOKEN=""
ENV TELEGRAM_ACCESS_ID=""
# ENV TELEGRAM_ACCESS_ID2=''


ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install openai && pip install aiogram==2.25.1 && pip install VaderSentiment && pip install regex
COPY *.py ./

ENTRYPOINT ["python", "bot.py"]
