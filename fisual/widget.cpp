#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    setLayout(ui->verticalLayout);
    ui->MyLabel->setText("My first programm");
    QObject::connect(ui->MyPushButton1, SIGNAL(clicked()), this, SLOT(MyEventHandler()));
    QObject::connect(this, SIGNAL(MySignal(QString)), ui->MyLineEdit2, SLOT(setText(QString)));
    QObject::connect(this, SIGNAL(MySignal(QString)), ui->MyLabel, SLOT(setText(QString)));
    ui->MyPushButton1->setEnabled(true);

}


void Widget::paintEvent(QPaintEvent *event)
{
    Q_UNUSED(event);
    QPainter painter(this); // Create object of QPainter
    // Set Brush
    painter.setPen(QPen(Qt::black, 1, Qt::SolidLine, Qt::FlatCap));

    // Check radio buttins

    if(ui->MyPushButton1->isChecked()){
        // Draw red circle
        painter.setBrush(QBrush(Qt::red, Qt::SolidPattern));
        painter.drawEllipse(100, 50, 150, 150);
    }
    this->update();
}

Widget::~Widget()
{
    delete ui;
}

void Widget::MyEventHandler()
{
   // ui->MyLineEdit2->setText(ui->MyLineEdit1->text());
    emit MySignal(ui->MyLineEdit1->text());
}
