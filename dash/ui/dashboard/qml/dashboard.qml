/*
Dashboard for openic. Attempts to be display agnostic with reactive scaling. Developed for 12.3" displays with 2.67:1 aspect ratio (like found in Tesla Model S/X).
*/

import QtQuick 2.11 //
import QtQuick.Window 2.11 //
import QtQuick.Layouts 1.9 //
import QtQuick.Controls 1.5 //
import QtQuick.Controls.Styles 1.4 //
import QtQuick.Extras 1.4 //
import "qrc:/Uihelper.js" as UIHelper

// c++ classes that we can read in
import io.carstate 1.0

Window {
    id: window
    visible: true
    // HIDPI
    width: 1920
    height: 720
    // LODPI
    //width: 1280
    //height: 480
    color: "#003036"

    title: "UI"

    //    ValueSource {
    //        id: valueSource
    //    }

    CarState {
        id: carstate
    }

    Shortcut {
        sequence: "E"
        onActivated: Qt.quit()
    }
    // define some variables to use later
    readonly property bool debugRectangles: true
    readonly property int fontSizeExtraSmall: window.height * 0.06
    readonly property int fontSizeSmall: window.height * 0.075
    readonly property int fontSizeMedium: window.height * 0.1
    readonly property int fontSizeLarge: window.height * 0.2
    readonly property int fontSizeExtraLarge: window.height * 0.3

    // Dashboards are typically in a landscape orientation, so we need to ensure
    // our height is never greater than our width.

    Item {
        id: mainContainer
        width: window.width
        height: Math.min(window.width, window.height) - (window.height * 0.1)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top

        GridLayout {
            rows: 1
            columns: 3
            anchors.fill: parent


            ColumnLayout {
                id: leftColumn
                Layout.preferredWidth: window.width * 0.3
                Layout.preferredHeight: parent.height

            }

            ColumnLayout {
                id: centerColumn
                Layout.preferredWidth: window.width * 0.4
                Layout.preferredHeight: parent.height

                Text {
                    id: speedometer
                    color: "#ffffff"
                    text: carstate.carSpeed
                    font.weight: Font.Normal
                    font.family: "Courier"
                    font.pixelSize: fontSizeLarge
                    fontSizeMode: Text.HorizontalFit
                    //horizontalAlignment: Text.AlignHCenter
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignCenter
                }

            }

            ColumnLayout {
                id: rightColumn
                Layout.preferredWidth: window.width * 0.3
                Layout.preferredHeight: parent.height

            }
        }



    }
    Item {
        id: bottomContainer
        width: window.width * 0.8
        height: Math.min(window.width, window.height) - (window.height * 0.9)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10

        RowLayout {
            id: lightRow
            width: parent.width
            height: parent.height
            spacing: 1

            Image {
                id: image
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image1
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image2
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image3
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image4
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image5
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image6
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: image7
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}







































/*##^## Designer {
    D{i:3;anchors_height:432;anchors_width:1280}
}
 ##^##*/
