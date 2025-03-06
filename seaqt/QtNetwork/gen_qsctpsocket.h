#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QSCTPSOCKET_H
#define SEAQT_QTNETWORK_GEN_QSCTPSOCKET_H

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
class QObject;
class QSctpSocket;
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
typedef struct QNetworkDatagram QNetworkDatagram;
typedef struct QObject QObject;
typedef struct QSctpSocket QSctpSocket;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QSctpSocket_VTable {
	void (*destructor)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self);
	QMetaObject* (*metaObject)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	void* (*metacast)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, const char* param1);
	int (*metacall)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int param1, int param2, void** param3);
	void (*close)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self);
	void (*disconnectFromHost)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self);
	long long (*readData)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, char* data, long long maxlen);
	void (*resume)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self);
	bool (*bind)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	long long (*bytesAvailable)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	long long (*bytesToWrite)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	void (*setReadBufferSize)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, long long size);
	intptr_t (*socketDescriptor)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	bool (*setSocketDescriptor)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int option);
	bool (*isSequential)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	bool (*waitForConnected)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int msecs);
	bool (*waitForBytesWritten)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int msecs);
	bool (*waitForDisconnected)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int msecs);
	long long (*skipData)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, long long maxSize);
	long long (*writeData)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, const char* data, long long len);
	bool (*open)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, int mode);
	long long (*pos)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	long long (*size)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	bool (*seek)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, long long pos);
	bool (*atEnd)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	bool (*reset)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self);
	bool (*canReadLine)(struct QSctpSocket_VTable* vtbl, const QSctpSocket* self);
	bool (*event)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QEvent* event);
	bool (*eventFilter)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QChildEvent* event);
	void (*customEvent)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QEvent* event);
	void (*connectNotify)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSctpSocket_VTable* vtbl, QSctpSocket* self, QMetaMethod* signal);
};
QSctpSocket* QSctpSocket_new(struct QSctpSocket_VTable* vtbl);
QSctpSocket* QSctpSocket_new2(struct QSctpSocket_VTable* vtbl, QObject* parent);
void QSctpSocket_virtbase(QSctpSocket* src, QTcpSocket** outptr_QTcpSocket);
QMetaObject* QSctpSocket_metaObject(const QSctpSocket* self);
void* QSctpSocket_metacast(QSctpSocket* self, const char* param1);
int QSctpSocket_metacall(QSctpSocket* self, int param1, int param2, void** param3);
struct miqt_string QSctpSocket_tr(const char* s);
void QSctpSocket_close(QSctpSocket* self);
void QSctpSocket_disconnectFromHost(QSctpSocket* self);
void QSctpSocket_setMaximumChannelCount(QSctpSocket* self, int count);
int QSctpSocket_maximumChannelCount(const QSctpSocket* self);
bool QSctpSocket_isInDatagramMode(const QSctpSocket* self);
QNetworkDatagram* QSctpSocket_readDatagram(QSctpSocket* self);
bool QSctpSocket_writeDatagram(QSctpSocket* self, QNetworkDatagram* datagram);
long long QSctpSocket_readData(QSctpSocket* self, char* data, long long maxlen);
long long QSctpSocket_readLineData(QSctpSocket* self, char* data, long long maxlen);
struct miqt_string QSctpSocket_tr2(const char* s, const char* c);
struct miqt_string QSctpSocket_tr3(const char* s, const char* c, int n);
QMetaObject* QSctpSocket_virtualbase_metaObject(const void* self);
void* QSctpSocket_virtualbase_metacast(void* self, const char* param1);
int QSctpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSctpSocket_virtualbase_close(void* self);
void QSctpSocket_virtualbase_disconnectFromHost(void* self);
long long QSctpSocket_virtualbase_readData(void* self, char* data, long long maxlen);
long long QSctpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);
void QSctpSocket_virtualbase_resume(void* self);
bool QSctpSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode);
void QSctpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
long long QSctpSocket_virtualbase_bytesAvailable(const void* self);
long long QSctpSocket_virtualbase_bytesToWrite(const void* self);
void QSctpSocket_virtualbase_setReadBufferSize(void* self, long long size);
intptr_t QSctpSocket_virtualbase_socketDescriptor(const void* self);
bool QSctpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);
void QSctpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);
QVariant* QSctpSocket_virtualbase_socketOption(void* self, int option);
bool QSctpSocket_virtualbase_isSequential(const void* self);
bool QSctpSocket_virtualbase_waitForConnected(void* self, int msecs);
bool QSctpSocket_virtualbase_waitForReadyRead(void* self, int msecs);
bool QSctpSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QSctpSocket_virtualbase_waitForDisconnected(void* self, int msecs);
long long QSctpSocket_virtualbase_skipData(void* self, long long maxSize);
long long QSctpSocket_virtualbase_writeData(void* self, const char* data, long long len);
bool QSctpSocket_virtualbase_open(void* self, int mode);
long long QSctpSocket_virtualbase_pos(const void* self);
long long QSctpSocket_virtualbase_size(const void* self);
bool QSctpSocket_virtualbase_seek(void* self, long long pos);
bool QSctpSocket_virtualbase_atEnd(const void* self);
bool QSctpSocket_virtualbase_reset(void* self);
bool QSctpSocket_virtualbase_canReadLine(const void* self);
bool QSctpSocket_virtualbase_event(void* self, QEvent* event);
bool QSctpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSctpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSctpSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QSctpSocket_virtualbase_customEvent(void* self, QEvent* event);
void QSctpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSctpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSctpSocket_protectedbase_setSocketState(bool* _dynamic_cast_ok, void* self, int state);
void QSctpSocket_protectedbase_setSocketError(bool* _dynamic_cast_ok, void* self, int socketError);
void QSctpSocket_protectedbase_setLocalPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
void QSctpSocket_protectedbase_setLocalAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
void QSctpSocket_protectedbase_setPeerPort(bool* _dynamic_cast_ok, void* self, uint16_t port);
void QSctpSocket_protectedbase_setPeerAddress(bool* _dynamic_cast_ok, void* self, QHostAddress* address);
void QSctpSocket_protectedbase_setPeerName(bool* _dynamic_cast_ok, void* self, struct miqt_string name);
void QSctpSocket_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QSctpSocket_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QSctpSocket_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSctpSocket_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSctpSocket_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSctpSocket_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSctpSocket_staticMetaObject();
void QSctpSocket_delete(QSctpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
