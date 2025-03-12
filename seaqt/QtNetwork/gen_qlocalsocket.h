#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QLOCALSOCKET_H
#define SEAQT_QTNETWORK_GEN_QLOCALSOCKET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QIODevice;
class QLocalSocket;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QLocalSocket QLocalSocket;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQLocalSocket VirtualQLocalSocket;
typedef struct QLocalSocket_VTable{
	void (*destructor)(VirtualQLocalSocket* self);
	QMetaObject* (*metaObject)(const VirtualQLocalSocket* self);
	void* (*metacast)(VirtualQLocalSocket* self, const char* param1);
	int (*metacall)(VirtualQLocalSocket* self, int param1, int param2, void** param3);
	bool (*isSequential)(const VirtualQLocalSocket* self);
	long long (*bytesAvailable)(const VirtualQLocalSocket* self);
	long long (*bytesToWrite)(const VirtualQLocalSocket* self);
	bool (*canReadLine)(const VirtualQLocalSocket* self);
	bool (*open)(VirtualQLocalSocket* self, int openMode);
	void (*close)(VirtualQLocalSocket* self);
	bool (*waitForBytesWritten)(VirtualQLocalSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQLocalSocket* self, int msecs);
	long long (*readData)(VirtualQLocalSocket* self, char* param1, long long param2);
	long long (*writeData)(VirtualQLocalSocket* self, const char* param1, long long param2);
	long long (*pos)(const VirtualQLocalSocket* self);
	long long (*size)(const VirtualQLocalSocket* self);
	bool (*seek)(VirtualQLocalSocket* self, long long pos);
	bool (*atEnd)(const VirtualQLocalSocket* self);
	bool (*reset)(VirtualQLocalSocket* self);
	long long (*readLineData)(VirtualQLocalSocket* self, char* data, long long maxlen);
	bool (*event)(VirtualQLocalSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQLocalSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLocalSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQLocalSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQLocalSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQLocalSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLocalSocket* self, QMetaMethod* signal);
}QLocalSocket_VTable;

const QLocalSocket_VTable* QLocalSocket_vtbl(const VirtualQLocalSocket* self);
void* QLocalSocket_vdata(const VirtualQLocalSocket* self);
void QLocalSocket_setVdata(VirtualQLocalSocket* self, void* vdata);

VirtualQLocalSocket* QLocalSocket_new(const QLocalSocket_VTable* vtbl, void* vdata);
VirtualQLocalSocket* QLocalSocket_new2(const QLocalSocket_VTable* vtbl, void* vdata, QObject* parent);

