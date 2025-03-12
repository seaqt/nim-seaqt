#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QUDPSOCKET_H
#define SEAQT_QTNETWORK_GEN_QUDPSOCKET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSocket;
class QChildEvent;
class QEvent;
class QHostAddress;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QNetworkDatagram;
class QNetworkInterface;
class QObject;
class QTimerEvent;
class QUdpSocket;
class QVariant;
#else
typedef struct QAbstractSocket QAbstractSocket;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkDatagram QNetworkDatagram;
typedef struct QNetworkInterface QNetworkInterface;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUdpSocket QUdpSocket;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQUdpSocket VirtualQUdpSocket;
typedef struct QUdpSocket_VTable{
	void (*destructor)(VirtualQUdpSocket* self);
	QMetaObject* (*metaObject)(const VirtualQUdpSocket* self);
	void* (*metacast)(VirtualQUdpSocket* self, const char* param1);
	int (*metacall)(VirtualQUdpSocket* self, int param1, int param2, void** param3);
	void (*resume)(VirtualQUdpSocket* self);
	bool (*bind)(VirtualQUdpSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(VirtualQUdpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(VirtualQUdpSocket* self);
	long long (*bytesAvailable)(const VirtualQUdpSocket* self);
	long long (*bytesToWrite)(const VirtualQUdpSocket* self);
	void (*setReadBufferSize)(VirtualQUdpSocket* self, long long size);
	intptr_t (*socketDescriptor)(const VirtualQUdpSocket* self);
	bool (*setSocketDescriptor)(VirtualQUdpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(VirtualQUdpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(VirtualQUdpSocket* self, int option);
	void (*close)(VirtualQUdpSocket* self);
	bool (*isSequential)(const VirtualQUdpSocket* self);
	bool (*waitForConnected)(VirtualQUdpSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQUdpSocket* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQUdpSocket* self, int msecs);
	bool (*waitForDisconnected)(VirtualQUdpSocket* self, int msecs);
	long long (*readData)(VirtualQUdpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQUdpSocket* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQUdpSocket* self, long long maxSize);
	long long (*writeData)(VirtualQUdpSocket* self, const char* data, long long len);
	bool (*open)(VirtualQUdpSocket* self, int mode);
	long long (*pos)(const VirtualQUdpSocket* self);
	long long (*size)(const VirtualQUdpSocket* self);
	bool (*seek)(VirtualQUdpSocket* self, long long pos);
	bool (*atEnd)(const VirtualQUdpSocket* self);
	bool (*reset)(VirtualQUdpSocket* self);
	bool (*canReadLine)(const VirtualQUdpSocket* self);
	bool (*event)(VirtualQUdpSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQUdpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQUdpSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQUdpSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQUdpSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQUdpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQUdpSocket* self, QMetaMethod* signal);
}QUdpSocket_VTable;

const QUdpSocket_VTable* QUdpSocket_vtbl(const VirtualQUdpSocket* self);
void* QUdpSocket_vdata(const VirtualQUdpSocket* self);
void QUdpSocket_setVdata(VirtualQUdpSocket* self, void* vdata);

VirtualQUdpSocket* QUdpSocket_new(const QUdpSocket_VTable* vtbl, void* vdata);
VirtualQUdpSocket* QUdpSocket_new2(const QUdpSocket_VTable* vtbl, void* vdata, QObject* parent);

void QUdpSocket_virtbase(QUdpSocket* src, QAbstractSocket** outptr_QAbstractSocket);
QMetaObject* QUdpSocket_metaObject(const QUdpSocket* self);
void* QUdpSocket_metacast(QUdpSocket* self, const char* param1);
int QUdpSocket_metacall(QUdpSocket* self, int param1, int param2, void** param3);
struct miqt_string QUdpSocket_tr(const char* s);
bool QUdpSocket_bind(QUdpSocket* self, int addr);
bool QUdpSocket_joinMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress);
bool QUdpSocket_joinMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface);
bool QUdpSocket_leaveMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress);
bool QUdpSocket_leaveMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface);
QNetworkInterface* QUdpSocket_multicastInterface(const QUdpSocket* self);
void QUdpSocket_setMulticastInterface(QUdpSocket* self, QNetworkInterface* iface);
bool QUdpSocket_hasPendingDatagrams(const QUdpSocket* self);
long long QUdpSocket_pendingDatagramSize(const QUdpSocket* self);
QNetworkDatagram* QUdpSocket_receiveDatagram(QUdpSocket* self);
long long QUdpSocket_readDatagram(QUdpSocket* self, char* data, long long maxlen);
long long QUdpSocket_writeDatagram(QUdpSocket* self, QNetworkDatagram* datagram);
long long QUdpSocket_writeDatagram2(QUdpSocket* self, const char* data, long long len, QHostAddress* host, uint16_t port);
long long QUdpSocket_writeDatagram3(QUdpSocket* self, struct miqt_string datagram, QHostAddress* host, uint16_t port);
struct miqt_string QUdpSocket_tr2(const char* s, const char* c);
struct miqt_string QUdpSocket_tr3(const char* s, const char* c, int n);
bool QUdpSocket_bind2(QUdpSocket* self, int addr, uint16_t port);
bool QUdpSocket_bind3(QUdpSocket* self, int addr, uint16_t port, int mode);
QNetworkDatagram* QUdpSocket_receiveDatagram1(QUdpSocket* self, long long maxSize);
long long QUdpSocket_readDatagram3(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host);
long long QUdpSocket_readDatagram4(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host, uint16_t* port);

