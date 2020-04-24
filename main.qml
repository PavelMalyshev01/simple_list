import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Чаты")

    ListModel{
        id: contactsModel
        ListElement{
            name: "Иван"
            avatar: "icons/Stan.png"
            status: "На связи"
        }
        ListElement{
            name: "Анна"
            avatar: "icons/Wendy.png"
            status: "Hey there! I am using WatsApp."
        }
        ListElement{
            name: "Максим"
            avatar: "icons/Kyle.png"
            status: "Занят(-а)"
        }
        ListElement{
            name: "Александр"
            avatar: "icons/Butters.png"
            status: "Низкий уровень заряда"
        }
    }

    ColumnLayout{
        anchors.fill: parent
        MainToolBar{
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name: text, avatar: "icons/person.png", status: "Hey there! I am using WatsApp."});
            }
        }
        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }
    }

}
