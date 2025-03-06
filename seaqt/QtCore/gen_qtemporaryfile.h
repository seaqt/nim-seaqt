#pragma once
#ifndef SEAQT_QTCORE_GEN_QTEMPORARYFILE_H
#define SEAQT_QTCORE_GEN_QTEMPORARYFILE_H

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
class QFile;
class QFileDevice;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTemporaryFile;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFile QFile;
typedef struct QFileDevice QFileDevice;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTemporaryFile QTemporaryFile;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QTemporaryFile_VTable {
	void (*destructor)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self);
	QMetaObject* (*metaObject)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	void* (*metacast)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, const char* param1);
	int (*metacall)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*openWithFlags)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, int flags);
	long long (*size)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*resize)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, long long sz);
	int (*permissions)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*setPermissions)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, int permissionSpec);
	void (*close)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self);
	bool (*isSequential)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	long long (*pos)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*seek)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, long long offset);
	bool (*atEnd)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	long long (*readData)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, char* data, long long maxlen);
	long long (*writeData)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, const char* data, long long len);
	long long (*readLineData)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, char* data, long long maxlen);
	bool (*reset)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self);
	long long (*bytesAvailable)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	long long (*bytesToWrite)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*canReadLine)(struct QTemporaryFile_VTable* vtbl, const QTemporaryFile* self);
	bool (*waitForReadyRead)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, int msecs);
	bool (*waitForBytesWritten)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, int msecs);
	long long (*skipData)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, long long maxSize);
	bool (*event)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QEvent* event);
	bool (*eventFilter)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QTimerEvent* event);
	void (*childEvent)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QChildEvent* event);
	void (*customEvent)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QEvent* event);
	void (*connectNotify)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTemporaryFile_VTable* vtbl, QTemporaryFile* self, QMetaMethod* signal);
};
QTemporaryFile* QTemporaryFile_new(struct QTemporaryFile_VTable* vtbl);
QTemporaryFile* QTemporaryFile_new2(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName);
QTemporaryFile* QTemporaryFile_new3(struct QTemporaryFile_VTable* vtbl, QObject* parent);
QTemporaryFile* QTemporaryFile_new4(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName, QObject* parent);
void QTemporaryFile_virtbase(QTemporaryFile* src, QFile** outptr_QFile);
QMetaObject* QTemporaryFile_metaObject(const QTemporaryFile* self);
void* QTemporaryFile_metacast(QTemporaryFile* self, const char* param1);
int QTemporaryFile_metacall(QTemporaryFile* self, int param1, int param2, void** param3);
struct miqt_string QTemporaryFile_tr(const char* s);
bool QTemporaryFile_autoRemove(const QTemporaryFile* self);
void QTemporaryFile_setAutoRemove(QTemporaryFile* self, bool b);
bool QTemporaryFile_open(QTemporaryFile* self);
struct miqt_string QTemporaryFile_fileName(const QTemporaryFile* self);
struct miqt_string QTemporaryFile_fileTemplate(const QTemporaryFile* self);
void QTemporaryFile_setFileTemplate(QTemporaryFile* self, struct miqt_string name);
bool QTemporaryFile_rename(QTemporaryFile* self, struct miqt_string newName);
QTemporaryFile* QTemporaryFile_createNativeFile(struct miqt_string fileName);
QTemporaryFile* QTemporaryFile_createNativeFileWithFile(QFile* file);
bool QTemporaryFile_openWithFlags(QTemporaryFile* self, int flags);
struct miqt_string QTemporaryFile_tr2(const char* s, const char* c);
struct miqt_string QTemporaryFile_tr3(const char* s, const char* c, int n);
QMetaObject* QTemporaryFile_virtualbase_metaObject(const void* self);
void* QTemporaryFile_virtualbase_metacast(void* self, const char* param1);
int QTemporaryFile_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QTemporaryFile_virtualbase_fileName(const void* self);
bool QTemporaryFile_virtualbase_openWithFlags(void* self, int flags);
long long QTemporaryFile_virtualbase_size(const void* self);
bool QTemporaryFile_virtualbase_resize(void* self, long long sz);
int QTemporaryFile_virtualbase_permissions(const void* self);
bool QTemporaryFile_virtualbase_setPermissions(void* self, int permissionSpec);
void QTemporaryFile_virtualbase_close(void* self);
bool QTemporaryFile_virtualbase_isSequential(const void* self);
long long QTemporaryFile_virtualbase_pos(const void* self);
bool QTemporaryFile_virtualbase_seek(void* self, long long offset);
bool QTemporaryFile_virtualbase_atEnd(const void* self);
long long QTemporaryFile_virtualbase_readData(void* self, char* data, long long maxlen);
long long QTemporaryFile_virtualbase_writeData(void* self, const char* data, long long len);
long long QTemporaryFile_virtualbase_readLineData(void* self, char* data, long long maxlen);
bool QTemporaryFile_virtualbase_reset(void* self);
long long QTemporaryFile_virtualbase_bytesAvailable(const void* self);
long long QTemporaryFile_virtualbase_bytesToWrite(const void* self);
bool QTemporaryFile_virtualbase_canReadLine(const void* self);
bool QTemporaryFile_virtualbase_waitForReadyRead(void* self, int msecs);
bool QTemporaryFile_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QTemporaryFile_virtualbase_skipData(void* self, long long maxSize);
bool QTemporaryFile_virtualbase_event(void* self, QEvent* event);
bool QTemporaryFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTemporaryFile_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTemporaryFile_virtualbase_childEvent(void* self, QChildEvent* event);
void QTemporaryFile_virtualbase_customEvent(void* self, QEvent* event);
void QTemporaryFile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTemporaryFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTemporaryFile_protectedbase_setOpenMode(void* self, int openMode);
void QTemporaryFile_protectedbase_setErrorString(void* self, struct miqt_string errorString);
QObject* QTemporaryFile_protectedbase_sender(const void* self);
int QTemporaryFile_protectedbase_senderSignalIndex(const void* self);
int QTemporaryFile_protectedbase_receivers(const void* self, const char* signal);
bool QTemporaryFile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTemporaryFile_staticMetaObject();
void QTemporaryFile_delete(QTemporaryFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
