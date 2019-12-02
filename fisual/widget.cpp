#include "widget.h"
#include "ui_widget.h"


void Widget::MyEventHandler()
{
   // ui->MyLineEdit2->setText(ui->MyLineEdit1->text());
    //emit MySignal(ui->MyLineEdit1->text());
    redCircle=1;
    //emit MySignal(ui->MyPushButton1->isChecked());
}
void Widget::greenCircle()
{
    redCircle=2;
}
void Widget::repaintCircle()
{
    redCircle=3;
}

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    //setLayout(ui->verticalLayout);
    //ui->MyLabel->setText("My first programm");
    QObject::connect(ui->MyPushButton1, SIGNAL(clicked()), this, SLOT(MyEventHandler()));
    QObject::connect(ui->greenButton, SIGNAL(clicked()), this, SLOT(greenCircle()));
    QObject::connect(ui->repaintButton, SIGNAL(clicked()), this, SLOT(repaintCircle()));
    //QObject::connect(this, SIGNAL(MySignal(QString)), ui->MyLineEdit2, SLOT(setText(QString)));
    //QObject::connect(this, SIGNAL(MySignal(QString)), ui->MyLabel, SLOT(setText(QString)));
    ui->MyPushButton1->setEnabled(true);
    ui->greenButton->setEnabled(true);
    ui->repaintButton->setEnabled(true);
}

void Counter::setValue(int value)
{
   if (value != m_value) {
     m_value = value;
     emit valueChanged(value);
   }
}


void Widget::paintEvent(QPaintEvent *event)
{
    Q_UNUSED(event);
    QPainter painter(this); // Create object of QPainter
    // Set Brush
    painter.setPen(QPen(Qt::black, 1, Qt::SolidLine, Qt::FlatCap));

    // Check radio buttins

    if(redCircle==1){
        // Draw red circle
        painter.setBrush(QBrush(Qt::red, Qt::SolidPattern));
        painter.drawEllipse(100, 50, 150, 150);
    }
    else if(redCircle==2){
        // Draw green circle
        painter.setBrush(QBrush(Qt::green, Qt::SolidPattern));
        painter.drawEllipse(100, 50, 150, 150);
    }    
    else if (redCircle==3)
    {
            //ui->MyPushButton1->setEnabled(true);
            redCircle==0;
            update();
            //ui->MyPushButton1->setEnabled(false);
    }
    this->update();
}

Widget::~Widget()
{
    delete ui;
}

/////
/*setUpdatesEnable(true);
repaint();
setUpdatesEnable(false);
*/
