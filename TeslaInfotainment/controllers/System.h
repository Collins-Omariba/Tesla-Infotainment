#pragma once

#include <QObject>

class System  : public QObject
{
	Q_OBJECT
	Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged)
    Q_PROPERTY(int outDoorTemp READ outDoorTemp WRITE setOutDoorTemp NOTIFY outDoorTempChanged)
    Q_PROPERTY(QString userName READ userName WRITE setuserName NOTIFY userNameChanged)

public:
	System(QObject *parent = nullptr);
	~System();
    bool carLocked() const;
    void setCarLocked(bool newCarLocked);
    int outDoorTemp() const;
    void setOutDoorTemp(int newOutDoorTemp);

    QString userName() const;
    void setuserName(const QString &newUserName);

signals:
    void carLockedChanged();
    void outDoorTempChanged();

    void userNameChanged();

private:
    bool m_carLocked;
    int m_outDoorTemp;
    QString m_userName;
};

