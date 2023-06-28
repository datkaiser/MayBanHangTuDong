#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "lobby.h"
#include "login.h"
#include "logintest.h"
#include "page2.h"
#include "newqguiapplication.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    NewQGuiApplication app(argc, argv);
    qmlRegisterType<Lobby>("MayBanHangTuDong.Lobby",1,0,"Lobby");
    qmlRegisterType<Login>("MayBanHangTuDong.Login",1,0,"Login");
    qmlRegisterType<Logintest>("MayBanHangTuDong.Logintest",1,0,"Logintest");
    qmlRegisterType<Page2>("MayBanHangTuDong.Page2",1,0,"Page2");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
