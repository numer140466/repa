#include "widget.h"
#include <QApplication>
#include "server_side.h"
#include "client_side.h"
#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char *argv[])
{

//server_side sv;
    client_side cl;
//sv.server_main();
int test=0;
//int test=sv.server_main();


    QApplication a(argc, argv);
    Widget w;
    w.show();

    return a.exec();
}
