/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.11 //
import QtQuick.Window 2.11 //
import QtQuick.Layouts 1.9 //
import QtQuick.Controls 1.5 //
import QtQuick.Controls.Styles 1.4 //
import QtQuick.Extras 1.4 //
import "qrc:/Uihelper.js" as UIHelper

import io.carstate 1.0

Window {
    id: window
    visible: true
    // HIDPI
    //        width: 1920
    //        height: 720
    // LODPI
    width: 1280
    height: 480

    color: "#000000"
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
    readonly property int fontSizeExtraSmall: Qt.application.font.pixelSize * 0.8
    readonly property int fontSizeMedium: Qt.application.font.pixelSize * 1.5
    readonly property int fontSizeLarge: Qt.application.font.pixelSize * 2
    readonly property int fontSizeExtraLarge: Qt.application.font.pixelSize * 5

    // Dashboards are typically in a landscape orientation, so we need to ensure
    // our height is never greater than our width.

    Item {
        id: mainContainer
        width: window.width
        height: Math.min(window.width, window.height) - (window.height * 0.1)
        scale: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top

        Rectangle {
            id: rectangleTop
            color: "#393939"
            anchors.fill: parent
            visible: debugRectangles
        }

        GridLayout {
            rows: 1
            columns: 3
            anchors.fill: parent


            ColumnLayout {
                id: leftColumn
                Layout.preferredWidth: window.width * 0.3
                Layout.preferredHeight: parent.height
                Rectangle {
                    height: parent.height
                    width: parent.width
                    color: "#494949"
                    visible: debugRectangles
                }
//                Text {
//                    id: element1
//                    color: "#ffffff"
//                    text: carstate.carSpeed
//                    font.pixelSize: fontSizeExtraLarge
//                    fontSizeMode: Text.HorizontalFit
//                    horizontalAlignment: Text.AlignHCenter
//                }

            }

            ColumnLayout {
                id: centerColumn
                Layout.preferredWidth: window.width * 0.4
                Layout.preferredHeight: parent.height

                Rectangle {
                    height: parent.height
                    width: parent.width
                    color: "#595959"
                    visible: debugRectangles
                }
                Text {
                    id: element2
                    color: "#ffffff"
                    text: carstate.carSpeed
                    font.pixelSize: fontSizeExtraLarge
                    fontSizeMode: Text.HorizontalFit
                    //horizontalAlignment: Text.AlignHCenter
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignCenter
                }

            }

            ColumnLayout {
                id: rightColumn
                Layout.preferredWidth: window.width * 0.3
                Layout.preferredHeight: parent.height

                Rectangle {
                    height: parent.height
                    width: parent.width
                    color: "#696969"
                    visible: debugRectangles
                }
//                Text {
//                    id: element3
//                    color: "#ffffff"
//                    text: carstate.carSpeed
//                    font.pixelSize: fontSizeExtraLarge
//                    fontSizeMode: Text.HorizontalFit
//                    horizontalAlignment: Text.AlignHCenter
//                }

            }
        }



    }
    Item {
        id: bottomContainer
        width: window.width * 0.8
        height: Math.min(window.width, window.height) - (window.height * 0.9)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Rectangle {
            color: "#595959"
            anchors.fill: parent
            visible: debugRectangles
        }
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
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.maximumWidth: lightRow.height * 1.5
                Layout.maximumHeight: parent.height
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
        }
    }
}

























/*##^## Designer {
    D{i:3;anchors_height:432;anchors_width:1280}
}
 ##^##*/
