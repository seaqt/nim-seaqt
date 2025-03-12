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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQTcpSocket VirtualQTcpSocket;
typedef struct QTcpSocket_VTable{
	void (*destructor)(VirtualQTcpSocket* self);
	QMetaObject* (*metaObject)(const VirtualQTcpSocket* self);
	void* (*metacast)(VirtualQTcpSocket* self, const char* param1);
	int (*metacall)(VirtualQTcpSocket* self, int param1, int param2, void** param3);
	void (*resume)(VirtualQTcpSocket* self);
	void (*connectToHost)(VirtualQTcpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	void (*disconnectFromHost)(VirtualQTcpSocket* self);
	long long (*bytesAvailable)(const VirtualQTcpSocket* self);
	long long (*bytesToWrite)(const VirtualQTcpSocket* self);
	bool (*canReadLine)(const VirtualQTcpSocket* self);
	void (*setReadBufferSize)(VirtualQTcpSocket* self, long long size);
	intptr_t (*socketDescriptor)(const VirtualQTcpSocket* self);
	bool (*setSocketDescriptor)(VirtualQTcpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(VirtualQTcpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(VirtualQTcpSocket* self, int option);
	void (*close)(VirtualQTcpSocket* self);
	bool (*isSequential)(const VirtualQTcpSocket* self);
	bool (*atEnd)(const VirtualQTcpSocket* self);
	bool (*waitForConnected)(VirtualQTcpSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQTcpSocket* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQTcpSocket* self, int msecs);
	bool (*waitForDisconnected)(VirtualQTcpSocket* self, int msecs);
	long long (*readData)(VirtualQTcpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQTcpSocket* self, char* data, long long maxlen);
	long long (*writeData)(VirtualQTcpSocket* self, const char* data, long long len);
	bool (*open)(VirtualQTcpSocket* self, int mode);
	long long (*pos)(const VirtualQTcpSocket* self);
	long long (*size)(const VirtualQTcpSocket* self);
	bool (*seek)(VirtualQTcpSocket* self, long long pos);
	bool (*reset)(VirtualQTcpSocket* self);
	bool (*event)(VirtualQTcpSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQTcpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTcpSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTcpSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQTcpSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQTcpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTcpSocket* self, QMetaMethod* signal);
}QTcpSocket_VTable;

const QTcpSocket_VTable* QTcpSocket_vtbl(const VirtualQTcpSocket* self);
void* QTcpSocket_vdata(const VirtualQTcpSocket* self);
void QTcpSocket_setVdata(VirtualQTcpSocket* self, void* vdata);

VirtualQTcpSocket* QTcpSocket_new(const QTcpSocket_VTable* vtbl, void* vdata);
VirtualQTcpSocket* QTcpSocket_new2(const QTcpSocket_VTable* vtbl, void* vdata, QObject* parent);

void QTcpSocket_virtbase(QTcpSocket* src, QAbstractSocket** outptr_QAbstractSocket);
QMetaObject* QTcpSocket_metaObject(const QTcpSocket* self);
void* QTcpSocket_metacast(QTcpSocket* self, const char* param1);
int QTcpSocket_metacall(QTcpSocket* self, int param1, int param2, void** param3);
struct miqt_string QTcpSocket_tr(const char* s);
struct miqt_string QTcpSocket_trUtf8(const char* s);
struct miqt_string QTcpSocket_tr2(const char* s, const char* c);
struct miqt_string QTcpSocket_tr3(const char* s, const char* c, int n);
struct miqt_string QTcpSocket_trUtf82(const char* s, const char* c);
struct miqt_string QTcpSocket_trUtf83(const char* s, const char* c, int n);

QMetaObject* QTcpSocket_virtualbase_metaObject(const VirtualQTcpSocket* self);
void* QTcpSocket_virtualbase_metacast(VirtualQTcpSocket* self, const char* param1);
int QTcpSocket_virtualbase_metacall(VirtualQTcpSocket* self, int param1, int param2, void** param3);
void QTcpSocket_virtualbase_resume(VirtualQTcpSocket* self);
void QTcpSocket_virtualbase_connectToHost(VirtualQTcpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QTcpSocket_virtualbase_disconnectFromHost(VirtualQTcpSocket* self);
long long QTcpSocket_virtualbase_bytesAvailable(const VirtualQTcpSocket* self);
long long QTcpSocket_virtualbase_bytesToWrite(const VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_canReadLine(const VirtualQTcpSocket* self);
void QTcpSocket_virtualbase_setReadBufferSize(VirtualQTcpSocket* self, long long size);
intptr_t QTcpSocket_virtualbase_socketDescriptor(const VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_setSocketDescriptor(VirtualQTcpSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QTcpSocket_virtualbase_setSocketOption(VirtualQTcpSocket* self, int option, QVariant* value);
QVariant* QTcpSocket_virtualbase_socketOption(VirtualQTcpSocket* self, int option);
void QTcpSocket_virtualbase_close(VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_isSequential(const VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_atEnd(const VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_waitForConnected(VirtualQTcpSocket* self, int msecs);
bool QTcpSocket_virtualbase_waitForReadyRead(VirtualQTcpSocket* self, int msecs);
bool QTcpSocket_virtualbase_waitForBytesWritten(VirtualQTcpSocket* self, int msecs);
bool QTcpSocket_virtualbase_waitForDisconnected(VirtualQTcpSocket* self, int msecs);
long long QTcpSocket_virtualbase_readData(VirtualQTcpSocket* self, char* data, long long maxlen);
long long QTcpSocket_virtualbase_readLineData(VirtualQTcpSocket* self, char* data, long long maxlen);
long long QTcpSocket_virtualbase_writeData(VirtualQTcpSocket* self, const char* data, long long len);
bool QTcpSocket_virtualbase_open(VirtualQTcpSocket* self, int mode);
long long QTcpSocket_virtualbase_pos(const VirtualQTcpSocket* self);
long long QTcpSocket_virtualbase_size(const VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_seek(VirtualQTcpSocket* self, long long pos);
bool QTcpSocket_virtualbase_reset(VirtualQTcpSocket* self);
bool QTcpSocket_virtualbase_event(VirtualQTcpSocket* self, QEvent* event);
bool QTcpSocket_virtualbase_eventFilter(VirtualQTcpSocket* self, QObject* watched, QEvent* event);
void QTcpSocket_virtualbase_timerEvent(VirtualQTcpSocket* self, QTimerEvent* event);
void QTcpSocket_virtualbase_childEvent(VirtualQTcpSocket* self, QChildEvent* event);
void QTcpSocket_virtualbase_customEvent(VirtualQTcpSocket* self, QEvent* event);
void QTcpSocket_virtualbase_connectNotify(VirtualQTcpSocket* self, QMetaMethod* signal);
void QTcpSocket_virtualbase_disconnectNotify(VirtualQTcpSocket* self, QMetaMethod* signal);

void QTcpSocket_protectedbase_setSocketState(VirtualQTcpSocket* self, int state);
void QTcpSocket_protectedbase_setSocketError(VirtualQTcpSocket* self, int socketError);
void QTcpSocket_protectedbase_setLocalPort(VirtualQTcpSocket* self, uint16_t port);
void QTcpSocket_protectedbase_setLocalAddress(VirtualQTcpSocket* self, QHostAddress* address);
void QTcpSocket_protectedbase_setPeerPort(VirtualQTcpSocket* self, uint16_t port);
void QTcpSocket_protectedbase_setPeerAddress(VirtualQTcpSocket* self, QHostAddress* address);
void QTcpSocket_protectedbase_setPeerName(VirtualQTcpSocket* self, struct miqt_string name);
void QTcpSocket_protectedbase_setOpenMode(VirtualQTcpSocket* self, int openMode);
void QTcpSocket_protectedbase_setErrorString(VirtualQTcpSocket* self, struct miqt_string errorString);
QObject* QTcpSocket_protectedbase_sender(const VirtualQTcpSocket* self);
int QTcpSocket_protectedbase_senderSignalIndex(const VirtualQTcpSocket* self);
int QTcpSocket_protectedbase_receivers(const VirtualQTcpSocket* self, const char* signal);
bool QTcpSocket_protectedbase_isSignalConnected(const VirtualQTcpSocket* self, QMetaMethod* signal);

const QMetaObject* QTcpSocket_staticMetaObject();
void QTcpSocket_delete(QTcpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
