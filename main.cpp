#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "Controllers/system.h" // Make sure to include the correct path to the system header

int main(int argc, char *argv[])
{
    // Enable high DPI scaling if Qt version is below 6.0
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    System m_systemHandler; // Create an instance of the System class

    QQmlApplicationEngine engine;

    // Define the URL of the main QML file
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    // Connect a function to handle object creation and application exit
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);

    // Load the main QML file into the engine
    engine.load(url);

    // Obtain the root context of the QML engine
    QQmlContext *context = engine.rootContext();

    // Set the "systemHandler" context property to the instance of System class
    context->setContextProperty("systemHandler", &m_systemHandler);

    // Start the application event loop
    return app.exec();
}
