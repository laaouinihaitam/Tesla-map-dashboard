#include "system.h"

System::System(QObject *parent)
    : QObject{parent}
    , m_carLocked(true)
    , m_outdoorTemp(64)
    ,m_userName("Monty")
{

}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setCarLocked(bool carLocked)
{
    if (m_carLocked == carLocked)
        return;
    m_carLocked = carLocked;
    emit carLockedChanged(m_carLocked);
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

void System::setOutdoorTemp(int outdoorTemp)
{
    if (m_outdoorTemp == outdoorTemp)
        return;
    m_outdoorTemp = outdoorTemp;
    emit outdoorTempChanged(m_outdoorTemp);
}

QString System::userName() const
{
    return m_userName;
}

void System::setuserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}
