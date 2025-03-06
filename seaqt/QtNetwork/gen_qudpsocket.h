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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkDatagram QNetworkDatagram;
typedef struct QNetworkInterface QNetworkInterface;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUdpSocket QUdpSocket;
typedef struct QVariant QVariant;
#endif

struct QUdpSocket_VTable {
	void (*destructor)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self);
	QMetaObject* (*metaObject)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	void* (*metacast)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, const char* param1);
	int (*metacall)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int param1, int param2, void** param3);
	void (*resume)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self);
	void (*connectToHost)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self);
	long long (*bytesAvailable)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	long long (*bytesToWrite)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	bool (*canReadLine)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	void (*setReadBufferSize)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, long long size);
	intptr_t (*socketDescriptor)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	bool (*setSocketDescriptor)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int option);
	void (*close)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self);
	bool (*isSequential)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	bool (*atEnd)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	bool (*waitForConnected)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int msecs);
	bool (*waitForBytesWritten)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int msecs);
	bool (*waitForDisconnected)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int msecs);
	long long (*readData)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, char* data, long long maxlen);
	long long (*writeData)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, const char* data, long long len);
	bool (*open)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, int mode);
	long long (*pos)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	long long (*size)(struct QUdpSocket_VTable* vtbl, const QUdpSocket* self);
	bool (*seek)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, long long pos);
	bool (*reset)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self);
	bool (*event)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QEvent* event);
	bool (*eventFilter)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QChildEvent* event);
	void (*customEvent)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QEvent* event);
	void (*connectNotify)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QUdpSocket_VTable* vtbl, QUdpSocket* self, QMetaMethod* signal);
};
QUdpSocket* QUdpSocket_new(struct QUdpSocket_VTable* vtbl);
QUdpSocket* QUdpSocket_new2(struct QUdpSocket_VTable* vtbl, QObject* parent);
void QUdpSocket_virtbase(QUdpSocket* src, QAbstractSocket** outptr_QAbstractSocket);
QMetaObject* QUdpSocket_metaObject(const QUdpSocket* self);
void* QUdpSocket_metacast(QUdpSocket* self, const char* param1);
int QUdpSocket_metacall(QUdpSocket* self, int param1, int param2, void** param3);
struct miqt_string QUdpSocket_tr(const char* s);
struct miqt_string QUdpSocket_trUtf8(const char* s);
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
struct miqt_string QUdpSocket_trUtf82(const char* s, const char* c);
struct miqt_string QUdpSocket_trUtf83(const char* s, const char* c, int n);
QNetworkDatagram* QUdpSocket_receiveDatagram1(QUdpSocket* self, long long maxSize);
long long QUdpSocket_readDatagram3(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host);
long long QUdpSocket_readDatagram4(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host, uint16_t* port);
QMetaObject* QUdpSocket_virtualbase_metaObject(const void* self);
void* QUdpSocket_virtualbase_metacast(void* self, const char* param1);
int QUdpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QUdpSocket_virtualbase_resume(void* self);
void QUdpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QUdpSocket_virtualbase_disconnectFromHost(void* self);
long long QUdpSocket_virtualbase_bytesAvailable(const void* self);
long long QUdpSocket_virtualbase_bytesToWrite(const void* self);
bool QUdpSocket_virtualbase_canReadLine(const void* self);
void QUdpSocket_virtualbase_setReadBufferSize(void* self, long long size);
intptr_t QUdpSocket_virtualbase_socketDescriptor(const void* self);
bool QUdpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);
void QUdpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);
QVariant* QUdpSocket_virtualbase_socketOption(void* self, int option);
void QUdpSocket_virtualbase_close(void* self);
bool QUdpSocket_virtualbase_isSequential(const void* self);
bool QUdpSocket_virtualbase_atEnd(const void* self);
bool QUdpSocket_virtualbase_waitForConnected(void* self, int msecs);
bool QUdpSocket_virtualbase_waitForReadyRead(void* self, int msecs);
bool QUdpSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QUdpSocket_virtualbase_waitForDisconnected(void* self, int msecs);
long long QUdpSocket_virtualbase_readData(void* self, char* data, long long maxlen);
long long QUdpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QUdpSocket_virtualbase_writeData(void* self, const char* data, long long len);
bool QUdpSocket_virtualbase_open(void* self, int mode);
long long QUdpSocket_virtualbase_pos(const void* self);
long long QUdpSocket_virtualbase_size(const void* self);
bool QUdpSocket_virtualbase_seek(void* self, long long pos);
bool QUdpSocket_virtualbase_reset(void* self);
bool QUdpSocket_virtualbase_event(void* self, QEvent* event);
bool QUdpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QUdpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QUdpSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QUdpSocket_virtualbase_customEvent(void* self, QEvent* event);
void QUdpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QUdpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QUdpSocket_protectedbase_setSocketState(void* self, int state);
void QUdpSocket_protectedbase_setSocketError(void* self, int socketError);
void QUdpSocket_protectedbase_setLocalPort(void* self, uint16_t port);
void QUdpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address);
void QUdpSocket_protectedbase_setPeerPort(void* self, uint16_t port);
void QUdpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address);
void QUdpSocket_protectedbase_setPeerName(void* self, struct miqt_string name);
void QUdpSocket_protectedbase_setOpenMode(void* self, int openMode);
void QUdpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString);
QObject* QUdpSocket_protectedbase_sender(const void* self);
int QUdpSocket_protectedbase_senderSignalIndex(const void* self);
int QUdpSocket_protectedbase_receivers(const void* self, const char* signal);
bool QUdpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QUdpSocket_staticMetaObject();
void QUdpSocket_delete(QUdpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
