#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QTCPSOCKET_H
#define SEAQT_QTNETWORK_GEN_QTCPSOCKET_H

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
class QObject;
class QTcpSocket;
class QTimerEvent;
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
typedef struct QObject QObject;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QTcpSocket_VTable {
	void (*destructor)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self);
	QMetaObject* (*metaObject)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	void* (*metacast)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, const char* param1);
	int (*metacall)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int param1, int param2, void** param3);
	void (*resume)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self);
	bool (*bind)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self);
	long long (*bytesAvailable)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	long long (*bytesToWrite)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	void (*setReadBufferSize)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, long long size);
	intptr_t (*socketDescriptor)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	bool (*setSocketDescriptor)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int option);
	void (*close)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self);
	bool (*isSequential)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	bool (*waitForConnected)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int msecs);
	bool (*waitForBytesWritten)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int msecs);
	bool (*waitForDisconnected)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int msecs);
	long long (*readData)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, char* data, long long maxlen);
	long long (*skipData)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, long long maxSize);
	long long (*writeData)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, const char* data, long long len);
	bool (*open)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, int mode);
	long long (*pos)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	long long (*size)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	bool (*seek)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, long long pos);
	bool (*atEnd)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	bool (*reset)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self);
	bool (*canReadLine)(struct QTcpSocket_VTable* vtbl, const QTcpSocket* self);
	bool (*event)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QEvent* event);
	bool (*eventFilter)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QChildEvent* event);
	void (*customEvent)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QEvent* event);
	void (*connectNotify)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTcpSocket_VTable* vtbl, QTcpSocket* self, QMetaMethod* signal);
};
QTcpSocket* QTcpSocket_new(struct QTcpSocket_VTable* vtbl);
QTcpSocket* QTcpSocket_new2(struct QTcpSocket_VTable* vtbl, QObject* parent);
void QTcpSocket_virtbase(QTcpSocket* src, QAbstractSocket** outptr_QAbstractSocket);
QMetaObject* QTcpSocket_metaObject(const QTcpSocket* self);
void* QTcpSocket_metacast(QTcpSocket* self, const char* param1);
int QTcpSocket_metacall(QTcpSocket* self, int param1, int param2, void** param3);
struct miqt_string QTcpSocket_tr(const char* s);
bool QTcpSocket_bind(QTcpSocket* self, int addr);
struct miqt_string QTcpSocket_tr2(const char* s, const char* c);
struct miqt_string QTcpSocket_tr3(const char* s, const char* c, int n);
bool QTcpSocket_bind2(QTcpSocket* self, int addr, uint16_t port);
bool QTcpSocket_bind3(QTcpSocket* self, int addr, uint16_t port, int mode);
QMetaObject* QTcpSocket_virtualbase_metaObject(const void* self);
void* QTcpSocket_virtualbase_metacast(void* self, const char* param1);
int QTcpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QTcpSocket_virtualbase_resume(void* self);
bool QTcpSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode);
void QTcpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QTcpSocket_virtualbase_disconnectFromHost(void* self);
long long QTcpSocket_virtualbase_bytesAvailable(const void* self);
long long QTcpSocket_virtualbase_bytesToWrite(const void* self);
void QTcpSocket_virtualbase_setReadBufferSize(void* self, long long size);
intptr_t QTcpSocket_virtualbase_socketDescriptor(const void* self);
bool QTcpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);
void QTcpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);
QVariant* QTcpSocket_virtualbase_socketOption(void* self, int option);
void QTcpSocket_virtualbase_close(void* self);
bool QTcpSocket_virtualbase_isSequential(const void* self);
bool QTcpSocket_virtualbase_waitForConnected(void* self, int msecs);
bool QTcpSocket_virtualbase_waitForReadyRead(void* self, int msecs);
bool QTcpSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QTcpSocket_virtualbase_waitForDisconnected(void* self, int msecs);
long long QTcpSocket_virtualbase_readData(void* self, char* data, long long maxlen);
long long QTcpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QTcpSocket_virtualbase_skipData(void* self, long long maxSize);
long long QTcpSocket_virtualbase_writeData(void* self, const char* data, long long len);
bool QTcpSocket_virtualbase_open(void* self, int mode);
long long QTcpSocket_virtualbase_pos(const void* self);
long long QTcpSocket_virtualbase_size(const void* self);
bool QTcpSocket_virtualbase_seek(void* self, long long pos);
bool QTcpSocket_virtualbase_atEnd(const void* self);
bool QTcpSocket_virtualbase_reset(void* self);
bool QTcpSocket_virtualbase_canReadLine(const void* self);
bool QTcpSocket_virtualbase_event(void* self, QEvent* event);
bool QTcpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTcpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTcpSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QTcpSocket_virtualbase_customEvent(void* self, QEvent* event);
void QTcpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTcpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTcpSocket_protectedbase_setSocketState(void* self, int state);
void QTcpSocket_protectedbase_setSocketError(void* self, int socketError);
void QTcpSocket_protectedbase_setLocalPort(void* self, uint16_t port);
void QTcpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address);
void QTcpSocket_protectedbase_setPeerPort(void* self, uint16_t port);
void QTcpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address);
void QTcpSocket_protectedbase_setPeerName(void* self, struct miqt_string name);
void QTcpSocket_protectedbase_setOpenMode(void* self, int openMode);
void QTcpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString);
QObject* QTcpSocket_protectedbase_sender(const void* self);
int QTcpSocket_protectedbase_senderSignalIndex(const void* self);
int QTcpSocket_protectedbase_receivers(const void* self, const char* signal);
bool QTcpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTcpSocket_staticMetaObject();
void QTcpSocket_delete(QTcpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
