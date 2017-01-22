import socket
import sys

UDP_IP = sys.argv[1]
UDP_PORT = int(sys.argv[2])
FIFO = sys.argv[3]

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

while True:
    data, addr = sock.recvfrom(1024)
    fifo = open(FIFO, "w")
    fifo.write(data)
    fifo.close()