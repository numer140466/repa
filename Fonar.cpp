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
    cout << "Fonar ON" << "\n";
}
void Fonar::OFF()
{
    cout << "Fonar OFF" << "\n";
}
void Fonar::ChangeColor(vector<int> in_color)
{
    color=in_color;
    for (int i=0; i<color.size(); i++)
    {
        cout << "Color"<<i<<"=" << color[i]<<"]n";
    }
}
void Fonar::main_fon(pack pack)
    {
        //pack=parser(st);
        if (pack.type==type1)
        {
        ON();
        }
        else if (pack.type==type2)
        {
        OFF();
        }
        else if (pack.type==type3)
        {
        ChangeColor(pack.value);
        }
    }
