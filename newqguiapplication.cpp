#include "newqguiapplication.h"
#include <QDebug>

bool NewQGuiApplication::notify(QObject *o, QEvent *e)
{
    qDebug()<<"From "<<o->objectName()<<":"<<e->type();
    return QGuiApplication::notify(o,e);
}
