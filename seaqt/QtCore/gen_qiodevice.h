#pragma once
#ifndef SEAQT_QTCORE_GEN_QIODEVICE_H
#define SEAQT_QTCORE_GEN_QIODEVICE_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQIODevice VirtualQIODevice;
typedef struct QIODevice_VTable{
	void (*destructor)(VirtualQIODevice* self);
	QMetaObject* (*metaObject)(const VirtualQIODevice* self);
	void* (*metacast)(VirtualQIODevice* self, const char* param1);
	int (*metacall)(VirtualQIODevice* self, int param1, int param2, void** param3);
	bool (*isSequential)(const VirtualQIODevice* self);
	bool (*open)(VirtualQIODevice* self, int mode);
	void (*close)(VirtualQIODevice* self);
	long long (*pos)(const VirtualQIODevice* self);
	long long (*size)(const VirtualQIODevice* self);
	bool (*seek)(VirtualQIODevice* self, long long pos);
	bool (*atEnd)(const VirtualQIODevice* self);
	bool (*reset)(VirtualQIODevice* self);
	long long (*bytesAvailable)(const VirtualQIODevice* self);
	long long (*bytesToWrite)(const VirtualQIODevice* self);
	bool (*canReadLine)(const VirtualQIODevice* self);
	bool (*waitForReadyRead)(VirtualQIODevice* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQIODevice* self, int msecs);
	long long (*readData)(VirtualQIODevice* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQIODevice* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQIODevice* self, long long maxSize);
	long long (*writeData)(VirtualQIODevice* self, const char* data, long long len);
	bool (*event)(VirtualQIODevice* self, QEvent* event);
	bool (*eventFilter)(VirtualQIODevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQIODevice* self, QTimerEvent* event);
	void (*childEvent)(VirtualQIODevice* self, QChildEvent* event);
	void (*customEvent)(VirtualQIODevice* self, QEvent* event);
	void (*connectNotify)(VirtualQIODevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQIODevice* self, QMetaMethod* signal);
}QIODevice_VTable;

const QIODevice_VTable* QIODevice_vtbl(const VirtualQIODevice* self);
void* QIODevice_vdata(const VirtualQIODevice* self);
void QIODevice_setVdata(VirtualQIODevice* self, void* vdata);

VirtualQIODevice* QIODevice_new(const QIODevice_VTable* vtbl, void* vdata);
VirtualQIODevice* QIODevice_new2(const QIODevice_VTable* vtbl, void* vdata, QObject* parent);

