FROM ubuntu:latest

WORKDIR /tp2_g8/mininet/

RUN apt-get update


RUN apt-get update && apt-get install -y mininet \
tcpdump -v $PWD/tcpdump:/tcpdump \
wireshark -v $PWD/wireshark:/wireshark


# corre a instalação do tcpdump, com criação de pasta na directoria que o utiizador se encontra para recolha da leitura da captura dos pacotes

# corre a instalação do wireshark inicializando-o, com criação de pasta na directoria para recolha da leitura da captura dos pacotes


EXPOSE 6653 6633

