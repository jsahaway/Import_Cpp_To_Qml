#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QList>
#include <QVariant>

#include "myapp.h"


using namespace std;



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext* ctx = engine.rootContext();
    MyApp myApp;

    // Set ctx
    myApp.setContext( ctx );

    // Update ctx
    myApp.updateContext();

    // Open Qml file
    engine.load(QUrl(QStringLiteral("qml/main.qml")));


    if (engine.rootObjects().isEmpty()) { return -1; }

    return app.exec();
}
