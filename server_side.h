#ifndef SERVER_SIDE_H
#define SERVER_SIDE_H

/* определяет типы данных */
#include <sys/types.h>
/* "Главный" по сокетам */
#include <sys/socket.h>
/* sockaddr_in struct, sin_family, sin_port, in_addr_t, in_port_t, ...*/
#include <netinet/in.h>

#include <stdio.h>
#include <memory.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <malloc.h>

class server_side
{
    public:
        server_side(){};
        /*virtual*/ ~server_side(){};
        int server_main();

    protected:

    private:
};

#endif // SERVER_SIDE_H
