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
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QIODevice_VTable {
	void (*destructor)(struct QIODevice_VTable* vtbl, QIODevice* self);
	QMetaObject* (*metaObject)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	void* (*metacast)(struct QIODevice_VTable* vtbl, QIODevice* self, const char* param1);
	int (*metacall)(struct QIODevice_VTable* vtbl, QIODevice* self, int param1, int param2, void** param3);
	bool (*isSequential)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	bool (*open)(struct QIODevice_VTable* vtbl, QIODevice* self, int mode);
	void (*close)(struct QIODevice_VTable* vtbl, QIODevice* self);
	long long (*pos)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	long long (*size)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	bool (*seek)(struct QIODevice_VTable* vtbl, QIODevice* self, long long pos);
	bool (*atEnd)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	bool (*reset)(struct QIODevice_VTable* vtbl, QIODevice* self);
	long long (*bytesAvailable)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	long long (*bytesToWrite)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	bool (*canReadLine)(struct QIODevice_VTable* vtbl, const QIODevice* self);
	bool (*waitForReadyRead)(struct QIODevice_VTable* vtbl, QIODevice* self, int msecs);
	bool (*waitForBytesWritten)(struct QIODevice_VTable* vtbl, QIODevice* self, int msecs);
	long long (*readData)(struct QIODevice_VTable* vtbl, QIODevice* self, char* data, long long maxlen);
	long long (*readLineData)(struct QIODevice_VTable* vtbl, QIODevice* self, char* data, long long maxlen);
	long long (*writeData)(struct QIODevice_VTable* vtbl, QIODevice* self, const char* data, long long len);
	bool (*event)(struct QIODevice_VTable* vtbl, QIODevice* self, QEvent* event);
	bool (*eventFilter)(struct QIODevice_VTable* vtbl, QIODevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QIODevice_VTable* vtbl, QIODevice* self, QTimerEvent* event);
	void (*childEvent)(struct QIODevice_VTable* vtbl, QIODevice* self, QChildEvent* event);
	void (*customEvent)(struct QIODevice_VTable* vtbl, QIODevice* self, QEvent* event);
	void (*connectNotify)(struct QIODevice_VTable* vtbl, QIODevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QIODevice_VTable* vtbl, QIODevice* self, QMetaMethod* signal);
};
QIODevice* QIODevice_new(struct QIODevice_VTable* vtbl);
QIODevice* QIODevice_new2(struct QIODevice_VTable* vtbl, QObject* parent);
void QIODevice_virtbase(QIODevice* src, QObject** outptr_QObject);
QMetaObject* QIODevice_metaObject(const QIODevice* self);
void* QIODevice_metacast(QIODevice* self, const char* param1);
int QIODevice_metacall(QIODevice* self, int param1, int param2, void** param3);
struct miqt_string QIODevice_tr(const char* s);
struct miqt_string QIODevice_trUtf8(const char* s);
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
void QIODevice_connect_readyRead(QIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QIODevice_channelReadyRead(QIODevice* self, int channel);
void QIODevice_connect_channelReadyRead(QIODevice* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QIODevice_bytesWritten(QIODevice* self, long long bytes);
void QIODevice_connect_bytesWritten(QIODevice* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QIODevice_channelBytesWritten(QIODevice* self, int channel, long long bytes);
void QIODevice_connect_channelBytesWritten(QIODevice* self, intptr_t slot, void (*callback)(intptr_t, int, long long), void (*release)(intptr_t));
void QIODevice_aboutToClose(QIODevice* self);
void QIODevice_connect_aboutToClose(QIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QIODevice_readChannelFinished(QIODevice* self);
void QIODevice_connect_readChannelFinished(QIODevice* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
long long QIODevice_readData(QIODevice* self, char* data, long long maxlen);
long long QIODevice_readLineData(QIODevice* self, char* data, long long maxlen);
long long QIODevice_writeData(QIODevice* self, const char* data, long long len);
struct miqt_string QIODevice_tr2(const char* s, const char* c);
struct miqt_string QIODevice_tr3(const char* s, const char* c, int n);
struct miqt_string QIODevice_trUtf82(const char* s, const char* c);
struct miqt_string QIODevice_trUtf83(const char* s, const char* c, int n);
struct miqt_string QIODevice_readLine1(QIODevice* self, long long maxlen);
QMetaObject* QIODevice_virtualbase_metaObject(const void* self);
void* QIODevice_virtualbase_metacast(void* self, const char* param1);
int QIODevice_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QIODevice_virtualbase_isSequential(const void* self);
bool QIODevice_virtualbase_open(void* self, int mode);
void QIODevice_virtualbase_close(void* self);
long long QIODevice_virtualbase_pos(const void* self);
long long QIODevice_virtualbase_size(const void* self);
bool QIODevice_virtualbase_seek(void* self, long long pos);
bool QIODevice_virtualbase_atEnd(const void* self);
bool QIODevice_virtualbase_reset(void* self);
long long QIODevice_virtualbase_bytesAvailable(const void* self);
long long QIODevice_virtualbase_bytesToWrite(const void* self);
bool QIODevice_virtualbase_canReadLine(const void* self);
bool QIODevice_virtualbase_waitForReadyRead(void* self, int msecs);
bool QIODevice_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QIODevice_virtualbase_readData(void* self, char* data, long long maxlen);
long long QIODevice_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QIODevice_virtualbase_writeData(void* self, const char* data, long long len);
bool QIODevice_virtualbase_event(void* self, QEvent* event);
bool QIODevice_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QIODevice_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QIODevice_virtualbase_childEvent(void* self, QChildEvent* event);
void QIODevice_virtualbase_customEvent(void* self, QEvent* event);
void QIODevice_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QIODevice_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QIODevice_protectedbase_setOpenMode(void* self, int openMode);
void QIODevice_protectedbase_setErrorString(void* self, struct miqt_string errorString);
QObject* QIODevice_protectedbase_sender(const void* self);
int QIODevice_protectedbase_senderSignalIndex(const void* self);
int QIODevice_protectedbase_receivers(const void* self, const char* signal);
bool QIODevice_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QIODevice_staticMetaObject();
void QIODevice_delete(QIODevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
