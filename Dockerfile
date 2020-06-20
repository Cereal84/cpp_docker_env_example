FROM ubuntu:18.04 as builder

RUN apt-get update                          && \
    apt-get install -y                         \
    g++ build-essential

COPY . /

RUN make


FROM ubuntu:18.04 as run_time

COPY --from=builder /hello_world /

CMD ./hello_world

