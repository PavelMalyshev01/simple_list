import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

RowLayout {
    signal newItem(string text)
    TextField{
        id: textField
        placeholderText: "Новый чат"
        Layout.fillWidth: true
        selectByMouse: true
        focus: true
    }

    function add(){
        if (textField.text != ""){
            newItem(textField.text);
            textField.clear();
        }
    }

    Button{
        text: "Добавить"
        highlighted: true
        onClicked: {
            add();
        }
    }

    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}
