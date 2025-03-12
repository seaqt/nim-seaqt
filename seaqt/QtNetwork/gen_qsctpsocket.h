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

typedef struct VirtualQSctpSocket VirtualQSctpSocket;
typedef struct QSctpSocket_VTable{
	void (*destructor)(VirtualQSctpSocket* self);
	QMetaObject* (*metaObject)(const VirtualQSctpSocket* self);
	void* (*metacast)(VirtualQSctpSocket* self, const char* param1);
	int (*metacall)(VirtualQSctpSocket* self, int param1, int param2, void** param3);
	void (*close)(VirtualQSctpSocket* self);
	void (*disconnectFromHost)(VirtualQSctpSocket* self);
	long long (*readData)(VirtualQSctpSocket* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQSctpSocket* self, char* data, long long maxlen);
	void (*resume)(VirtualQSctpSocket* self);
	bool (*bind)(VirtualQSctpSocket* self, QHostAddress* address, uint16_t port, int mode);
	void (*connectToHost)(VirtualQSctpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
	long long (*bytesAvailable)(const VirtualQSctpSocket* self);
	long long (*bytesToWrite)(const VirtualQSctpSocket* self);
	void (*setReadBufferSize)(VirtualQSctpSocket* self, long long size);
	intptr_t (*socketDescriptor)(const VirtualQSctpSocket* self);
	bool (*setSocketDescriptor)(VirtualQSctpSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*setSocketOption)(VirtualQSctpSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(VirtualQSctpSocket* self, int option);
	bool (*isSequential)(const VirtualQSctpSocket* self);
	bool (*waitForConnected)(VirtualQSctpSocket* self, int msecs);
	bool (*waitForReadyRead)(VirtualQSctpSocket* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQSctpSocket* self, int msecs);
	bool (*waitForDisconnected)(VirtualQSctpSocket* self, int msecs);
	long long (*skipData)(VirtualQSctpSocket* self, long long maxSize);
	long long (*writeData)(VirtualQSctpSocket* self, const char* data, long long len);
	bool (*open)(VirtualQSctpSocket* self, int mode);
	long long (*pos)(const VirtualQSctpSocket* self);
	long long (*size)(const VirtualQSctpSocket* self);
	bool (*seek)(VirtualQSctpSocket* self, long long pos);
	bool (*atEnd)(const VirtualQSctpSocket* self);
	bool (*reset)(VirtualQSctpSocket* self);
	bool (*canReadLine)(const VirtualQSctpSocket* self);
	bool (*event)(VirtualQSctpSocket* self, QEvent* event);
	bool (*eventFilter)(VirtualQSctpSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSctpSocket* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSctpSocket* self, QChildEvent* event);
	void (*customEvent)(VirtualQSctpSocket* self, QEvent* event);
	void (*connectNotify)(VirtualQSctpSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSctpSocket* self, QMetaMethod* signal);
}QSctpSocket_VTable;

const QSctpSocket_VTable* QSctpSocket_vtbl(const VirtualQSctpSocket* self);
void* QSctpSocket_vdata(const VirtualQSctpSocket* self);
void QSctpSocket_setVdata(VirtualQSctpSocket* self, void* vdata);

VirtualQSctpSocket* QSctpSocket_new(const QSctpSocket_VTable* vtbl, void* vdata);
VirtualQSctpSocket* QSctpSocket_new2(const QSctpSocket_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QSctpSocket_virtualbase_metaObject(const VirtualQSctpSocket* self);
void* QSctpSocket_virtualbase_metacast(VirtualQSctpSocket* self, const char* param1);
int QSctpSocket_virtualbase_metacall(VirtualQSctpSocket* self, int param1, int param2, void** param3);
void QSctpSocket_virtualbase_close(VirtualQSctpSocket* self);
void QSctpSocket_virtualbase_disconnectFromHost(VirtualQSctpSocket* self);
long long QSctpSocket_virtualbase_readData(VirtualQSctpSocket* self, char* data, long long maxlen);
long long QSctpSocket_virtualbase_readLineData(VirtualQSctpSocket* self, char* data, long long maxlen);
void QSctpSocket_virtualbase_resume(VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_bind(VirtualQSctpSocket* self, QHostAddress* address, uint16_t port, int mode);
void QSctpSocket_virtualbase_connectToHost(VirtualQSctpSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
long long QSctpSocket_virtualbase_bytesAvailable(const VirtualQSctpSocket* self);
long long QSctpSocket_virtualbase_bytesToWrite(const VirtualQSctpSocket* self);
void QSctpSocket_virtualbase_setReadBufferSize(VirtualQSctpSocket* self, long long size);
intptr_t QSctpSocket_virtualbase_socketDescriptor(const VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_setSocketDescriptor(VirtualQSctpSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QSctpSocket_virtualbase_setSocketOption(VirtualQSctpSocket* self, int option, QVariant* value);
QVariant* QSctpSocket_virtualbase_socketOption(VirtualQSctpSocket* self, int option);
bool QSctpSocket_virtualbase_isSequential(const VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_waitForConnected(VirtualQSctpSocket* self, int msecs);
bool QSctpSocket_virtualbase_waitForReadyRead(VirtualQSctpSocket* self, int msecs);
bool QSctpSocket_virtualbase_waitForBytesWritten(VirtualQSctpSocket* self, int msecs);
bool QSctpSocket_virtualbase_waitForDisconnected(VirtualQSctpSocket* self, int msecs);
long long QSctpSocket_virtualbase_skipData(VirtualQSctpSocket* self, long long maxSize);
long long QSctpSocket_virtualbase_writeData(VirtualQSctpSocket* self, const char* data, long long len);
bool QSctpSocket_virtualbase_open(VirtualQSctpSocket* self, int mode);
long long QSctpSocket_virtualbase_pos(const VirtualQSctpSocket* self);
long long QSctpSocket_virtualbase_size(const VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_seek(VirtualQSctpSocket* self, long long pos);
bool QSctpSocket_virtualbase_atEnd(const VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_reset(VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_canReadLine(const VirtualQSctpSocket* self);
bool QSctpSocket_virtualbase_event(VirtualQSctpSocket* self, QEvent* event);
bool QSctpSocket_virtualbase_eventFilter(VirtualQSctpSocket* self, QObject* watched, QEvent* event);
void QSctpSocket_virtualbase_timerEvent(VirtualQSctpSocket* self, QTimerEvent* event);
void QSctpSocket_virtualbase_childEvent(VirtualQSctpSocket* self, QChildEvent* event);
void QSctpSocket_virtualbase_customEvent(VirtualQSctpSocket* self, QEvent* event);
void QSctpSocket_virtualbase_connectNotify(VirtualQSctpSocket* self, QMetaMethod* signal);
void QSctpSocket_virtualbase_disconnectNotify(VirtualQSctpSocket* self, QMetaMethod* signal);

void QSctpSocket_protectedbase_setSocketState(VirtualQSctpSocket* self, int state);
void QSctpSocket_protectedbase_setSocketError(VirtualQSctpSocket* self, int socketError);
void QSctpSocket_protectedbase_setLocalPort(VirtualQSctpSocket* self, uint16_t port);
void QSctpSocket_protectedbase_setLocalAddress(VirtualQSctpSocket* self, QHostAddress* address);
void QSctpSocket_protectedbase_setPeerPort(VirtualQSctpSocket* self, uint16_t port);
void QSctpSocket_protectedbase_setPeerAddress(VirtualQSctpSocket* self, QHostAddress* address);
void QSctpSocket_protectedbase_setPeerName(VirtualQSctpSocket* self, struct miqt_string name);
void QSctpSocket_protectedbase_setOpenMode(VirtualQSctpSocket* self, int openMode);
void QSctpSocket_protectedbase_setErrorString(VirtualQSctpSocket* self, struct miqt_string errorString);
QObject* QSctpSocket_protectedbase_sender(const VirtualQSctpSocket* self);
int QSctpSocket_protectedbase_senderSignalIndex(const VirtualQSctpSocket* self);
int QSctpSocket_protectedbase_receivers(const VirtualQSctpSocket* self, const char* signal);
bool QSctpSocket_protectedbase_isSignalConnected(const VirtualQSctpSocket* self, QMetaMethod* signal);

const QMetaObject* QSctpSocket_staticMetaObject();
void QSctpSocket_delete(QSctpSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
