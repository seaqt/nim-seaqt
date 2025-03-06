#pragma once
#ifndef SEAQT_QTCORE_GEN_QBUFFER_H
#define SEAQT_QTCORE_GEN_QBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBuffer;
class QChildEvent;
class QEvent;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QBuffer QBuffer;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QBuffer_VTable {
	void (*destructor)(struct QBuffer_VTable* vtbl, QBuffer* self);
	QMetaObject* (*metaObject)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	void* (*metacast)(struct QBuffer_VTable* vtbl, QBuffer* self, const char* param1);
	int (*metacall)(struct QBuffer_VTable* vtbl, QBuffer* self, int param1, int param2, void** param3);
	bool (*open)(struct QBuffer_VTable* vtbl, QBuffer* self, int openMode);
	void (*close)(struct QBuffer_VTable* vtbl, QBuffer* self);
	long long (*size)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	long long (*pos)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	bool (*seek)(struct QBuffer_VTable* vtbl, QBuffer* self, long long off);
	bool (*atEnd)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	bool (*canReadLine)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	void (*connectNotify)(struct QBuffer_VTable* vtbl, QBuffer* self, QMetaMethod* param1);
	void (*disconnectNotify)(struct QBuffer_VTable* vtbl, QBuffer* self, QMetaMethod* param1);
	long long (*readData)(struct QBuffer_VTable* vtbl, QBuffer* self, char* data, long long maxlen);
	long long (*writeData)(struct QBuffer_VTable* vtbl, QBuffer* self, const char* data, long long len);
	bool (*isSequential)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	bool (*reset)(struct QBuffer_VTable* vtbl, QBuffer* self);
	long long (*bytesAvailable)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	long long (*bytesToWrite)(struct QBuffer_VTable* vtbl, const QBuffer* self);
	bool (*waitForReadyRead)(struct QBuffer_VTable* vtbl, QBuffer* self, int msecs);
	bool (*waitForBytesWritten)(struct QBuffer_VTable* vtbl, QBuffer* self, int msecs);
	long long (*readLineData)(struct QBuffer_VTable* vtbl, QBuffer* self, char* data, long long maxlen);
	long long (*skipData)(struct QBuffer_VTable* vtbl, QBuffer* self, long long maxSize);
	bool (*event)(struct QBuffer_VTable* vtbl, QBuffer* self, QEvent* event);
	bool (*eventFilter)(struct QBuffer_VTable* vtbl, QBuffer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QBuffer_VTable* vtbl, QBuffer* self, QTimerEvent* event);
	void (*childEvent)(struct QBuffer_VTable* vtbl, QBuffer* self, QChildEvent* event);
	void (*customEvent)(struct QBuffer_VTable* vtbl, QBuffer* self, QEvent* event);
};
QBuffer* QBuffer_new(struct QBuffer_VTable* vtbl);
QBuffer* QBuffer_new2(struct QBuffer_VTable* vtbl, QObject* parent);
void QBuffer_virtbase(QBuffer* src, QIODevice** outptr_QIODevice);
QMetaObject* QBuffer_metaObject(const QBuffer* self);
void* QBuffer_metacast(QBuffer* self, const char* param1);
int QBuffer_metacall(QBuffer* self, int param1, int param2, void** param3);
struct miqt_string QBuffer_tr(const char* s);
struct miqt_string QBuffer_buffer(QBuffer* self);
struct miqt_string QBuffer_buffer2(const QBuffer* self);
void QBuffer_setData(QBuffer* self, struct miqt_string data);
void QBuffer_setData2(QBuffer* self, const char* data, int len);
struct miqt_string QBuffer_data(const QBuffer* self);
bool QBuffer_open(QBuffer* self, int openMode);
void QBuffer_close(QBuffer* self);
long long QBuffer_size(const QBuffer* self);
long long QBuffer_pos(const QBuffer* self);
bool QBuffer_seek(QBuffer* self, long long off);
bool QBuffer_atEnd(const QBuffer* self);
bool QBuffer_canReadLine(const QBuffer* self);
void QBuffer_connectNotify(QBuffer* self, QMetaMethod* param1);
void QBuffer_disconnectNotify(QBuffer* self, QMetaMethod* param1);
long long QBuffer_readData(QBuffer* self, char* data, long long maxlen);
long long QBuffer_writeData(QBuffer* self, const char* data, long long len);
struct miqt_string QBuffer_tr2(const char* s, const char* c);
struct miqt_string QBuffer_tr3(const char* s, const char* c, int n);
QMetaObject* QBuffer_virtualbase_metaObject(const void* self);
void* QBuffer_virtualbase_metacast(void* self, const char* param1);
int QBuffer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QBuffer_virtualbase_open(void* self, int openMode);
void QBuffer_virtualbase_close(void* self);
long long QBuffer_virtualbase_size(const void* self);
long long QBuffer_virtualbase_pos(const void* self);
bool QBuffer_virtualbase_seek(void* self, long long off);
bool QBuffer_virtualbase_atEnd(const void* self);
bool QBuffer_virtualbase_canReadLine(const void* self);
void QBuffer_virtualbase_connectNotify(void* self, QMetaMethod* param1);
void QBuffer_virtualbase_disconnectNotify(void* self, QMetaMethod* param1);
long long QBuffer_virtualbase_readData(void* self, char* data, long long maxlen);
long long QBuffer_virtualbase_writeData(void* self, const char* data, long long len);
bool QBuffer_virtualbase_isSequential(const void* self);
bool QBuffer_virtualbase_reset(void* self);
long long QBuffer_virtualbase_bytesAvailable(const void* self);
long long QBuffer_virtualbase_bytesToWrite(const void* self);
bool QBuffer_virtualbase_waitForReadyRead(void* self, int msecs);
bool QBuffer_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QBuffer_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QBuffer_virtualbase_skipData(void* self, long long maxSize);
bool QBuffer_virtualbase_event(void* self, QEvent* event);
bool QBuffer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QBuffer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QBuffer_virtualbase_childEvent(void* self, QChildEvent* event);
void QBuffer_virtualbase_customEvent(void* self, QEvent* event);
void QBuffer_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QBuffer_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QBuffer_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QBuffer_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QBuffer_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QBuffer_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QBuffer_staticMetaObject();
void QBuffer_delete(QBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
