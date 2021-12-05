// su -
//   g++ -g hellopcap.cpp  -o hellopcap -lpcap && sudo  chmod u+s ./hellopcap && ./hellopcap

#include <iostream>
#include <stdio.h>
#include <arpa/inet.h>

#include <pcap/pcap.h>
#include <string.h>
#include <cstdlib>
#include <unistd.h>
#include <bitset>

std::string ipv4_str(bpf_u_int32 val)
{
    auto bval = (std::bitset<32>)val;
    auto mask = (std::bitset<32>)255;
    std::string res =
        std::to_string(((bval >> 0) & mask).to_ulong()) + "." + std::to_string(((bval >> 8) & mask).to_ulong()) + "." + std::to_string(((bval >> 16) & mask).to_ulong()) + "." + std::to_string(((bval >> 24) & mask).to_ulong());

    return res;
}
int main1(int argc, char *argv[])
{

    char errbuf[PCAP_ERRBUF_SIZE];
    char *dev;
    bpf_u_int32 netid;
    bpf_u_int32 mask;

    dev = pcap_lookupdev(errbuf);

    printf("%s\n", dev);

    if (pcap_lookupnet(dev, &netid, &mask, errbuf) == -1)
    {
        printf("%s\n", errbuf);
        exit(1);
    }
    std::cout << ipv4_str(netid) << "  " << ipv4_str(mask) << std::endl;

    return 0;
}

void pcap_callback(u_char *arg, const struct pcap_pkthdr *header, const u_char *content);

int main(int argc, const char *argv[])
{
    char errbuf[PCAP_ERRBUF_SIZE];
    pcap_t *handle = NULL;

    //open interface
    handle = pcap_open_live("wlp2s0", 65535, 1, 1, errbuf);
    if (!handle)
    {
        fprintf(stderr, "pcap_open_live: %s\n", errbuf);
        exit(1);
    } //end if

    //start capture loop
    if (0 != pcap_loop(handle, 10, pcap_callback, NULL))
    {
        fprintf(stderr, "pcap_loop: %s\n", pcap_geterr(handle));
    } //end if

    //free
    pcap_close(handle);

    return 0;
}

void pcap_callback(u_char *arg, const struct pcap_pkthdr *header, const u_char *content)
{
    static int d = 0;
    printf("%d: captured\n", ++d);
} //end pcap_callback