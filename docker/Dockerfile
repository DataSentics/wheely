FROM databricksruntime/standard

COPY build_wheelhouse.sh /opt/build_wheelhouse.sh

WORKDIR /output

RUN apt-get update && apt-get install -y zip gcc

CMD ["/opt/build_wheelhouse.sh"]
