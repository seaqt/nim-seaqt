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

typedef struct VirtualQBuffer VirtualQBuffer;
typedef struct QBuffer_VTable{
	void (*destructor)(VirtualQBuffer* self);
	QMetaObject* (*metaObject)(const VirtualQBuffer* self);
	void* (*metacast)(VirtualQBuffer* self, const char* param1);
	int (*metacall)(VirtualQBuffer* self, int param1, int param2, void** param3);
	bool (*open)(VirtualQBuffer* self, int openMode);
	void (*close)(VirtualQBuffer* self);
	long long (*size)(const VirtualQBuffer* self);
	long long (*pos)(const VirtualQBuffer* self);
	bool (*seek)(VirtualQBuffer* self, long long off);
	bool (*atEnd)(const VirtualQBuffer* self);
	bool (*canReadLine)(const VirtualQBuffer* self);
	void (*connectNotify)(VirtualQBuffer* self, QMetaMethod* param1);
	void (*disconnectNotify)(VirtualQBuffer* self, QMetaMethod* param1);
	long long (*readData)(VirtualQBuffer* self, char* data, long long maxlen);
	long long (*writeData)(VirtualQBuffer* self, const char* data, long long len);
	bool (*isSequential)(const VirtualQBuffer* self);
	bool (*reset)(VirtualQBuffer* self);
	long long (*bytesAvailable)(const VirtualQBuffer* self);
	long long (*bytesToWrite)(const VirtualQBuffer* self);
	bool (*waitForReadyRead)(VirtualQBuffer* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQBuffer* self, int msecs);
	long long (*readLineData)(VirtualQBuffer* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQBuffer* self, long long maxSize);
	bool (*event)(VirtualQBuffer* self, QEvent* event);
	bool (*eventFilter)(VirtualQBuffer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQBuffer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQBuffer* self, QChildEvent* event);
	void (*customEvent)(VirtualQBuffer* self, QEvent* event);
}QBuffer_VTable;

const QBuffer_VTable* QBuffer_vtbl(const VirtualQBuffer* self);
void* QBuffer_vdata(const VirtualQBuffer* self);
void QBuffer_setVdata(VirtualQBuffer* self, void* vdata);

VirtualQBuffer* QBuffer_new(const QBuffer_VTable* vtbl, void* vdata);
VirtualQBuffer* QBuffer_new2(const QBuffer_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QBuffer_virtualbase_metaObject(const VirtualQBuffer* self);
void* QBuffer_virtualbase_metacast(VirtualQBuffer* self, const char* param1);
int QBuffer_virtualbase_metacall(VirtualQBuffer* self, int param1, int param2, void** param3);
bool QBuffer_virtualbase_open(VirtualQBuffer* self, int openMode);
void QBuffer_virtualbase_close(VirtualQBuffer* self);
long long QBuffer_virtualbase_size(const VirtualQBuffer* self);
long long QBuffer_virtualbase_pos(const VirtualQBuffer* self);
bool QBuffer_virtualbase_seek(VirtualQBuffer* self, long long off);
bool QBuffer_virtualbase_atEnd(const VirtualQBuffer* self);
bool QBuffer_virtualbase_canReadLine(const VirtualQBuffer* self);
void QBuffer_virtualbase_connectNotify(VirtualQBuffer* self, QMetaMethod* param1);
void QBuffer_virtualbase_disconnectNotify(VirtualQBuffer* self, QMetaMethod* param1);
long long QBuffer_virtualbase_readData(VirtualQBuffer* self, char* data, long long maxlen);
long long QBuffer_virtualbase_writeData(VirtualQBuffer* self, const char* data, long long len);
bool QBuffer_virtualbase_isSequential(const VirtualQBuffer* self);
bool QBuffer_virtualbase_reset(VirtualQBuffer* self);
long long QBuffer_virtualbase_bytesAvailable(const VirtualQBuffer* self);
long long QBuffer_virtualbase_bytesToWrite(const VirtualQBuffer* self);
bool QBuffer_virtualbase_waitForReadyRead(VirtualQBuffer* self, int msecs);
bool QBuffer_virtualbase_waitForBytesWritten(VirtualQBuffer* self, int msecs);
long long QBuffer_virtualbase_readLineData(VirtualQBuffer* self, char* data, long long maxlen);
long long QBuffer_virtualbase_skipData(VirtualQBuffer* self, long long maxSize);
bool QBuffer_virtualbase_event(VirtualQBuffer* self, QEvent* event);
bool QBuffer_virtualbase_eventFilter(VirtualQBuffer* self, QObject* watched, QEvent* event);
void QBuffer_virtualbase_timerEvent(VirtualQBuffer* self, QTimerEvent* event);
void QBuffer_virtualbase_childEvent(VirtualQBuffer* self, QChildEvent* event);
void QBuffer_virtualbase_customEvent(VirtualQBuffer* self, QEvent* event);

void QBuffer_protectedbase_setOpenMode(VirtualQBuffer* self, int openMode);
void QBuffer_protectedbase_setErrorString(VirtualQBuffer* self, struct miqt_string errorString);
QObject* QBuffer_protectedbase_sender(const VirtualQBuffer* self);
int QBuffer_protectedbase_senderSignalIndex(const VirtualQBuffer* self);
int QBuffer_protectedbase_receivers(const VirtualQBuffer* self, const char* signal);
bool QBuffer_protectedbase_isSignalConnected(const VirtualQBuffer* self, QMetaMethod* signal);

const QMetaObject* QBuffer_staticMetaObject();
void QBuffer_delete(QBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
