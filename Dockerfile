FROM thoughtmachine/please_ubuntu

WORKDIR /workspace

RUN  git clone https://github.com/thought-machine/please.git

WORKDIR /workspace/please

RUN ./pleasew install 

RUN ln -s ~/.please/please /usr/local/bin/plz

COPY bin .

ENTRYPOINT ["plz"]

CMD ["run", ":PlzApp"]