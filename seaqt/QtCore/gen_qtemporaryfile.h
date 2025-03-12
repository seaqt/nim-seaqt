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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTemporaryFile QTemporaryFile;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQTemporaryFile VirtualQTemporaryFile;
typedef struct QTemporaryFile_VTable{
	void (*destructor)(VirtualQTemporaryFile* self);
	QMetaObject* (*metaObject)(const VirtualQTemporaryFile* self);
	void* (*metacast)(VirtualQTemporaryFile* self, const char* param1);
	int (*metacall)(VirtualQTemporaryFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(const VirtualQTemporaryFile* self);
	bool (*openWithFlags)(VirtualQTemporaryFile* self, int flags);
	long long (*size)(const VirtualQTemporaryFile* self);
	bool (*resize)(VirtualQTemporaryFile* self, long long sz);
	int (*permissions)(const VirtualQTemporaryFile* self);
	bool (*setPermissions)(VirtualQTemporaryFile* self, int permissionSpec);
	void (*close)(VirtualQTemporaryFile* self);
	bool (*isSequential)(const VirtualQTemporaryFile* self);
	long long (*pos)(const VirtualQTemporaryFile* self);
	bool (*seek)(VirtualQTemporaryFile* self, long long offset);
	bool (*atEnd)(const VirtualQTemporaryFile* self);
	long long (*readData)(VirtualQTemporaryFile* self, char* data, long long maxlen);
	long long (*writeData)(VirtualQTemporaryFile* self, const char* data, long long len);
	long long (*readLineData)(VirtualQTemporaryFile* self, char* data, long long maxlen);
	bool (*reset)(VirtualQTemporaryFile* self);
	long long (*bytesAvailable)(const VirtualQTemporaryFile* self);
	long long (*bytesToWrite)(const VirtualQTemporaryFile* self);
	bool (*canReadLine)(const VirtualQTemporaryFile* self);
	bool (*waitForReadyRead)(VirtualQTemporaryFile* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQTemporaryFile* self, int msecs);
	bool (*event)(VirtualQTemporaryFile* self, QEvent* event);
	bool (*eventFilter)(VirtualQTemporaryFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTemporaryFile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTemporaryFile* self, QChildEvent* event);
	void (*customEvent)(VirtualQTemporaryFile* self, QEvent* event);
	void (*connectNotify)(VirtualQTemporaryFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTemporaryFile* self, QMetaMethod* signal);
}QTemporaryFile_VTable;

const QTemporaryFile_VTable* QTemporaryFile_vtbl(const VirtualQTemporaryFile* self);
void* QTemporaryFile_vdata(const VirtualQTemporaryFile* self);
void QTemporaryFile_setVdata(VirtualQTemporaryFile* self, void* vdata);

VirtualQTemporaryFile* QTemporaryFile_new(const QTemporaryFile_VTable* vtbl, void* vdata);
VirtualQTemporaryFile* QTemporaryFile_new2(const QTemporaryFile_VTable* vtbl, void* vdata, struct miqt_string templateName);
VirtualQTemporaryFile* QTemporaryFile_new3(const QTemporaryFile_VTable* vtbl, void* vdata, QObject* parent);
VirtualQTemporaryFile* QTemporaryFile_new4(const QTemporaryFile_VTable* vtbl, void* vdata, struct miqt_string templateName, QObject* parent);

void QTemporaryFile_virtbase(QTemporaryFile* src, QFile** outptr_QFile);
QMetaObject* QTemporaryFile_metaObject(const QTemporaryFile* self);
void* QTemporaryFile_metacast(QTemporaryFile* self, const char* param1);
int QTemporaryFile_metacall(QTemporaryFile* self, int param1, int param2, void** param3);
struct miqt_string QTemporaryFile_tr(const char* s);
struct miqt_string QTemporaryFile_trUtf8(const char* s);
bool QTemporaryFile_autoRemove(const QTemporaryFile* self);
void QTemporaryFile_setAutoRemove(QTemporaryFile* self, bool b);
bool QTemporaryFile_open(QTemporaryFile* self);
struct miqt_string QTemporaryFile_fileName(const QTemporaryFile* self);
struct miqt_string QTemporaryFile_fileTemplate(const QTemporaryFile* self);
void QTemporaryFile_setFileTemplate(QTemporaryFile* self, struct miqt_string name);
bool QTemporaryFile_rename(QTemporaryFile* self, struct miqt_string newName);
QTemporaryFile* QTemporaryFile_createLocalFile(struct miqt_string fileName);
QTemporaryFile* QTemporaryFile_createLocalFileWithFile(QFile* file);
QTemporaryFile* QTemporaryFile_createNativeFile(struct miqt_string fileName);
QTemporaryFile* QTemporaryFile_createNativeFileWithFile(QFile* file);
bool QTemporaryFile_openWithFlags(QTemporaryFile* self, int flags);
struct miqt_string QTemporaryFile_tr2(const char* s, const char* c);
struct miqt_string QTemporaryFile_tr3(const char* s, const char* c, int n);
struct miqt_string QTemporaryFile_trUtf82(const char* s, const char* c);
struct miqt_string QTemporaryFile_trUtf83(const char* s, const char* c, int n);

QMetaObject* QTemporaryFile_virtualbase_metaObject(const VirtualQTemporaryFile* self);
void* QTemporaryFile_virtualbase_metacast(VirtualQTemporaryFile* self, const char* param1);
int QTemporaryFile_virtualbase_metacall(VirtualQTemporaryFile* self, int param1, int param2, void** param3);
struct miqt_string QTemporaryFile_virtualbase_fileName(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_openWithFlags(VirtualQTemporaryFile* self, int flags);
long long QTemporaryFile_virtualbase_size(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_resize(VirtualQTemporaryFile* self, long long sz);
int QTemporaryFile_virtualbase_permissions(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_setPermissions(VirtualQTemporaryFile* self, int permissionSpec);
void QTemporaryFile_virtualbase_close(VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_isSequential(const VirtualQTemporaryFile* self);
long long QTemporaryFile_virtualbase_pos(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_seek(VirtualQTemporaryFile* self, long long offset);
bool QTemporaryFile_virtualbase_atEnd(const VirtualQTemporaryFile* self);
long long QTemporaryFile_virtualbase_readData(VirtualQTemporaryFile* self, char* data, long long maxlen);
long long QTemporaryFile_virtualbase_writeData(VirtualQTemporaryFile* self, const char* data, long long len);
long long QTemporaryFile_virtualbase_readLineData(VirtualQTemporaryFile* self, char* data, long long maxlen);
bool QTemporaryFile_virtualbase_reset(VirtualQTemporaryFile* self);
long long QTemporaryFile_virtualbase_bytesAvailable(const VirtualQTemporaryFile* self);
long long QTemporaryFile_virtualbase_bytesToWrite(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_canReadLine(const VirtualQTemporaryFile* self);
bool QTemporaryFile_virtualbase_waitForReadyRead(VirtualQTemporaryFile* self, int msecs);
bool QTemporaryFile_virtualbase_waitForBytesWritten(VirtualQTemporaryFile* self, int msecs);
bool QTemporaryFile_virtualbase_event(VirtualQTemporaryFile* self, QEvent* event);
bool QTemporaryFile_virtualbase_eventFilter(VirtualQTemporaryFile* self, QObject* watched, QEvent* event);
void QTemporaryFile_virtualbase_timerEvent(VirtualQTemporaryFile* self, QTimerEvent* event);
void QTemporaryFile_virtualbase_childEvent(VirtualQTemporaryFile* self, QChildEvent* event);
void QTemporaryFile_virtualbase_customEvent(VirtualQTemporaryFile* self, QEvent* event);
void QTemporaryFile_virtualbase_connectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal);
void QTemporaryFile_virtualbase_disconnectNotify(VirtualQTemporaryFile* self, QMetaMethod* signal);

void QTemporaryFile_protectedbase_setOpenMode(VirtualQTemporaryFile* self, int openMode);
void QTemporaryFile_protectedbase_setErrorString(VirtualQTemporaryFile* self, struct miqt_string errorString);
QObject* QTemporaryFile_protectedbase_sender(const VirtualQTemporaryFile* self);
int QTemporaryFile_protectedbase_senderSignalIndex(const VirtualQTemporaryFile* self);
int QTemporaryFile_protectedbase_receivers(const VirtualQTemporaryFile* self, const char* signal);
bool QTemporaryFile_protectedbase_isSignalConnected(const VirtualQTemporaryFile* self, QMetaMethod* signal);

const QMetaObject* QTemporaryFile_staticMetaObject();
void QTemporaryFile_delete(QTemporaryFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
