#include "carstate.h"

CarState::CarState(QObject *parent) :
        QObject(parent)
{

}

QString CarState::carSpeed()
{
    return "50";
    //return m_carSpeed;
}

void CarState::setCarSpeed(const QString &carSpeed)
{
    if (carSpeed == m_carSpeed)
        return;

    m_carSpeed = carSpeed;
    emit carSpeedChanged();
}
