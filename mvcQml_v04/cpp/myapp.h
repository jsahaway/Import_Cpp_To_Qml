#ifndef MYAPP_H
#define MYAPP_H

#include <QObject>
#include <QVariant>
#include <QQmlContext>

#include "mybind.h"
#include "sqluser.h"


class MyApp : public QObject
{
    Q_OBJECT
public:
    explicit MyApp(QObject *parent = nullptr);


    void setContext(QQmlContext *contexte);

    void updateContext();

signals:

public slots:

private :
    QQmlContext* m_context;
};

#endif // MYAPP_H
