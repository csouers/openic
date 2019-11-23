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

import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import "qrc:/Uihelper.js" as UIHelper

Window {
    id: root
    visible: true
    // HIDPI
    //    width: 1920
    //    height: 720
    // LODPI
    width: 1280
    height: 480

    color: "#000000"
    title: "UI"

    //    ValueSource {
    //        id: valueSource
    //    }

    // Dashboards are typically in a landscape orientation, so we need to ensure
    // our height is never greater than our width.
    Item {
        id: container
        width: root.width
        height: Math.min(root.width, root.height)
        anchors.centerIn: parent

        Column { //set the left data column
            id:leftColumn
            height: UIHelper.multiply2(root.height, 0.8)
            width: UIHelper.multiply2(root.height, 0.4)
            anchors.leftMargin: 35
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter


            Rectangle {
                id: leftColumnRectangle
                color: "#949494"
                height: leftColumn.height
                width: leftColumn.width

                Image {
                    id: cruiseonxxx
                    width: UIHelper.multiply2(root.height, 0.075)
                    height: UIHelper.multiply2(root.height, 0.075)
                    fillMode: Image.PreserveAspectFit
                    visible: true
                    clip: false
                    antialiasing: true
                    source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                }

            }
        }


        Row { //set the middle top-middle gauge/icon cluster
            id: gaugeRow
            width: 661
            height: 205
            anchors.top: parent.top
            anchors.topMargin: 35
            anchors.bottomMargin: 35
            anchors.horizontalCenter: parent.horizontalCenter
            layoutDirection: Qt.LeftToRight
            antialiasing: True
            spacing: 38

            Rectangle {
                id: gaugeRowRectangle
                color: "#949494"
                height: gaugeRow.height
                width: gaugeRow.width

                Grid {
                    id: gaugeRowGrid
                    height: UIHelper.multiply2(root.height, 0.2)
                    columns: 0
                    flow: Grid.LeftToRight
                    //width: UIHelper.multiply2(root.height, 0.5)
                    antialiasing: true
                    spacing: 38
                    rows: 1
                    anchors.verticalCenter: parent.verticalCenter

                    Image {
                        id: highbeam
                        width: UIHelper.multiply2(root.height, 0.25)
                        height: UIHelper.multiply2(root.height, 0.25)
                        antialiasing: true
                        //scale: 0.7
                        //anchors.verticalCenter: gaugeRowGrid.verticalCenter
                        fillMode: Image.PreserveAspectFit
                        source: "../images/iconfinder_Upper_2501878_onwhite.png"
                    }

                    Text {
                        id: speedometer
                        x: 0
                        y: 0
                        width: UIHelper.multiply2(root.height, 0.3)
                        height: UIHelper.multiply2(root.height, 0.3)
                        color: "#ffffff"
                        text: qsTr("59")
                        //anchors.verticalCenter: parent.verticalCenter
                        //transformOrigin: Item.Center
                        visible: true
                        clip: false
                        renderType: Text.QtRendering
                        font.weight: Font.Normal
                        style: Text.Normal
                        font.family: "Verdana"
                        //horizontalAlignment: Text.AlignHCenter
                        //verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        font.pixelSize: UIHelper.multiply2(root.height, 0.2)
                        styleColor: "#ffffff"
                    }

                    Image {
                        id: cruiseon
                        width: UIHelper.multiply2(root.height, 0.25)
                        height: UIHelper.multiply2(root.height, 0.25)
                        antialiasing: true
                        //scale: 0.7
                        //anchors.verticalCenter: parent.verticalCenter
                        fillMode: Image.PreserveAspectFit
                        source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                    }
                }

            }
        }

        Row { //set the bottom row of warning lights
            id: lightRow
            anchors.bottom: parent.bottom
            anchors.bottomMargin: root.height * 0.08
            anchors.horizontalCenter: parent.horizontalCenter
            //layoutDirection: Qt.LeftToRight

            Grid {
                id: lightRowGrid
                height: UIHelper.multiply2(root.height, 0.075)
                antialiasing: true
                spacing: 38
                rows: 1

                Image {
                    id: cruiseonx
                    width: UIHelper.multiply2(root.height, 0.075)
                    height: UIHelper.multiply2(root.height, 0.075)
                    visible: true
                    clip: false
                    antialiasing: true
                    source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                }
                Image {
                    id: cruiseonxy
                    width: UIHelper.multiply2(root.height, 0.075)
                    height: UIHelper.multiply2(root.height, 0.075)
                    antialiasing: true
                    source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                }
                Image {
                    id: cruiseonxz
                    width: UIHelper.multiply2(root.height, 0.075)
                    height: UIHelper.multiply2(root.height, 0.075)
                    antialiasing: true
                    source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                }
                Image {
                    id: cruiseonxyzz
                    width: UIHelper.multiply2(root.height, 0.075)
                    height: UIHelper.multiply2(root.height, 0.075)
                    antialiasing: true
                    source: "../images/iconfinder_SpeedOMeter_2501879_white.png"
                }
            }
        }
    }
}












































































/*##^## Designer {
    D{i:4;anchors_height:150;anchors_width:150}D{i:3;anchors_height:205;anchors_width:661;anchors_y:0}
D{i:7;anchors_height:150;anchors_width:100}D{i:6;anchors_height:150;anchors_width:100;anchors_x:0;anchors_y:0}
D{i:5;anchors_height:300;anchors_width:299;anchors_x:0;anchors_y:0}
}
 ##^##*/
