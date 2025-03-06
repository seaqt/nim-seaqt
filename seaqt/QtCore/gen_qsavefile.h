#pragma once
#ifndef SEAQT_QTCORE_GEN_QSAVEFILE_H
#define SEAQT_QTCORE_GEN_QSAVEFILE_H

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
class QFileDevice;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSaveFile;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileDevice QFileDevice;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSaveFile QSaveFile;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSaveFile_VTable {
	void (*destructor)(struct QSaveFile_VTable* vtbl, QSaveFile* self);
	QMetaObject* (*metaObject)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	void* (*metacast)(struct QSaveFile_VTable* vtbl, QSaveFile* self, const char* param1);
	int (*metacall)(struct QSaveFile_VTable* vtbl, QSaveFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*open)(struct QSaveFile_VTable* vtbl, QSaveFile* self, int flags);
	long long (*writeData)(struct QSaveFile_VTable* vtbl, QSaveFile* self, const char* data, long long len);
	bool (*isSequential)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	long long (*pos)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*seek)(struct QSaveFile_VTable* vtbl, QSaveFile* self, long long offset);
	bool (*atEnd)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	long long (*size)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*resize)(struct QSaveFile_VTable* vtbl, QSaveFile* self, long long sz);
	int (*permissions)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*setPermissions)(struct QSaveFile_VTable* vtbl, QSaveFile* self, int permissionSpec);
	long long (*readData)(struct QSaveFile_VTable* vtbl, QSaveFile* self, char* data, long long maxlen);
	long long (*readLineData)(struct QSaveFile_VTable* vtbl, QSaveFile* self, char* data, long long maxlen);
	bool (*reset)(struct QSaveFile_VTable* vtbl, QSaveFile* self);
	long long (*bytesAvailable)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	long long (*bytesToWrite)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*canReadLine)(struct QSaveFile_VTable* vtbl, const QSaveFile* self);
	bool (*waitForReadyRead)(struct QSaveFile_VTable* vtbl, QSaveFile* self, int msecs);
	bool (*waitForBytesWritten)(struct QSaveFile_VTable* vtbl, QSaveFile* self, int msecs);
	long long (*skipData)(struct QSaveFile_VTable* vtbl, QSaveFile* self, long long maxSize);
	bool (*event)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QEvent* event);
	bool (*eventFilter)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QTimerEvent* event);
	void (*childEvent)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QChildEvent* event);
	void (*customEvent)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QEvent* event);
	void (*connectNotify)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSaveFile_VTable* vtbl, QSaveFile* self, QMetaMethod* signal);
};
QSaveFile* QSaveFile_new(struct QSaveFile_VTable* vtbl, struct miqt_string name);
QSaveFile* QSaveFile_new2(struct QSaveFile_VTable* vtbl);
QSaveFile* QSaveFile_new3(struct QSaveFile_VTable* vtbl, struct miqt_string name, QObject* parent);
QSaveFile* QSaveFile_new4(struct QSaveFile_VTable* vtbl, QObject* parent);
void QSaveFile_virtbase(QSaveFile* src, QFileDevice** outptr_QFileDevice);
QMetaObject* QSaveFile_metaObject(const QSaveFile* self);
void* QSaveFile_metacast(QSaveFile* self, const char* param1);
int QSaveFile_metacall(QSaveFile* self, int param1, int param2, void** param3);
struct miqt_string QSaveFile_tr(const char* s);
struct miqt_string QSaveFile_fileName(const QSaveFile* self);
void QSaveFile_setFileName(QSaveFile* self, struct miqt_string name);
bool QSaveFile_open(QSaveFile* self, int flags);
bool QSaveFile_commit(QSaveFile* self);
void QSaveFile_cancelWriting(QSaveFile* self);
void QSaveFile_setDirectWriteFallback(QSaveFile* self, bool enabled);
bool QSaveFile_directWriteFallback(const QSaveFile* self);
long long QSaveFile_writeData(QSaveFile* self, const char* data, long long len);
struct miqt_string QSaveFile_tr2(const char* s, const char* c);
struct miqt_string QSaveFile_tr3(const char* s, const char* c, int n);
QMetaObject* QSaveFile_virtualbase_metaObject(const void* self);
void* QSaveFile_virtualbase_metacast(void* self, const char* param1);
int QSaveFile_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QSaveFile_virtualbase_fileName(const void* self);
bool QSaveFile_virtualbase_open(void* self, int flags);
long long QSaveFile_virtualbase_writeData(void* self, const char* data, long long len);
bool QSaveFile_virtualbase_isSequential(const void* self);
long long QSaveFile_virtualbase_pos(const void* self);
bool QSaveFile_virtualbase_seek(void* self, long long offset);
bool QSaveFile_virtualbase_atEnd(const void* self);
long long QSaveFile_virtualbase_size(const void* self);
bool QSaveFile_virtualbase_resize(void* self, long long sz);
int QSaveFile_virtualbase_permissions(const void* self);
bool QSaveFile_virtualbase_setPermissions(void* self, int permissionSpec);
long long QSaveFile_virtualbase_readData(void* self, char* data, long long maxlen);
long long QSaveFile_virtualbase_readLineData(void* self, char* data, long long maxlen);
bool QSaveFile_virtualbase_reset(void* self);
long long QSaveFile_virtualbase_bytesAvailable(const void* self);
long long QSaveFile_virtualbase_bytesToWrite(const void* self);
bool QSaveFile_virtualbase_canReadLine(const void* self);
bool QSaveFile_virtualbase_waitForReadyRead(void* self, int msecs);
bool QSaveFile_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QSaveFile_virtualbase_skipData(void* self, long long maxSize);
bool QSaveFile_virtualbase_event(void* self, QEvent* event);
bool QSaveFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSaveFile_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSaveFile_virtualbase_childEvent(void* self, QChildEvent* event);
void QSaveFile_virtualbase_customEvent(void* self, QEvent* event);
void QSaveFile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSaveFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSaveFile_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QSaveFile_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QSaveFile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSaveFile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSaveFile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSaveFile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSaveFile_staticMetaObject();
void QSaveFile_delete(QSaveFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
