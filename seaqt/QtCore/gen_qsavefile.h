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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSaveFile QSaveFile;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSaveFile VirtualQSaveFile;
typedef struct QSaveFile_VTable{
	void (*destructor)(VirtualQSaveFile* self);
	QMetaObject* (*metaObject)(const VirtualQSaveFile* self);
	void* (*metacast)(VirtualQSaveFile* self, const char* param1);
	int (*metacall)(VirtualQSaveFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(const VirtualQSaveFile* self);
	bool (*open)(VirtualQSaveFile* self, int flags);
	long long (*writeData)(VirtualQSaveFile* self, const char* data, long long len);
	bool (*isSequential)(const VirtualQSaveFile* self);
	long long (*pos)(const VirtualQSaveFile* self);
	bool (*seek)(VirtualQSaveFile* self, long long offset);
	bool (*atEnd)(const VirtualQSaveFile* self);
	long long (*size)(const VirtualQSaveFile* self);
	bool (*resize)(VirtualQSaveFile* self, long long sz);
	int (*permissions)(const VirtualQSaveFile* self);
	bool (*setPermissions)(VirtualQSaveFile* self, int permissionSpec);
	long long (*readData)(VirtualQSaveFile* self, char* data, long long maxlen);
	long long (*readLineData)(VirtualQSaveFile* self, char* data, long long maxlen);
	bool (*reset)(VirtualQSaveFile* self);
	long long (*bytesAvailable)(const VirtualQSaveFile* self);
	long long (*bytesToWrite)(const VirtualQSaveFile* self);
	bool (*canReadLine)(const VirtualQSaveFile* self);
	bool (*waitForReadyRead)(VirtualQSaveFile* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQSaveFile* self, int msecs);
	bool (*event)(VirtualQSaveFile* self, QEvent* event);
	bool (*eventFilter)(VirtualQSaveFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSaveFile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSaveFile* self, QChildEvent* event);
	void (*customEvent)(VirtualQSaveFile* self, QEvent* event);
	void (*connectNotify)(VirtualQSaveFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSaveFile* self, QMetaMethod* signal);
}QSaveFile_VTable;

const QSaveFile_VTable* QSaveFile_vtbl(const VirtualQSaveFile* self);
void* QSaveFile_vdata(const VirtualQSaveFile* self);
void QSaveFile_setVdata(VirtualQSaveFile* self, void* vdata);

VirtualQSaveFile* QSaveFile_new(const QSaveFile_VTable* vtbl, void* vdata, struct miqt_string name);
VirtualQSaveFile* QSaveFile_new2(const QSaveFile_VTable* vtbl, void* vdata);
VirtualQSaveFile* QSaveFile_new3(const QSaveFile_VTable* vtbl, void* vdata, struct miqt_string name, QObject* parent);
VirtualQSaveFile* QSaveFile_new4(const QSaveFile_VTable* vtbl, void* vdata, QObject* parent);

void QSaveFile_virtbase(QSaveFile* src, QFileDevice** outptr_QFileDevice);
QMetaObject* QSaveFile_metaObject(const QSaveFile* self);
void* QSaveFile_metacast(QSaveFile* self, const char* param1);
int QSaveFile_metacall(QSaveFile* self, int param1, int param2, void** param3);
struct miqt_string QSaveFile_tr(const char* s);
struct miqt_string QSaveFile_trUtf8(const char* s);
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
struct miqt_string QSaveFile_trUtf82(const char* s, const char* c);
struct miqt_string QSaveFile_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSaveFile_virtualbase_metaObject(const VirtualQSaveFile* self);
void* QSaveFile_virtualbase_metacast(VirtualQSaveFile* self, const char* param1);
int QSaveFile_virtualbase_metacall(VirtualQSaveFile* self, int param1, int param2, void** param3);
struct miqt_string QSaveFile_virtualbase_fileName(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_open(VirtualQSaveFile* self, int flags);
long long QSaveFile_virtualbase_writeData(VirtualQSaveFile* self, const char* data, long long len);
bool QSaveFile_virtualbase_isSequential(const VirtualQSaveFile* self);
long long QSaveFile_virtualbase_pos(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_seek(VirtualQSaveFile* self, long long offset);
bool QSaveFile_virtualbase_atEnd(const VirtualQSaveFile* self);
long long QSaveFile_virtualbase_size(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_resize(VirtualQSaveFile* self, long long sz);
int QSaveFile_virtualbase_permissions(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_setPermissions(VirtualQSaveFile* self, int permissionSpec);
long long QSaveFile_virtualbase_readData(VirtualQSaveFile* self, char* data, long long maxlen);
long long QSaveFile_virtualbase_readLineData(VirtualQSaveFile* self, char* data, long long maxlen);
bool QSaveFile_virtualbase_reset(VirtualQSaveFile* self);
long long QSaveFile_virtualbase_bytesAvailable(const VirtualQSaveFile* self);
long long QSaveFile_virtualbase_bytesToWrite(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_canReadLine(const VirtualQSaveFile* self);
bool QSaveFile_virtualbase_waitForReadyRead(VirtualQSaveFile* self, int msecs);
bool QSaveFile_virtualbase_waitForBytesWritten(VirtualQSaveFile* self, int msecs);
bool QSaveFile_virtualbase_event(VirtualQSaveFile* self, QEvent* event);
bool QSaveFile_virtualbase_eventFilter(VirtualQSaveFile* self, QObject* watched, QEvent* event);
void QSaveFile_virtualbase_timerEvent(VirtualQSaveFile* self, QTimerEvent* event);
void QSaveFile_virtualbase_childEvent(VirtualQSaveFile* self, QChildEvent* event);
void QSaveFile_virtualbase_customEvent(VirtualQSaveFile* self, QEvent* event);
void QSaveFile_virtualbase_connectNotify(VirtualQSaveFile* self, QMetaMethod* signal);
void QSaveFile_virtualbase_disconnectNotify(VirtualQSaveFile* self, QMetaMethod* signal);

void QSaveFile_protectedbase_setOpenMode(VirtualQSaveFile* self, int openMode);
void QSaveFile_protectedbase_setErrorString(VirtualQSaveFile* self, struct miqt_string errorString);
QObject* QSaveFile_protectedbase_sender(const VirtualQSaveFile* self);
int QSaveFile_protectedbase_senderSignalIndex(const VirtualQSaveFile* self);
int QSaveFile_protectedbase_receivers(const VirtualQSaveFile* self, const char* signal);
bool QSaveFile_protectedbase_isSignalConnected(const VirtualQSaveFile* self, QMetaMethod* signal);

const QMetaObject* QSaveFile_staticMetaObject();
void QSaveFile_delete(QSaveFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
