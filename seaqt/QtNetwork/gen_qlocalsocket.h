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
class QIODeviceBase;
class QLocalSocket;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QLocalSocket QLocalSocket;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QLocalSocket_VTable {
	void (*destructor)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self);
	QMetaObject* (*metaObject)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	void* (*metacast)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, const char* param1);
	int (*metacall)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, int param1, int param2, void** param3);
	bool (*isSequential)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	long long (*bytesAvailable)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	long long (*bytesToWrite)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	bool (*canReadLine)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	bool (*open)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, int openMode);
	void (*close)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self);
	bool (*waitForBytesWritten)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, int msecs);
	long long (*readData)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, char* param1, long long param2);
	long long (*readLineData)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, char* data, long long maxSize);
	long long (*skipData)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, long long maxSize);
	long long (*writeData)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, const char* param1, long long param2);
	long long (*pos)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	long long (*size)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	bool (*seek)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, long long pos);
	bool (*atEnd)(struct QLocalSocket_VTable* vtbl, const QLocalSocket* self);
	bool (*reset)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self);
	bool (*event)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QEvent* event);
	bool (*eventFilter)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QChildEvent* event);
	void (*customEvent)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QEvent* event);
	void (*connectNotify)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLocalSocket_VTable* vtbl, QLocalSocket* self, QMetaMethod* signal);
};
QLocalSocket* QLocalSocket_new(struct QLocalSocket_VTable* vtbl);
QLocalSocket* QLocalSocket_new2(struct QLocalSocket_VTable* vtbl, QObject* parent);
void QLocalSocket_virtbase(QLocalSocket* src, QIODevice** outptr_QIODevice);
QMetaObject* QLocalSocket_metaObject(const QLocalSocket* self);
void* QLocalSocket_metacast(QLocalSocket* self, const char* param1);
int QLocalSocket_metacall(QLocalSocket* self, int param1, int param2, void** param3);
struct miqt_string QLocalSocket_tr(const char* s);
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
void QLocalSocket_setSocketOptions(QLocalSocket* self, int option);
int QLocalSocket_socketOptions(const QLocalSocket* self);
int QLocalSocket_state(const QLocalSocket* self);
bool QLocalSocket_waitForBytesWritten(QLocalSocket* self, int msecs);
bool QLocalSocket_waitForConnected(QLocalSocket* self);
bool QLocalSocket_waitForDisconnected(QLocalSocket* self);
bool QLocalSocket_waitForReadyRead(QLocalSocket* self, int msecs);
void QLocalSocket_connected(QLocalSocket* self);
void QLocalSocket_connect_connected(QLocalSocket* self, intptr_t slot);
void QLocalSocket_disconnected(QLocalSocket* self);
void QLocalSocket_connect_disconnected(QLocalSocket* self, intptr_t slot);
void QLocalSocket_errorOccurred(QLocalSocket* self, int socketError);
void QLocalSocket_connect_errorOccurred(QLocalSocket* self, intptr_t slot);
void QLocalSocket_stateChanged(QLocalSocket* self, int socketState);
void QLocalSocket_connect_stateChanged(QLocalSocket* self, intptr_t slot);
long long QLocalSocket_readData(QLocalSocket* self, char* param1, long long param2);
long long QLocalSocket_readLineData(QLocalSocket* self, char* data, long long maxSize);
long long QLocalSocket_skipData(QLocalSocket* self, long long maxSize);
long long QLocalSocket_writeData(QLocalSocket* self, const char* param1, long long param2);
struct miqt_string QLocalSocket_tr2(const char* s, const char* c);
struct miqt_string QLocalSocket_tr3(const char* s, const char* c, int n);
void QLocalSocket_connectToServer1(QLocalSocket* self, int openMode);
void QLocalSocket_connectToServer2(QLocalSocket* self, struct miqt_string name, int openMode);
bool QLocalSocket_setSocketDescriptor2(QLocalSocket* self, intptr_t socketDescriptor, int socketState);
bool QLocalSocket_setSocketDescriptor3(QLocalSocket* self, intptr_t socketDescriptor, int socketState, int openMode);
bool QLocalSocket_waitForConnected1(QLocalSocket* self, int msecs);
bool QLocalSocket_waitForDisconnected1(QLocalSocket* self, int msecs);
QMetaObject* QLocalSocket_virtualbase_metaObject(const void* self);
void* QLocalSocket_virtualbase_metacast(void* self, const char* param1);
int QLocalSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QLocalSocket_virtualbase_isSequential(const void* self);
long long QLocalSocket_virtualbase_bytesAvailable(const void* self);
long long QLocalSocket_virtualbase_bytesToWrite(const void* self);
bool QLocalSocket_virtualbase_canReadLine(const void* self);
bool QLocalSocket_virtualbase_open(void* self, int openMode);
void QLocalSocket_virtualbase_close(void* self);
bool QLocalSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QLocalSocket_virtualbase_waitForReadyRead(void* self, int msecs);
long long QLocalSocket_virtualbase_readData(void* self, char* param1, long long param2);
long long QLocalSocket_virtualbase_readLineData(void* self, char* data, long long maxSize);
long long QLocalSocket_virtualbase_skipData(void* self, long long maxSize);
long long QLocalSocket_virtualbase_writeData(void* self, const char* param1, long long param2);
long long QLocalSocket_virtualbase_pos(const void* self);
long long QLocalSocket_virtualbase_size(const void* self);
bool QLocalSocket_virtualbase_seek(void* self, long long pos);
bool QLocalSocket_virtualbase_atEnd(const void* self);
bool QLocalSocket_virtualbase_reset(void* self);
bool QLocalSocket_virtualbase_event(void* self, QEvent* event);
bool QLocalSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLocalSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLocalSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QLocalSocket_virtualbase_customEvent(void* self, QEvent* event);
void QLocalSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLocalSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QLocalSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QLocalSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QLocalSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QLocalSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QLocalSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QLocalSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QLocalSocket_staticMetaObject();
void QLocalSocket_delete(QLocalSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
