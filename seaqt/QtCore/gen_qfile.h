#pragma once
#ifndef SEAQT_QTCORE_GEN_QFILE_H
#define SEAQT_QTCORE_GEN_QFILE_H

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
typedef struct QTimerEvent QTimerEvent;
#endif

struct QFile_VTable {
	void (*destructor)(struct QFile_VTable* vtbl, QFile* self);
	QMetaObject* (*metaObject)(struct QFile_VTable* vtbl, const QFile* self);
	void* (*metacast)(struct QFile_VTable* vtbl, QFile* self, const char* param1);
	int (*metacall)(struct QFile_VTable* vtbl, QFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*open)(struct QFile_VTable* vtbl, QFile* self, int flags);
	long long (*size)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*resize)(struct QFile_VTable* vtbl, QFile* self, long long sz);
	int (*permissions)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*setPermissions)(struct QFile_VTable* vtbl, QFile* self, int permissionSpec);
	void (*close)(struct QFile_VTable* vtbl, QFile* self);
	bool (*isSequential)(struct QFile_VTable* vtbl, const QFile* self);
	long long (*pos)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*seek)(struct QFile_VTable* vtbl, QFile* self, long long offset);
	bool (*atEnd)(struct QFile_VTable* vtbl, const QFile* self);
	long long (*readData)(struct QFile_VTable* vtbl, QFile* self, char* data, long long maxlen);
	long long (*writeData)(struct QFile_VTable* vtbl, QFile* self, const char* data, long long len);
	long long (*readLineData)(struct QFile_VTable* vtbl, QFile* self, char* data, long long maxlen);
	bool (*reset)(struct QFile_VTable* vtbl, QFile* self);
	long long (*bytesAvailable)(struct QFile_VTable* vtbl, const QFile* self);
	long long (*bytesToWrite)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*canReadLine)(struct QFile_VTable* vtbl, const QFile* self);
	bool (*waitForReadyRead)(struct QFile_VTable* vtbl, QFile* self, int msecs);
	bool (*waitForBytesWritten)(struct QFile_VTable* vtbl, QFile* self, int msecs);
	long long (*skipData)(struct QFile_VTable* vtbl, QFile* self, long long maxSize);
	bool (*event)(struct QFile_VTable* vtbl, QFile* self, QEvent* event);
	bool (*eventFilter)(struct QFile_VTable* vtbl, QFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QFile_VTable* vtbl, QFile* self, QTimerEvent* event);
	void (*childEvent)(struct QFile_VTable* vtbl, QFile* self, QChildEvent* event);
	void (*customEvent)(struct QFile_VTable* vtbl, QFile* self, QEvent* event);
	void (*connectNotify)(struct QFile_VTable* vtbl, QFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFile_VTable* vtbl, QFile* self, QMetaMethod* signal);
};
QFile* QFile_new(struct QFile_VTable* vtbl);
QFile* QFile_new2(struct QFile_VTable* vtbl, struct miqt_string name);
QFile* QFile_new3(struct QFile_VTable* vtbl, QObject* parent);
QFile* QFile_new4(struct QFile_VTable* vtbl, struct miqt_string name, QObject* parent);
void QFile_virtbase(QFile* src, QFileDevice** outptr_QFileDevice);
QMetaObject* QFile_metaObject(const QFile* self);
void* QFile_metacast(QFile* self, const char* param1);
int QFile_metacall(QFile* self, int param1, int param2, void** param3);
struct miqt_string QFile_tr(const char* s);
struct miqt_string QFile_fileName(const QFile* self);
void QFile_setFileName(QFile* self, struct miqt_string name);
struct miqt_string QFile_encodeName(struct miqt_string fileName);
struct miqt_string QFile_decodeName(struct miqt_string localFileName);
struct miqt_string QFile_decodeNameWithLocalFileName(const char* localFileName);
bool QFile_exists(const QFile* self);
bool QFile_existsWithFileName(struct miqt_string fileName);
struct miqt_string QFile_symLinkTarget(const QFile* self);
struct miqt_string QFile_symLinkTargetWithFileName(struct miqt_string fileName);
bool QFile_remove(QFile* self);
bool QFile_removeWithFileName(struct miqt_string fileName);
bool QFile_moveToTrash(QFile* self);
bool QFile_moveToTrashWithFileName(struct miqt_string fileName);
bool QFile_rename(QFile* self, struct miqt_string newName);
bool QFile_rename2(struct miqt_string oldName, struct miqt_string newName);
bool QFile_link(QFile* self, struct miqt_string newName);
bool QFile_link2(struct miqt_string fileName, struct miqt_string newName);
bool QFile_copy(QFile* self, struct miqt_string newName);
bool QFile_copy2(struct miqt_string fileName, struct miqt_string newName);
bool QFile_open(QFile* self, int flags);
bool QFile_open2(QFile* self, int flags, int permissions);
bool QFile_open4(QFile* self, int fd, int ioFlags);
long long QFile_size(const QFile* self);
bool QFile_resize(QFile* self, long long sz);
bool QFile_resize2(struct miqt_string filename, long long sz);
int QFile_permissions(const QFile* self);
int QFile_permissionsWithFilename(struct miqt_string filename);
bool QFile_setPermissions(QFile* self, int permissionSpec);
bool QFile_setPermissions2(struct miqt_string filename, int permissionSpec);
struct miqt_string QFile_tr2(const char* s, const char* c);
struct miqt_string QFile_tr3(const char* s, const char* c, int n);
bool QFile_open33(QFile* self, int fd, int ioFlags, int handleFlags);
QMetaObject* QFile_virtualbase_metaObject(const void* self);
void* QFile_virtualbase_metacast(void* self, const char* param1);
int QFile_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QFile_virtualbase_fileName(const void* self);
bool QFile_virtualbase_open(void* self, int flags);
long long QFile_virtualbase_size(const void* self);
bool QFile_virtualbase_resize(void* self, long long sz);
int QFile_virtualbase_permissions(const void* self);
bool QFile_virtualbase_setPermissions(void* self, int permissionSpec);
void QFile_virtualbase_close(void* self);
bool QFile_virtualbase_isSequential(const void* self);
long long QFile_virtualbase_pos(const void* self);
bool QFile_virtualbase_seek(void* self, long long offset);
bool QFile_virtualbase_atEnd(const void* self);
long long QFile_virtualbase_readData(void* self, char* data, long long maxlen);
long long QFile_virtualbase_writeData(void* self, const char* data, long long len);
long long QFile_virtualbase_readLineData(void* self, char* data, long long maxlen);
bool QFile_virtualbase_reset(void* self);
long long QFile_virtualbase_bytesAvailable(const void* self);
long long QFile_virtualbase_bytesToWrite(const void* self);
bool QFile_virtualbase_canReadLine(const void* self);
bool QFile_virtualbase_waitForReadyRead(void* self, int msecs);
bool QFile_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QFile_virtualbase_skipData(void* self, long long maxSize);
bool QFile_virtualbase_event(void* self, QEvent* event);
bool QFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFile_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFile_virtualbase_childEvent(void* self, QChildEvent* event);
void QFile_virtualbase_customEvent(void* self, QEvent* event);
void QFile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFile_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QFile_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QFile_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QFile_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QFile_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QFile_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QFile_staticMetaObject();
void QFile_delete(QFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
