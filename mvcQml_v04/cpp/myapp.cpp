#include "myapp.h"
#include <QDebug>

MyApp::MyApp(QObject *parent) : QObject(parent), m_context(nullptr)
{


}

void MyApp::setContext(QQmlContext *context)
{
    m_context = context;
}

// Function to update the QML
void MyApp::updateContext()
{


    /// ONE WAY

    // Create QStringList
    QStringList test1;
    test1 << "Item 1" << "AAAAA"  ;
    QStringList test2;
    test2 << "Item 2" << "BBBBB"  ;
    QStringList test3;
    test3 << "Item 3" << " " ;

    // Push_back QStringList into new one
    QList<QObject*> dataList;
    dataList.append(new MyBind( test1 ));
    dataList.append(new MyBind( test2 ));
    dataList.append(new MyBind( test3 ));

    // Send the data to Qml
    if( m_context!= nullptr )
        m_context->setContextProperty("myModel", QVariant::fromValue( dataList ));
    else
        qDebug() << "Context non instancié";



    /// ANOTHER WAY

    // Create QString with a specific "char" if you want to split the model in Qml with JS
    QString str1 = "Item 1; AAAAA; BBBB; 80; 2545;";
    QString str2 = "Item 4; CCCCC; DDDD; 81; 2546;" ;
    QString str3 = "Item 3; BLOPP; HHHH; 78; 246;" ;

    // Push_back QString into QStringList
    QList<QObject*> dataList2;
    dataList2.append(new MyBind( str1 ));
    dataList2.append(new MyBind( str2 ));
    dataList2.append(new MyBind( str3 ));

    // Send the data to Qml
    if( m_context!= nullptr)
        m_context->setContextProperty("myModel2", QVariant::fromValue( dataList2 ));
    else
        qDebug() << "Context non instancié";


}
