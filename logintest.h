#ifndef LOGINTEST_H
#define LOGINTEST_H
#include <QObject>

class Logintest: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
 public:
    explicit Logintest(QObject *parent = nullptr):QObject(parent){

    }
    Q_INVOKABLE void login(QString const &password)
    {
        if(password == "000"){
            emit logintestSucess();
        }else{
            setStatus("Password is not correct");
            emit logintestFail();
        }
    }

    QString status()const{
        return mStatus;
    }
    void setStatus(QString const &status){
        if(mStatus == status){
            return;
        }
        mStatus = status;
        emit statusChanged();

    }

signals:
    void logintestSucess();
    void logintestFail();
    void statusChanged();
private:
    QString mStatus;
};
#endif // LOGINTEST_H
