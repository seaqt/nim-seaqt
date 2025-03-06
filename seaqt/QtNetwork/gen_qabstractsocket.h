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

struct QAbstractSocket_VTable {
	void (*destructor)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self);
	QMetaObject* (*metaObject)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	void* (*metacast)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, const char* param1);
	int (*metacall)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int param1, int param2, void** param3);
	void (*resume)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self);
	bool (*bind)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self);
	long long (*bytesAvailable)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	long long (*bytesToWrite)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	void (*setReadBufferSize)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, long long size);
	intptr_t (*socketDescriptor)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	bool (*setSocketDescriptor)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int option);
	void (*close)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self);
	bool (*isSequential)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	bool (*waitForConnected)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int msecs);
	bool (*waitForBytesWritten)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int msecs);
	bool (*waitForDisconnected)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int msecs);
	long long (*readData)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, char* data, long long maxlen);
	long long (*readLineData)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, char* data, long long maxlen);
	long long (*skipData)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, long long maxSize);
	long long (*writeData)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, const char* data, long long len);
	bool (*open)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, int mode);
	long long (*pos)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	long long (*size)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	bool (*seek)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, long long pos);
	bool (*atEnd)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	bool (*reset)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self);
	bool (*canReadLine)(struct QAbstractSocket_VTable* vtbl, const QAbstractSocket* self);
	bool (*event)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QEvent* event);
	void (*connectNotify)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractSocket_VTable* vtbl, QAbstractSocket* self, QMetaMethod* signal);
};
QAbstractSocket* QAbstractSocket_new(struct QAbstractSocket_VTable* vtbl, int socketType, QObject* parent);
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
void QAbstractSocket_connect_hostFound(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_connected(QAbstractSocket* self);
void QAbstractSocket_connect_connected(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_disconnected(QAbstractSocket* self);
void QAbstractSocket_connect_disconnected(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractSocket_stateChanged(QAbstractSocket* self, int param1);
void QAbstractSocket_connect_stateChanged(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSocket_errorOccurred(QAbstractSocket* self, int param1);
void QAbstractSocket_connect_errorOccurred(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractSocket_proxyAuthenticationRequired(QAbstractSocket* self, QNetworkProxy* proxy, QAuthenticator* authenticator);
void QAbstractSocket_connect_proxyAuthenticationRequired(QAbstractSocket* self, intptr_t slot, void (*callback)(intptr_t, QNetworkProxy*, QAuthenticator*), void (*release)(intptr_t));
long long QAbstractSocket_readData(QAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_readLineData(QAbstractSocket* self, char* data, long long maxlen);
long long QAbstractSocket_skipData(QAbstractSocket* self, long long maxSize);
long long QAbstractSocket_writeData(QAbstractSocket* self, const char* data, long long len);
struct miqt_string QAbstractSocket_tr2(const char* s, const char* c);
struct miqt_string QAbstractSocket_tr3(const char* s, const char* c, int n);
bool QAbstractSocket_bind1(QAbstractSocket* self, uint16_t port);
bool QAbstractSocket_bind22(QAbstractSocket* self, uint16_t port, int mode);
void QAbstractSocket_connectToHost3(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode);
QMetaObject* QAbstractSocket_virtualbase_metaObject(const void* self);
void* QAbstractSocket_virtualbase_metacast(void* self, const char* param1);
int QAbstractSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractSocket_virtualbase_resume(void* self);
bool QAbstractSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode);
void QAbstractSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QAbstractSocket_virtualbase_disconnectFromHost(void* self);
long long QAbstractSocket_virtualbase_bytesAvailable(const void* self);
long long QAbstractSocket_virtualbase_bytesToWrite(const void* self);
void QAbstractSocket_virtualbase_setReadBufferSize(void* self, long long size);
intptr_t QAbstractSocket_virtualbase_socketDescriptor(const void* self);
bool QAbstractSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);
void QAbstractSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);
QVariant* QAbstractSocket_virtualbase_socketOption(void* self, int option);
void QAbstractSocket_virtualbase_close(void* self);
bool QAbstractSocket_virtualbase_isSequential(const void* self);
bool QAbstractSocket_virtualbase_waitForConnected(void* self, int msecs);
bool QAbstractSocket_virtualbase_waitForReadyRead(void* self, int msecs);
bool QAbstractSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QAbstractSocket_virtualbase_waitForDisconnected(void* self, int msecs);
long long QAbstractSocket_virtualbase_readData(void* self, char* data, long long maxlen);
long long QAbstractSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QAbstractSocket_virtualbase_skipData(void* self, long long maxSize);
long long QAbstractSocket_virtualbase_writeData(void* self, const char* data, long long len);
bool QAbstractSocket_virtualbase_open(void* self, int mode);
long long QAbstractSocket_virtualbase_pos(const void* self);
long long QAbstractSocket_virtualbase_size(const void* self);
bool QAbstractSocket_virtualbase_seek(void* self, long long pos);
bool QAbstractSocket_virtualbase_atEnd(const void* self);
bool QAbstractSocket_virtualbase_reset(void* self);
bool QAbstractSocket_virtualbase_canReadLine(const void* self);
bool QAbstractSocket_virtualbase_event(void* self, QEvent* event);
bool QAbstractSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractSocket_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractSocket_protectedbase_setSocketState(bool* _dynamic_cast_ok, void* self, int state);
void QAbstractSocket_protectedbase_setSocketError(bool* _dynamic_cast_ok, void* self, int socketError);
void QAbstractSocket_protectedbase_setLocalPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
void QAbstractSocket_protectedbase_setLocalAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
void QAbstractSocket_protectedbase_setPeerPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
void QAbstractSocket_protectedbase_setPeerAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
void QAbstractSocket_protectedbase_setPeerName(bool* _dynamic_cast_ok, void* self, struct miqt_string name);
void QAbstractSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QAbstractSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QAbstractSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAbstractSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAbstractSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAbstractSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractSocket_staticMetaObject();
void QAbstractSocket_delete(QAbstractSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
