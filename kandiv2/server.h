#ifndef SERVER_H
#define SERVER_H

#include <vector>
#include <QObject>
#include <QUdpSocket>
#include <QString>


class Server : public QObject
{
    Q_OBJECT
    //------MUN KOODIA------
    Q_PROPERTY(QString connection READ connection WRITE setConnection NOTIFY connectionChanged)
    //----------------------
public:
    Server(QObject *parent = 0);

    void connectImage(QString sourcenumber, bool target1, bool target2, bool target3, bool target4);
    void sendcustomMessage(QString message, QString target);

    //------------
    QString connection();
    void setConnection(QString connect);
    //-------------

public slots:
    void readData();

signals:
     void messageReceived(QString timestamp, QString source, QString message);
     void messageSent(QString timestamp, QString target, QString message);
     //---------------
     void connectionChanged();
     //---------------


private:
     QString build6x2DataMessage(int sourcenumber);
     QString build4x4DataMessaage(int sourcenumber, bool target1, bool target2, bool target3, bool target4);

     QHostAddress get6x2address(int sourcenumber);
     quint16 get6x2port(int sourcenumber);
     int get6x2output(int sourcenumber);
     int get6x2input(int sourcenumber);
     QString get4x4output(bool target1, bool target2, bool target3, bool target4);
     int get4x4input(int sourcenumber);

     void sendDatagram(QHostAddress address, quint16 port, QString message);

     QUdpSocket *udpSocket_;
     std::vector<QHostAddress> addresses_; //index# 0=4x4, 1=1st 6x2, 2=2nd 6x2...
     std::vector<quint16> ports_;

     //----------------
     QString connection_;
     //----------------

};

#endif // SERVER_H
