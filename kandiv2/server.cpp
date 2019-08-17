#include "server.h"

#include <QHostAddress>
#include <QByteArray>
#include <QTime>
#include <QString>

Server::Server(QObject *parent) : QObject(parent)
{
    udpSocket_ = new QUdpSocket(this);
    udpSocket_->bind(QHostAddress::AnyIPv4, 50008);
    connect(udpSocket_, SIGNAL(readyRead()),this, SLOT(readData()));

    QHostAddress address0;
    QHostAddress address1;
    QHostAddress address2;
    QHostAddress address3;
    QHostAddress address4;

    address0.setAddress("172.16.172.54");
    address1.setAddress("172.16.172.50");
    address2.setAddress("172.16.172.51");
    address3.setAddress("172.16.172.52");
    address4.setAddress("172.16.172.53");

    addresses_.push_back(address0);
    addresses_.push_back(address1);
    addresses_.push_back(address2);
    addresses_.push_back(address3);
    addresses_.push_back(address4);

    ports_.push_back(50007);
    ports_.push_back(50007);
    ports_.push_back(50007);
    ports_.push_back(50007);
    ports_.push_back(50007);

}


void Server::connectImage(QString sourcenumber, bool target1, bool target2, bool target3, bool target4)
{
    QString dataMes6x2 = build6x2DataMessage(sourcenumber.toInt());
    QString dataMes4x4 = build4x4DataMessaage(sourcenumber.toInt(), target1, target2, target3, target4);

    QHostAddress address6x2 = get6x2address(sourcenumber.toInt());
    QHostAddress address4x4 = addresses_.at(0);

    quint16 port6x2 = get6x2port(sourcenumber.toInt());
    quint16 port4x4 = ports_.at(0);

    sendDatagram(address6x2, port6x2, dataMes6x2);
    emit messageSent(QTime::currentTime().toString(), address6x2.toString(), dataMes6x2);

    sendDatagram(address4x4, port4x4, dataMes4x4);
    emit messageSent(QTime::currentTime().toString(), address4x4.toString(), dataMes4x4);

    //-------Made for ui----------
    emit connectionChanged();
    //----------------------------
}

void Server::sendcustomMessage(QString message, QString target)
{
    sendDatagram(addresses_.at(target.toInt()), ports_.at(target.toInt()), message);
    emit messageSent(QTime::currentTime().toString(), addresses_.at(target.toInt()).toString() , message);
}

void Server::readData()
{
    while (udpSocket_->hasPendingDatagrams()) {
        QByteArray data;
        data.resize(udpSocket_->pendingDatagramSize());
        QHostAddress sender;
        quint16 senderPort;

        udpSocket_->readDatagram(data.data(), data.size(), &sender, &senderPort);

        emit messageReceived(QTime::currentTime().toString(), sender.toString(), data);
    }
}

QString Server::build6x2DataMessage(int sourcenumber)
{
    QString input = QString::number(get6x2input(sourcenumber));
    QString output = QString::number(get6x2output(sourcenumber));
    QString mes = "r " + input + " " + output;
    return mes;
}

QString Server::build4x4DataMessaage(int sourcenumber, bool target1, bool target2, bool target3, bool target4)
{
    QString input = QString::number(get4x4input(sourcenumber));
    QString output = get4x4output(target1, target2, target3, target4);
    QString mes = "r " + input + output;
    return mes;
}

QHostAddress Server::get6x2address(int sourcenumber)
{
    int number = 0;
    while(sourcenumber > 0){
        sourcenumber -= 6;
        ++number;
    }
    return addresses_.at(number);

}

quint16 Server::get6x2port(int sourcenumber)
{
    int number = 0;
    while(sourcenumber > 0){
        sourcenumber -= 6;
        ++number;
    }
    return ports_.at(number);
}

int Server::get6x2output(int sourcenumber)
{
    return 1; //oletus että 1
}

int Server::get6x2input(int sourcenumber)
{
    while (sourcenumber > 6) {
        sourcenumber -=6;
    }
    return sourcenumber;
}

QString Server::get4x4output(bool target1, bool target2, bool target3, bool target4)
{
    QString outputs;
    if ( target1 ){
        outputs += " 1";
    }
    if ( target2 ){
        outputs += " 2";
    }
    if ( target3 ){
        outputs += " 3";
    }
    if ( target4 ){
        outputs += " 4";
    }

    return outputs;
}

int Server::get4x4input(int sourcenumber)
{
    int number = 0;
    while(sourcenumber > 0){
        sourcenumber -= 6;
        ++number;
    }
    return number;
}

void Server::sendDatagram(QHostAddress address, quint16 port, QString message)
{
    QByteArray data;
    data.append(message);
    udpSocket_->writeDatagram(data, address, port);
}

//-----------Made for ui-----------
QString Server::connection()
{
    return connection_;
}

void Server::setConnection(QString connect)
{
    connection_ = connect;

    std::vector<bool> tvsToConnect;
    for (int i = 0; i < 4; i++ ){
        if (connect.at(i) == "0"){
            tvsToConnect.push_back(false);
        } else {
            tvsToConnect.push_back(true);
        }
    }
    QString source = connect.remove(0, 4);
    //connection_ = tvsToConnect.at(1);
    connectImage(source, tvsToConnect.at(0), tvsToConnect.at(1), tvsToConnect.at(2), tvsToConnect.at(3));

}
//---------------------------------