void QLocalSocket_virtbase(QLocalSocket* src, QIODevice** outptr_QIODevice);
QMetaObject* QLocalSocket_metaObject(const QLocalSocket* self);
void* QLocalSocket_metacast(QLocalSocket* self, const char* param1);
int QLocalSocket_metacall(QLocalSocket* self, int param1, int param2, void** param3);
struct miqt_string QLocalSocket_tr(const char* s);
struct miqt_string QLocalSocket_trUtf8(const char* s);
void QLocalSocket_connectToServer(QLocalSocket* self);
void QLocalSocket_connectToServerWithName(QLocalSocket* self, struct miqt_string name);
void QLocalSocket_disconnectFromServer(QLocalSocket* self);
void QLocalSocket_setServerName(QLocalSocket* self, struct miqt_string name);
struct miqt_string QLocalSocket_serverName(const QLocalSocket* self);
struct miqt_string QLocalSocket_fullServerName(const QLocalSocket* self);
void QLocalSocket_abort(QLocalSocket* self);
bool QLocalSocket_isSequential(const QLocalSocket* self);
long long QLocalSocket_bytesAvailable(const QLocalSocket* self);
long long QLocalSocket_bytesToWrite(const QLocalSocket* self);
bool QLocalSocket_canReadLine(const QLocalSocket* self);
bool QLocalSocket_open(QLocalSocket* self, int openMode);
void QLocalSocket_close(QLocalSocket* self);
int QLocalSocket_error(const QLocalSocket* self);
bool QLocalSocket_flush(QLocalSocket* self);
bool QLocalSocket_isValid(const QLocalSocket* self);
long long QLocalSocket_readBufferSize(const QLocalSocket* self);
void QLocalSocket_setReadBufferSize(QLocalSocket* self, long long size);
bool QLocalSocket_setSocketDescriptor(QLocalSocket* self, intptr_t socketDescriptor);
intptr_t QLocalSocket_socketDescriptor(const QLocalSocket* self);
int QLocalSocket_state(const QLocalSocket* self);
bool QLocalSocket_waitForBytesWritten(QLocalSocket* self, int msecs);
bool QLocalSocket_waitForConnected(QLocalSocket* self);
bool QLocalSocket_waitForDisconnected(QLocalSocket* self);
bool QLocalSocket_waitForReadyRead(QLocalSocket* self, int msecs);
void QLocalSocket_connected(QLocalSocket* self);
void QLocalSocket_connect_connected(VirtualQLocalSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QLocalSocket_disconnected(QLocalSocket* self);
void QLocalSocket_connect_disconnected(VirtualQLocalSocket* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QLocalSocket_errorWithSocketError(QLocalSocket* self, int socketError);
void QLocalSocket_connect_errorWithSocketError(VirtualQLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QLocalSocket_errorOccurred(QLocalSocket* self, int socketError);
void QLocalSocket_connect_errorOccurred(VirtualQLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QLocalSocket_stateChanged(QLocalSocket* self, int socketState);
void QLocalSocket_connect_stateChanged(VirtualQLocalSocket* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
long long QLocalSocket_readData(QLocalSocket* self, char* param1, long long param2);
long long QLocalSocket_writeData(QLocalSocket* self, const char* param1, long long param2);
struct miqt_string QLocalSocket_tr2(const char* s, const char* c);
struct miqt_string QLocalSocket_tr3(const char* s, const char* c, int n);
struct miqt_string QLocalSocket_trUtf82(const char* s, const char* c);
struct miqt_string QLocalSocket_trUtf83(const char* s, const char* c, int n);
void QLocalSocket_connectToServer1(QLocalSocket* self, int openMode);
void QLocalSocket_connectToServer2(QLocalSocket* self, struct miqt_string name, int openMode);
bool QLocalSocket_setSocketDescriptor2(QLocalSocket* self, intptr_t socketDescriptor, int socketState);
bool QLocalSocket_setSocketDescriptor3(QLocalSocket* self, intptr_t socketDescriptor, int socketState, int openMode);
bool QLocalSocket_waitForConnected1(QLocalSocket* self, int msecs);
bool QLocalSocket_waitForDisconnected1(QLocalSocket* self, int msecs);

QMetaObject* QLocalSocket_virtualbase_metaObject(const VirtualQLocalSocket* self);
void* QLocalSocket_virtualbase_metacast(VirtualQLocalSocket* self, const char* param1);
int QLocalSocket_virtualbase_metacall(VirtualQLocalSocket* self, int param1, int param2, void** param3);
bool QLocalSocket_virtualbase_isSequential(const VirtualQLocalSocket* self);
long long QLocalSocket_virtualbase_bytesAvailable(const VirtualQLocalSocket* self);
long long QLocalSocket_virtualbase_bytesToWrite(const VirtualQLocalSocket* self);
bool QLocalSocket_virtualbase_canReadLine(const VirtualQLocalSocket* self);
bool QLocalSocket_virtualbase_open(VirtualQLocalSocket* self, int openMode);
void QLocalSocket_virtualbase_close(VirtualQLocalSocket* self);
bool QLocalSocket_virtualbase_waitForBytesWritten(VirtualQLocalSocket* self, int msecs);
bool QLocalSocket_virtualbase_waitForReadyRead(VirtualQLocalSocket* self, int msecs);
long long QLocalSocket_virtualbase_readData(VirtualQLocalSocket* self, char* param1, long long param2);
long long QLocalSocket_virtualbase_writeData(VirtualQLocalSocket* self, const char* param1, long long param2);
long long QLocalSocket_virtualbase_pos(const VirtualQLocalSocket* self);
long long QLocalSocket_virtualbase_size(const VirtualQLocalSocket* self);
bool QLocalSocket_virtualbase_seek(VirtualQLocalSocket* self, long long pos);
bool QLocalSocket_virtualbase_atEnd(const VirtualQLocalSocket* self);
bool QLocalSocket_virtualbase_reset(VirtualQLocalSocket* self);
long long QLocalSocket_virtualbase_readLineData(VirtualQLocalSocket* self, char* data, long long maxlen);
bool QLocalSocket_virtualbase_event(VirtualQLocalSocket* self, QEvent* event);
bool QLocalSocket_virtualbase_eventFilter(VirtualQLocalSocket* self, QObject* watched, QEvent* event);
void QLocalSocket_virtualbase_timerEvent(VirtualQLocalSocket* self, QTimerEvent* event);
void QLocalSocket_virtualbase_childEvent(VirtualQLocalSocket* self, QChildEvent* event);
void QLocalSocket_virtualbase_customEvent(VirtualQLocalSocket* self, QEvent* event);
void QLocalSocket_virtualbase_connectNotify(VirtualQLocalSocket* self, QMetaMethod* signal);
void QLocalSocket_virtualbase_disconnectNotify(VirtualQLocalSocket* self, QMetaMethod* signal);

void QLocalSocket_protectedbase_setOpenMode(VirtualQLocalSocket* self, int openMode);
void QLocalSocket_protectedbase_setErrorString(VirtualQLocalSocket* self, struct miqt_string errorString);
QObject* QLocalSocket_protectedbase_sender(const VirtualQLocalSocket* self);
int QLocalSocket_protectedbase_senderSignalIndex(const VirtualQLocalSocket* self);
int QLocalSocket_protectedbase_receivers(const VirtualQLocalSocket* self, const char* signal);
bool QLocalSocket_protectedbase_isSignalConnected(const VirtualQLocalSocket* self, QMetaMethod* signal);

const QMetaObject* QLocalSocket_staticMetaObject();
void QLocalSocket_delete(QLocalSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
