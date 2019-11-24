#ifndef CARSTATE_H
#define CARSTATE_H

#include <QObject>
#include <QString>

class CarState : public QObject
{
    Q_OBJECT
       Q_PROPERTY(QString carSpeed READ carSpeed WRITE setCarSpeed NOTIFY carSpeedChanged)
public:
    explicit CarState(QObject *parent = nullptr);

        QString carSpeed();
        void setCarSpeed(const QString &carSpeed);
signals:
    void carSpeedChanged();

private:
    QString m_carSpeed;
};

#endif // CARSTATE_H