void QIODevice_virtbase(QIODevice* src, QObject** outptr_QObject, QIODeviceBase** outptr_QIODeviceBase);
QMetaObject* QIODevice_metaObject(const QIODevice* self);
void* QIODevice_metacast(QIODevice* self, const char* param1);
int QIODevice_metacall(QIODevice* self, int param1, int param2, void** param3);
struct miqt_string QIODevice_tr(const char* s);
int QIODevice_openMode(const QIODevice* self);
void QIODevice_setTextModeEnabled(QIODevice* self, bool enabled);
bool QIODevice_isTextModeEnabled(const QIODevice* self);
bool QIODevice_isOpen(const QIODevice* self);
bool QIODevice_isReadable(const QIODevice* self);
bool QIODevice_isWritable(const QIODevice* self);
bool QIODevice_isSequential(const QIODevice* self);
int QIODevice_readChannelCount(const QIODevice* self);
int QIODevice_writeChannelCount(const QIODevice* self);
int QIODevice_currentReadChannel(const QIODevice* self);
void QIODevice_setCurrentReadChannel(QIODevice* self, int channel);
int QIODevice_currentWriteChannel(const QIODevice* self);
void QIODevice_setCurrentWriteChannel(QIODevice* self, int channel);
bool QIODevice_open(QIODevice* self, int mode);
void QIODevice_close(QIODevice* self);
long long QIODevice_pos(const QIODevice* self);
long long QIODevice_size(const QIODevice* self);
bool QIODevice_seek(QIODevice* self, long long pos);
bool QIODevice_atEnd(const QIODevice* self);
bool QIODevice_reset(QIODevice* self);
long long QIODevice_bytesAvailable(const QIODevice* self);
long long QIODevice_bytesToWrite(const QIODevice* self);
long long QIODevice_read(QIODevice* self, char* data, long long maxlen);
struct miqt_string QIODevice_readWithMaxlen(QIODevice* self, long long maxlen);
struct miqt_string QIODevice_readAll(QIODevice* self);
long long QIODevice_readLine(QIODevice* self, char* data, long long maxlen);
struct miqt_string QIODevice_readLine2(QIODevice* self);
bool QIODevice_canReadLine(const QIODevice* self);
void QIODevice_startTransaction(QIODevice* self);
void QIODevice_commitTransaction(QIODevice* self);
void QIODevice_rollbackTransaction(QIODevice* self);
bool QIODevice_isTransactionStarted(const QIODevice* self);
long long QIODevice_write(QIODevice* self, const char* data, long long len);
long long QIODevice_writeWithData(QIODevice* self, const char* data);
long long QIODevice_write2(QIODevice* self, struct miqt_string data);
long long QIODevice_peek(QIODevice* self, char* data, long long maxlen);
struct miqt_string QIODevice_peekWithMaxlen(QIODevice* self, long long maxlen);
long long QIODevice_skip(QIODevice* self, long long maxSize);
bool QIODevice_waitForReadyRead(QIODevice* self, int msecs);
bool QIODevice_waitForBytesWritten(QIODevice* self, int msecs);
void QIODevice_ungetChar(QIODevice* self, char c);
bool QIODevice_putChar(QIODevice* self, char c);
bool QIODevice_getChar(QIODevice* self, char* c);
struct miqt_string QIODevice_errorString(const QIODevice* self);
void QIODevice_readyRead(QIODevice* self);
void QIODevice_connect_readyRead(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QIODevice_channelReadyRead(QIODevice* self, int channel);
void QIODevice_connect_channelReadyRead(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QIODevice_bytesWritten(QIODevice* self, long long bytes);
void QIODevice_connect_bytesWritten(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QIODevice_channelBytesWritten(QIODevice* self, int channel, long long bytes);
void QIODevice_connect_channelBytesWritten(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t, int, long long), void (*release)(intptr_t));
void QIODevice_aboutToClose(QIODevice* self);
void QIODevice_connect_aboutToClose(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QIODevice_readChannelFinished(QIODevice* self);
void QIODevice_connect_readChannelFinished(VirtualQIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
long long QIODevice_readData(QIODevice* self, char* data, long long maxlen);
long long QIODevice_readLineData(QIODevice* self, char* data, long long maxlen);
long long QIODevice_skipData(QIODevice* self, long long maxSize);
long long QIODevice_writeData(QIODevice* self, const char* data, long long len);
struct miqt_string QIODevice_tr2(const char* s, const char* c);
struct miqt_string QIODevice_tr3(const char* s, const char* c, int n);
struct miqt_string QIODevice_readLine1(QIODevice* self, long long maxlen);

QMetaObject* QIODevice_virtualbase_metaObject(const VirtualQIODevice* self);
void* QIODevice_virtualbase_metacast(VirtualQIODevice* self, const char* param1);
int QIODevice_virtualbase_metacall(VirtualQIODevice* self, int param1, int param2, void** param3);
bool QIODevice_virtualbase_isSequential(const VirtualQIODevice* self);
bool QIODevice_virtualbase_open(VirtualQIODevice* self, int mode);
void QIODevice_virtualbase_close(VirtualQIODevice* self);
long long QIODevice_virtualbase_pos(const VirtualQIODevice* self);
long long QIODevice_virtualbase_size(const VirtualQIODevice* self);
bool QIODevice_virtualbase_seek(VirtualQIODevice* self, long long pos);
bool QIODevice_virtualbase_atEnd(const VirtualQIODevice* self);
bool QIODevice_virtualbase_reset(VirtualQIODevice* self);
long long QIODevice_virtualbase_bytesAvailable(const VirtualQIODevice* self);
long long QIODevice_virtualbase_bytesToWrite(const VirtualQIODevice* self);
bool QIODevice_virtualbase_canReadLine(const VirtualQIODevice* self);
bool QIODevice_virtualbase_waitForReadyRead(VirtualQIODevice* self, int msecs);
bool QIODevice_virtualbase_waitForBytesWritten(VirtualQIODevice* self, int msecs);
long long QIODevice_virtualbase_readData(VirtualQIODevice* self, char* data, long long maxlen);
long long QIODevice_virtualbase_readLineData(VirtualQIODevice* self, char* data, long long maxlen);
long long QIODevice_virtualbase_skipData(VirtualQIODevice* self, long long maxSize);
long long QIODevice_virtualbase_writeData(VirtualQIODevice* self, const char* data, long long len);
bool QIODevice_virtualbase_event(VirtualQIODevice* self, QEvent* event);
bool QIODevice_virtualbase_eventFilter(VirtualQIODevice* self, QObject* watched, QEvent* event);
void QIODevice_virtualbase_timerEvent(VirtualQIODevice* self, QTimerEvent* event);
void QIODevice_virtualbase_childEvent(VirtualQIODevice* self, QChildEvent* event);
void QIODevice_virtualbase_customEvent(VirtualQIODevice* self, QEvent* event);
void QIODevice_virtualbase_connectNotify(VirtualQIODevice* self, QMetaMethod* signal);
void QIODevice_virtualbase_disconnectNotify(VirtualQIODevice* self, QMetaMethod* signal);

void QIODevice_protectedbase_setOpenMode(VirtualQIODevice* self, int openMode);
void QIODevice_protectedbase_setErrorString(VirtualQIODevice* self, struct miqt_string errorString);
QObject* QIODevice_protectedbase_sender(const VirtualQIODevice* self);
int QIODevice_protectedbase_senderSignalIndex(const VirtualQIODevice* self);
int QIODevice_protectedbase_receivers(const VirtualQIODevice* self, const char* signal);
bool QIODevice_protectedbase_isSignalConnected(const VirtualQIODevice* self, QMetaMethod* signal);

const QMetaObject* QIODevice_staticMetaObject();
void QIODevice_delete(QIODevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
