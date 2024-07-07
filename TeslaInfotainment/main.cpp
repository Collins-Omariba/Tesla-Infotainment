#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <controllers/System.h>
#include <QQmlContext>

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN) && QT_VERSION_CHECK(5, 6, 0) <= QT_VERSION && QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    System m_systemHandler;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qt/qml/teslainfotainment/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QQmlContext * context ( engine.rootContext() );
    context->setContextProperty("systemHandler", &m_systemHandler);
    return app.exec(    );
}
