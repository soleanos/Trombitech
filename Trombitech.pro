TEMPLATE = app
TARGET = Trombitech
QT += qml quick quickcontrols2
CONFIG += c++11
QT += core sql

SOURCES += main.cpp \
    dbmanager.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    dbmanager.h
