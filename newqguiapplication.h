#ifndef NEWQGUIAPPLICATION_H
#define NEWQGUIAPPLICATION_H

#include <QGuiApplication>

class NewQGuiApplication : public QGuiApplication
{
public:
    NewQGuiApplication(int &arg, char** argv) : QGuiApplication(arg,argv){

    };

    // QCoreApplication interface
public:
    bool notify(QObject *, QEvent *) Q_DECL_OVERRIDE;
};

#endif // NEWQGUIAPPLICATION_H
