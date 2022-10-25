import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: primaryFrame
    width: 480
    height: 320
    visible: true
    title: qsTr("Форма регистрации на сайте 'Планета влюбленных'")
    color: "#e5ecef"

    //title: qsTr("Добро пожаловать на сайт 'Планета влюбленных'. Заполните анкету для того, чтобы продолжить регистрацию на портале")

    Rectangle {
    id: secondaryFrame
    width: 2000
    height: 1000
    radius: 5
    anchors.centerIn: parent
    property string textColor: "#535353"

    Column {
    anchors.fill: parent
    padding: 350
    spacing: 5

    Label {
        text: "Введите адрес электронной почты(Будет отображаться на портале!)"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: mailTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Эл.Почта")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите логин"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: loginTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Логин")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите пароль"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: passwordTextField
    echoMode: TextInput.Password
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Пароль")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите номер телефона"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: phoneTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("(укажите символ '+')")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите имя (Будет отображаться на портале!)"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: nameTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Имя")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите фамилию"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: surnameTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Фамилия")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Введите отчество"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: dadnameTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Отчество(при наличии)")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Выберите пол"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ComboBox {
        id: comboBox1
        model: ["...","Мужской", "Женский"]
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
    id: ageTextField
    anchors.horizontalCenter: parent.horizontalCenter
    placeholderText: qsTr("Введите свой возраст")
    color: secondaryFrame.textColor
    }

    Label {
        text: "Выберите страну проживания"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ComboBox {
        id: comboBox2
        model: ["...", "Россия","Украина", "Польша", "Турция", "Соединенные штаты Америки", "Великобритания" ]
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        text: "Выберите город проживания"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ComboBox {
        id: comboBox3
        model: [ "...", "Казань","Курган", "Москва", "Нижний Новгород", "Ульяновск", "Киев", "Днепропетровск", "Припять =)", "Варшава", "Лондон", "Анкара", "Нью-Йорк" ]
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        text: "Выберите кто интересен именно вам"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ComboBox {
        id: comboBox4
        model: [ "...","Девочки","Мальчики", "Все" ]
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        text: "С какой вы планеты?"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    ComboBox {
        id: comboBox5
        model: [ "...","Марс","Уран", "Нептун", "Венера" ]
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
    id: submitButton
    width: 200
    height: 40
    text: qsTr("Регистрация");
    anchors.horizontalCenter: parent.horizontalCenter
    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log(qsTr('Обработка нажатия: "' + mailTextField.text + 'E-mail' + loginTextField.text + 'Login' +
                             passwordTextField.text + 'Пароль' + phoneTextField.text + 'Номер телефона' + nameTextField.text + 'Имя' +
                             surnameTextField.text + 'Фамилия' + dadnameTextField.text + 'Отчество' + ageTextField.text + 'Возраст' + comboBox5.text + '""'))
        }
    }
    background: Rectangle {
    color: parent.down ? "#bbbbbb" :
    (parent.hovered ? "#d6d6d6" : "#f6f6f6")
    }
   }
  }
 }
}
