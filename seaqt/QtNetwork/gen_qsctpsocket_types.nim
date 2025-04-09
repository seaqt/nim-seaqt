import ./gen_qtcpsocket_types
export gen_qtcpsocket_types

type QSctpSocket* = object of gen_qtcpsocket_types.QTcpSocket