QMetaObject* QUdpSocket_virtualbase_metaObject(const VirtualQUdpSocket* self);
void* QUdpSocket_virtualbase_metacast(VirtualQUdpSocket* self, const char* param1);
int QUdpSocket_virtualbase_metacall(VirtualQUdpSocket* self, int param1, int param2, void** param3);
void QUdpSocket_virtualbase_resume(VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_bind(VirtualQUdpSocket* self, QHostAddress* address, uint16_t port, int mode);
void QUdpSocket_virtualbase_connectToHost(VirtualQUdpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QUdpSocket_virtualbase_disconnectFromHost(VirtualQUdpSocket* self);
long long QUdpSocket_virtualbase_bytesAvailable(const VirtualQUdpSocket* self);
long long QUdpSocket_virtualbase_bytesToWrite(const VirtualQUdpSocket* self);
void QUdpSocket_virtualbase_setReadBufferSize(VirtualQUdpSocket* self, long long size);
intptr_t QUdpSocket_virtualbase_socketDescriptor(const VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_setSocketDescriptor(VirtualQUdpSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QUdpSocket_virtualbase_setSocketOption(VirtualQUdpSocket* self, int option, QVariant* value);
QVariant* QUdpSocket_virtualbase_socketOption(VirtualQUdpSocket* self, int option);
void QUdpSocket_virtualbase_close(VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_isSequential(const VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_waitForConnected(VirtualQUdpSocket* self, int msecs);
bool QUdpSocket_virtualbase_waitForReadyRead(VirtualQUdpSocket* self, int msecs);
bool QUdpSocket_virtualbase_waitForBytesWritten(VirtualQUdpSocket* self, int msecs);
bool QUdpSocket_virtualbase_waitForDisconnected(VirtualQUdpSocket* self, int msecs);
long long QUdpSocket_virtualbase_readData(VirtualQUdpSocket* self, char* data, long long maxlen);
long long QUdpSocket_virtualbase_readLineData(VirtualQUdpSocket* self, char* data, long long maxlen);
long long QUdpSocket_virtualbase_skipData(VirtualQUdpSocket* self, long long maxSize);
long long QUdpSocket_virtualbase_writeData(VirtualQUdpSocket* self, const char* data, long long len);
bool QUdpSocket_virtualbase_open(VirtualQUdpSocket* self, int mode);
long long QUdpSocket_virtualbase_pos(const VirtualQUdpSocket* self);
long long QUdpSocket_virtualbase_size(const VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_seek(VirtualQUdpSocket* self, long long pos);
bool QUdpSocket_virtualbase_atEnd(const VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_reset(VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_canReadLine(const VirtualQUdpSocket* self);
bool QUdpSocket_virtualbase_event(VirtualQUdpSocket* self, QEvent* event);
bool QUdpSocket_virtualbase_eventFilter(VirtualQUdpSocket* self, QObject* watched, QEvent* event);
void QUdpSocket_virtualbase_timerEvent(VirtualQUdpSocket* self, QTimerEvent* event);
void QUdpSocket_virtualbase_childEvent(VirtualQUdpSocket* self, QChildEvent* event);
void QUdpSocket_virtualbase_customEvent(VirtualQUdpSocket* self, QEvent* event);
void QUdpSocket_virtualbase_connectNotify(VirtualQUdpSocket* self, QMetaMethod* signal);
void QUdpSocket_virtualbase_disconnectNotify(VirtualQUdpSocket* self, QMetaMethod* signal);

void QUdpSocket_protectedbase_setSocketState(VirtualQUdpSocket* self, int state);
void QUdpSocket_protectedbase_setSocketError(VirtualQUdpSocket* self, int socketError);
void QUdpSocket_protectedbase_setLocalPort(VirtualQUdpSocket* self, uint16_t port);
void QUdpSocket_protectedbase_setLocalAddress(VirtualQUdpSocket* self, QHostAddress* address);
void QUdpSocket_protectedbase_setPeerPort(VirtualQUdpSocket* self, uint16_t port);
void QUdpSocket_protectedbase_setPeerAddress(VirtualQUdpSocket* self, QHostAddress* address);
void QUdpSocket_protectedbase_setPeerName(VirtualQUdpSocket* self, struct miqt_string name);
void QUdpSocket_protectedbase_setOpenMode(VirtualQUdpSocket* self, int openMode);
void QUdpSocket_protectedbase_setErrorString(VirtualQUdpSocket* self, struct miqt_string errorString);
QObject* QUdpSocket_protectedbase_sender(const VirtualQUdpSocket* self);
int QUdpSocket_protectedbase_senderSignalIndex(const VirtualQUdpSocket* self);
int QUdpSocket_protectedbase_receivers(const VirtualQUdpSocket* self, const char* signal);
bool QUdpSocket_protectedbase_isSignalConnected(const VirtualQUdpSocket* self, QMetaMethod* signal);

const QMetaObject* QUdpSocket_staticMetaObject();
void QUdpSocket_delete(QUdpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
