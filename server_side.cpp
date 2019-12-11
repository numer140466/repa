
#include "server_side.h"

int server_side::server_main()
{
    /*создаём сокет*/
      int s = socket(AF_INET, SOCK_STREAM, 0);
      if(s < 0)
      {
              perror("Error calling socket");
              return 0;
      }

      /*определяем прослушиваемый порт и адрес*/
      struct sockaddr_in addr;
      addr.sin_family = AF_INET;
      addr.sin_port = htons(18666);
      addr.sin_addr.s_addr = htonl(INADDR_ANY);
      addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);//TODO
      if( bind(s, (struct sockaddr *)&addr, sizeof(addr)) < 0 )
      {
              perror("Error calling bind");
              return 1;
      }

      /*помечаем сокет, как пассивный - он будет слушать порт*/
      if( listen(s, 5) )
      {
              perror("Error calling listen");
              return 2;
      }

      /*начинаем слушать, для соединения создаём другой сокет, в котором можем общаться.*/
      int s1 = accept(s, NULL, NULL);
      if( s1 < 0 )
      {
              perror("Error calling accept");
              return 3;
      }

      /*читаем данные из сокета*/
      char buffer[31];
      //int counter = 0;
      for(;;)
      {
              memset(buffer, 0, sizeof(char)*31);
              /*следует помнить, что данные поступают неравномерно*/
              int rc = recv(s1, buffer, 30, 0);
              if( rc < 0 )
              {
                      /*чтение может быть прервано системным вызовом, это нормально*/
                      if( errno == EINTR )
                              continue;
                      perror("Can't receive data.");
                      return 4;
              }
              if( rc == 0 )
                      break;
              printf("%s\n", buffer);
      }
      //char response[] = "Hi, dear!";
      int lSize=1+3+3+3;
      size_t sizeofchar=sizeof(char) * lSize;
      char * response = (char*)malloc(sizeofchar);
      if( sendto( s1, response, sizeof(response), 0, (struct sockaddr *)&addr, sizeof(addr) ) < 0 )
              perror("Error sending response");
      printf("Response send\n");
      return 98;
}

/*server_side::~server_side()
{
    //dtor
}*/
