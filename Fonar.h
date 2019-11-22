#ifndef FONAR_H
#define FONAR_H
#include <stdlib.h>

#include <array>
#include <string>
#include <vector>

using namespace std;

struct pack
{
char type;
vector<int> value;
};

class Fonar
{
    public:
        Fonar(){};
        /*virtual*/ ~Fonar(){};
    vector<int> get_color(){return color;};
    vector<int> set_color(vector<int> in_color){color=in_color;};
    //void main_fon(string);
    void main_fon(pack pack);
    protected:

    private:
    vector<int> color;
    /*package parser(string st)
    {
    package pack;
    return pack;
    }*/
    void ON();
    void OFF();
    void ChangeColor(vector<int> in_color);



};

#endif // FONAR_H
