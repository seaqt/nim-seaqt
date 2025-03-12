#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QABSTRACTSOCKET_H
#define SEAQT_QTNETWORK_GEN_QABSTRACTSOCKET_H

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
class QAuthenticator;
class QChildEvent;
class QEvent;
class QHostAddress;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QNetworkProxy;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractSocket QAbstractSocket;
typedef struct QAuthenticator QAuthenticator;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHostAddress QHostAddress;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQAbstractSocket VirtualQAbstractSocket;
typedef struct QAbstractSocket_VTable{
	void (*destructor)(VirtualQAbstractSocket* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractSocket* self);
	void* (*metacast)(VirtualQAbstractSocket* self, const char* param1);
	int (*metacall)(VirtualQAbstractSocket* self, int param1, int param2, void** param3);
	void (*resume)(VirtualQAbstractSocket* self);
	bool (*bind)(VirtualQAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(VirtualQAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(VirtualQAbstractSocket* self);
	long long (*bytesAvailable)(const VirtualQAbstractSocket* self);
	long long (*bytesToWrite)(const VirtualQAbstractSocket* self);
	void (*setReadBufferSize)(VirtualQAbstractSocket* self, long long size);
	intptr_t (*socketDescriptor)(const VirtualQAbstractSocket* self);
	bool (*setSocketDescriptor)(VirtualQAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(VirtualQAbstractSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(VirtualQAbstractSocket* self, int option);
	void (*close)(VirtualQAbstractSocket* self);
	bool (*isSequential)(const VirtualQAbstractSocket* self);
	bool (*waitForConnected)(VirtualQAbstractSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQAbstractSocket* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQAbstractSocket* self, int msecs);
	bool (*waitForDisconnected)(VirtualQAbstractSocket* self, int msecs);
	long long (*readData)(VirtualQAbstractSocket* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQAbstractSocket* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQAbstractSocket* self, long long maxSize);
	long long (*writeData)(VirtualQAbstractSocket* self, const char* data, long long len);
	bool (*open)(VirtualQAbstractSocket* self, int mode);
	long long (*pos)(const VirtualQAbstractSocket* self);
	long long (*size)(const VirtualQAbstractSocket* self);
	bool (*seek)(VirtualQAbstractSocket* self, long long pos);
	bool (*atEnd)(const VirtualQAbstractSocket* self);
	bool (*reset)(VirtualQAbstractSocket* self);
	bool (*canReadLine)(const VirtualQAbstractSocket* self);
	bool (*event)(VirtualQAbstractSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQAbstractSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractSocket* self, QMetaMethod* signal);
}QAbstractSocket_VTable;

const QAbstractSocket_VTable* QAbstractSocket_vtbl(const VirtualQAbstractSocket* self);
void* QAbstractSocket_vdata(const VirtualQAbstractSocket* self);
void QAbstractSocket_setVdata(VirtualQAbstractSocket* self, void* vdata);

VirtualQAbstractSocket* QAbstractSocket_new(const QAbstractSocket_VTable* vtbl, void* vdata, int socketType, QObject* parent);

void QAbstractSocket_virtbase(QAbstractSocket* src, QIODevice** outptr_QIODevice);
QMetaObject* QAbstractSocket_metaObject(const QAbstractSocket* self);
void* QAbstractSocket_metacast(QAbstractSocket* self, const char* param1);
int QAbstractSocket_metacall(QAbstractSocket* self, int param1, int param2, void** param3);
struct miqt_string QAbstractSocket_tr(const char* s);
void QAbstractSocket_resume(QAbstractSocket* self);
int QAbstractSocket_pauseMode(const QAbstractSocket* self);
void QAbstractSocket_setPauseMode(QAbstractSocket* self, int pauseMode);
bool QAbstractSocket_bind(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);
bool QAbstractSocket_bind2(QAbstractSocket* self);
void QAbstractSocket_connectToHost(QAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QAbstractSocket_connectToHost2(QAbstractSocket* self, QHostAddress* address, uint16_t port);
void QAbstractSocket_disconnectFromHost(QAbstractSocket* self);
bool QAbstractSocket_isValid(const QAbstractSocket* self);
long long QAbstractSocket_bytesAvailable(const QAbstractSocket* self);
long long QAbstractSocket_bytesToWrite(const QAbstractSocket* self);
uint16_t QAbstractSocket_localPort(const QAbstractSocket* self);
QHostAddress* QAbstractSocket_localAddress(const QAbstractSocket* self);
uint16_t QAbstractSocket_peerPort(const QAbstractSocket* self);
QHostAddress* QAbstractSocket_peerAddress(const QAbstractSocket* self);
struct miqt_string QAbstractSocket_peerName(const QAbstractSocket* self);
long long QAbstractSocket_readBufferSize(const QAbstractSocket* self);
void QAbstractSocket_setReadBufferSize(QAbstractSocket* self, long long size);
void QAbstractSocket_abort(QAbstractSocket* self);
intptr_t QAbstractSocket_socketDescriptor(const QAbstractSocket* self);
bool QAbstractSocket_setSocketDescriptor(QAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QAbstractSocket_setSocketOption(QAbstractSocket* self, int option, QVariant* value);
QVariant* QAbstractSocket_socketOption(QAbstractSocket* self, int option);
int QAbstractSocket_socketType(const QAbstractSocket* self);
int QAbstractSocket_state(const QAbstractSocket* self);
int QAbstractSocket_error(const QAbstractSocket* self);
void QAbstractSocket_close(QAbstractSocket* self);
bool QAbstractSocket_isSequential(const QAbstractSocket* self);
bool QAbstractSocket_flush(QAbstractSocket* self);
bool QAbstractSocket_waitForConnected(QAbstractSocket* self, int msecs);
bool QAbstractSocket_waitForReadyRead(QAbstractSocket* self, int msecs);
bool QAbstractSocket_waitForBytesWritten(QAbstractSocket* self, int msecs);
bool QAbstractSocket_waitForDisconnected(QAbstractSocket* self, int msecs);
void QAbstractSocket_setProxy(QAbstractSocket* self, QNetworkProxy* networkProxy);
QNetworkProxy* QAbstractSocket_proxy(const QAbstractSocket* self);
struct miqt_string QAbstractSocket_protocolTag(const QAbstractSocket* self);
void QAbstractSocket_setProtocolTag(QAbstractSocket* self, struct miqt_string tag);
void QAbstractSocket_hostFound(QAbstractSocket* self);
void QAbstractSocket_connect_hostFound(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_connected(QAbstractSocket* self);
void QAbstractSocket_connect_connected(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_disconnected(QAbstractSocket* self);
void QAbstractSocket_connect_disconnected(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_stateChanged(QAbstractSocket* self, int param1);
void QAbstractSocket_connect_stateChanged(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSocket_errorOccurred(QAbstractSocket* self, int param1);
void QAbstractSocket_connect_errorOccurred(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSocket_proxyAuthenticationRequired(QAbstractSocket* self, QNetworkProxy* proxy, QAuthenticator* authenticator);
void QAbstractSocket_connect_proxyAuthenticationRequired(VirtualQAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t));
long long QAbstractSocket_readData(QAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_readLineData(QAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_skipData(QAbstractSocket* self, long long maxSize);
long long QAbstractSocket_writeData(QAbstractSocket* self, const char* data, long long len);
struct miqt_string QAbstractSocket_tr2(const char* s, const char* c);
struct miqt_string QAbstractSocket_tr3(const char* s, const char* c, int n);
bool QAbstractSocket_bind1(QAbstractSocket* self, uint16_t port);
bool QAbstractSocket_bind22(QAbstractSocket* self, uint16_t port, int mode);
void QAbstractSocket_connectToHost3(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);

QMetaObject* QAbstractSocket_virtualbase_metaObject(const VirtualQAbstractSocket* self);
void* QAbstractSocket_virtualbase_metacast(VirtualQAbstractSocket* self, const char* param1);
int QAbstractSocket_virtualbase_metacall(VirtualQAbstractSocket* self, int param1, int param2, void** param3);
void QAbstractSocket_virtualbase_resume(VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_bind(VirtualQAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);
void QAbstractSocket_virtualbase_connectToHost(VirtualQAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QAbstractSocket_virtualbase_disconnectFromHost(VirtualQAbstractSocket* self);
long long QAbstractSocket_virtualbase_bytesAvailable(const VirtualQAbstractSocket* self);
long long QAbstractSocket_virtualbase_bytesToWrite(const VirtualQAbstractSocket* self);
void QAbstractSocket_virtualbase_setReadBufferSize(VirtualQAbstractSocket* self, long long size);
intptr_t QAbstractSocket_virtualbase_socketDescriptor(const VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_setSocketDescriptor(VirtualQAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QAbstractSocket_virtualbase_setSocketOption(VirtualQAbstractSocket* self, int option, QVariant* value);
QVariant* QAbstractSocket_virtualbase_socketOption(VirtualQAbstractSocket* self, int option);
void QAbstractSocket_virtualbase_close(VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_isSequential(const VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_waitForConnected(VirtualQAbstractSocket* self, int msecs);
bool QAbstractSocket_virtualbase_waitForReadyRead(VirtualQAbstractSocket* self, int msecs);
bool QAbstractSocket_virtualbase_waitForBytesWritten(VirtualQAbstractSocket* self, int msecs);
bool QAbstractSocket_virtualbase_waitForDisconnected(VirtualQAbstractSocket* self, int msecs);
long long QAbstractSocket_virtualbase_readData(VirtualQAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_virtualbase_readLineData(VirtualQAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_virtualbase_skipData(VirtualQAbstractSocket* self, long long maxSize);
long long QAbstractSocket_virtualbase_writeData(VirtualQAbstractSocket* self, const char* data, long long len);
bool QAbstractSocket_virtualbase_open(VirtualQAbstractSocket* self, int mode);
long long QAbstractSocket_virtualbase_pos(const VirtualQAbstractSocket* self);
long long QAbstractSocket_virtualbase_size(const VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_seek(VirtualQAbstractSocket* self, long long pos);
bool QAbstractSocket_virtualbase_atEnd(const VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_reset(VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_canReadLine(const VirtualQAbstractSocket* self);
bool QAbstractSocket_virtualbase_event(VirtualQAbstractSocket* self, QEvent* event);
bool QAbstractSocket_virtualbase_eventFilter(VirtualQAbstractSocket* self, QObject* watched, QEvent* event);
void QAbstractSocket_virtualbase_timerEvent(VirtualQAbstractSocket* self, QTimerEvent* event);
void QAbstractSocket_virtualbase_childEvent(VirtualQAbstractSocket* self, QChildEvent* event);
void QAbstractSocket_virtualbase_customEvent(VirtualQAbstractSocket* self, QEvent* event);
void QAbstractSocket_virtualbase_connectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal);
void QAbstractSocket_virtualbase_disconnectNotify(VirtualQAbstractSocket* self, QMetaMethod* signal);

void QAbstractSocket_protectedbase_setSocketState(VirtualQAbstractSocket* self, int state);
void QAbstractSocket_protectedbase_setSocketError(VirtualQAbstractSocket* self, int socketError);
void QAbstractSocket_protectedbase_setLocalPort(VirtualQAbstractSocket* self, uint16_t port);
void QAbstractSocket_protectedbase_setLocalAddress(VirtualQAbstractSocket* self, QHostAddress* address);
void QAbstractSocket_protectedbase_setPeerPort(VirtualQAbstractSocket* self, uint16_t port);
void QAbstractSocket_protectedbase_setPeerAddress(VirtualQAbstractSocket* self, QHostAddress* address);
void QAbstractSocket_protectedbase_setPeerName(VirtualQAbstractSocket* self, struct miqt_string name);
void QAbstractSocket_protectedbase_setOpenMode(VirtualQAbstractSocket* self, int openMode);
void QAbstractSocket_protectedbase_setErrorString(VirtualQAbstractSocket* self, struct miqt_string errorString);
QObject* QAbstractSocket_protectedbase_sender(const VirtualQAbstractSocket* self);
int QAbstractSocket_protectedbase_senderSignalIndex(const VirtualQAbstractSocket* self);
int QAbstractSocket_protectedbase_receivers(const VirtualQAbstractSocket* self, const char* signal);
bool QAbstractSocket_protectedbase_isSignalConnected(const VirtualQAbstractSocket* self, QMetaMethod* signal);

const QMetaObject* QAbstractSocket_staticMetaObject();
void QAbstractSocket_delete(QAbstractSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
