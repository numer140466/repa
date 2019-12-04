#include <stdlib.h>
#include <stdio.h>
#include "Fonar.h"
#include <iostream>
#include <fstream>
#include <fcntl.h>
#include <errno.h>
#include <sys/types.h>
#include <unistd.h>
#include <memory.h>
#include <string>

#include <math.h>
#include "client_side.h"

const short len1=1;
const short len2=2;

void reader()
{
    printf("reader");
}
void vizualizator()
{
    printf("reader");
}
void client_main()
{
    reader();
    //Fonar fn;
    vizualizator();
    printf("client_main");
}

void write_string(string s,string wr)
{
    std::ofstream st;
    st.open(s,std::ios::app);
    char sym;
    int a=wr.length();
    for (int i=0; i<a; i++)
    {
        sym=wr[i];
        st << sym;
    }
    st.close();
}
///////начинать чтение не с первого символа
char* read_n_char(char* s,int n, int start_slide)
{
    //cout  <<"n="<< n << "\n";
    char* rezult=(char*)malloc(n);
    auto fn=fopen(s+start_slide,O_RDONLY);
    //cout <<"n="<< n << "\n";
    for (int i=0; i<n; i++)
    {
    //cout  <<"i="<< i << "\n";
    auto len=fread(rezult,sizeof(char),25,fn);//(fn,rezult+i,1);
    //cout  <<"rez="<< *(rezult+i) << "\n";
    }
    return(rezult);
}

char * new_read(char* s)
{
  FILE * ptrFile = fopen( s , "rb" );

  if (ptrFile == NULL)
  {
      fputs("Ошибка файла", stderr);
      exit(1);
  }

  // определяем размер файла
  fseek(ptrFile , 0 , SEEK_END);                          // устанавливаем позицию в конец файла
  long lSize = ftell(ptrFile);                            // получаем размер в байтах
  rewind (ptrFile);                                       // устанавливаем указатель в конец файла

  char * buffer = (char*) malloc(sizeof(char) * lSize); // выделить память для хранения содержимого файла
  if (buffer == NULL)
  {
      fputs("Ошибка памяти", stderr);
      exit(2);
  }
  size_t result = fread(buffer, 1, lSize, ptrFile);       // считываем файл в буфер
  if (result != lSize)
  {
      fputs("Ошибка чтения", stderr);
      exit (3);
  }

  puts(buffer);
  fclose (ptrFile);
  return buffer;
}

int find_isum(int& j, int lensum, char* buffer)
{
    int isum=0;
    if ( strlen(buffer)<lensum)
    {
      fputs("Выход для границы массива", stderr);
      exit (3);
    }
    while(j<lensum)
    {
        int i0 = buffer[j] - '0';
        j++;
        isum=isum*10+i0;
        //cout <<isum <<"\n";
    }
    return isum;
}

void read_tlv(pack& pk, char* s0)
{
    char* buffer2=new_read(s0);
    //read_tlv(pk,s0);
    int j=0;
    pk.type=buffer2[j];
    j++;
    int isum=1;
    isum=find_isum(j, len1+len2,buffer2);
    if (buffer2[0]==0x20)//если COLOR
    {
    for (int k=0 ;k< isum; k++)
        {
            int prom=find_isum(j, len1+len2+3*(k+1),buffer2);
            pk.value.push_back(prom);
            //cout <<"k="<<k<< "pk.value[k]="<<pk.value[k] <<"\n";
        }
    }
}


int main()
{
client_side cl;
int test=cl.client_main();
cout << "test=" <<test << "\n";

int buffer_size=3;
char* buffer = (char*)malloc(buffer_size);

buffer_size = 3;
int len;
int fn;

string f="1.txt";
char value=0x20;
string wr;
wr=value;
write_string(f,wr);
 wr="03";
write_string(f,wr);
 wr="000";
write_string(f,wr);
 wr="111";
write_string(f,wr);
 wr="222";
write_string(f,wr);

char* s0="1.txt";

char* buffer2=new_read(s0);
pack pk;

read_tlv(pk,s0);

Fonar fon;
fon.main_fon(pk);


//client_main();
//printf("Test");

    return 0;
}
