FROM python:3.12-alpine
WORKDIR /app
ADD . . 
RUN apk add -u --no-cache gcc musl-dev && pip install flask rpi.gpio
ENTRYPOINT [ "python3", "siriweb.py"]