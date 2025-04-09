import ./gen_qtcpserver_types
export gen_qtcpserver_types

type QSslServer* = object of gen_qtcpserver_types.QTcpServer
