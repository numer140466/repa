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

protected:
    /* Define method of base class
     * */
    void paintEvent(QPaintEvent *event);

public slots:
    void MyEventHandler();

signals:
    void MySignal(QString);
};

#endif // WIDGET_H
