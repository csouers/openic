TEMPLATE = app
TARGET = dashboard
INCLUDEPATH += .
QT += quick

SOURCES += \
    main.cpp \
    carstate.cpp

RESOURCES += \
    dashboard.qrc

OTHER_FILES += \
    qml/dashboard.qml \
    qml/DashboardGaugeStyle.qml \
    qml/IconGaugeStyle.qml \
    qml/TachometerStyle.qml \
    qml/TurnIndicator.qml \
    qml/ValueSource.qml \

target.path = $$[QT_INSTALL_EXAMPLES]/quickcontrols/extras/dashboard
INSTALLS += target

DISTFILES += \
    qml/dashboard_copy.qml

HEADERS += \
    carstate.h
