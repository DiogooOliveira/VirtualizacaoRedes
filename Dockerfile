FROM ubuntu:latest

WORKDIR /tp2_g8/mininet/

RUN apt-get update


RUN apt-get update && apt-get install -y mininet \
tcpdump -v $PWD/tcpdump:/tcpdump 


# corre a instalação do tcpdump, com criação de pasta na directoria que o utiizador se encontra para recolha da leitura da captura dos pacotes

# corre a instalação do wireshark inicializando-o, com criação de pasta na directoria para recolha da leitura da captura dos pacotes
RUN apt-get update -y
RUN apt-get install wget bzip2 -y # dependências para instalar o wireshark
RUN apt-get install gcc python -y
RUN apt-get install perl pkg-config libglib2.0-dev libpcap-dev gtk2.0 -y
#Download ultima versão do wireshark

RUN wget https://1.eu.dl.wireshark.org/src/wireshark-2.2.1.tar.bz2
RUN tar -jxf wireshark-2.2.1.tar.bz2
RUN /wireshark-2.2.1/configure make install



EXPOSE 6653 6633
# VirtualizacaoPratica
