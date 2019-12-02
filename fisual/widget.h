#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QPainter>

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();

private:
    Ui::Widget *ui;
    int redCircle=0;

protected:
    /* Define method of base class
     * */
    void paintEvent(QPaintEvent *event);

public slots:
    void MyEventHandler();
    void greenCircle();
    void repaintCircle();

signals:
    //void MySignal(QString);
    void MySignal(int);
};

class Counter : public QObject
{
   Q_OBJECT
public:
   Counter() { m_value = 0; }
   int value() const { return m_value; }
public slots:
   void setValue(int value);
signals:
   void valueChanged(int newValue);
private:
   int m_value;
};



#endif // WIDGET_H
