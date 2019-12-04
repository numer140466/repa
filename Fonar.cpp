#include <stdio.h>
#include "Fonar.h"
#include "const.h"
#include <iostream>
#include <fstream>

/*Fonar::Fonar()
{
    printf("Fonar /n");//ctor
}*/

/*Fonar::~Fonar()
{
    printf("Fonar end/n");//dtor
}*/

void Fonar::ON()
{
    condition=true;
    cout << "Fonar ON" << "\n";
}
void Fonar::OFF()
{
    condition= false;
    cout << "Fonar OFF" << "\n";
}
void Fonar::ChangeColor(vector<int> in_color)
{
    color=in_color;
    for (int i=0; i<color.size(); i++)
    {
        cout << "Color"<<i<<"=" << color[i]<<"\n";
    }
}
void Fonar::main_fon(pack pack)
    {
        cout << "TESTFONAR" <<"\n";
        //pack=parser(st);
        if (condition==false)
        {
        cout << "var true"<<"\n";

            if (pack.type==type1)
            {
            cout << "var type1"<<"\n";
            ON();
            }
            else cout <<pack.type<<"  "<< type1<<"\n";
        }
        else if (pack.type==type2)
        {
        cout << "var type2"<<"\n";
            OFF();
        }
        else if (pack.type==type3)
        {

            ChangeColor(pack.value);
        }
    }
