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
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQFile VirtualQFile;
typedef struct QFile_VTable{
	void (*destructor)(VirtualQFile* self);
	QMetaObject* (*metaObject)(const VirtualQFile* self);
	void* (*metacast)(VirtualQFile* self, const char* param1);
	int (*metacall)(VirtualQFile* self, int param1, int param2, void** param3);
	struct miqt_string (*fileName)(const VirtualQFile* self);
	bool (*open)(VirtualQFile* self, int flags);
	long long (*size)(const VirtualQFile* self);
	bool (*resize)(VirtualQFile* self, long long sz);
	int (*permissions)(const VirtualQFile* self);
	bool (*setPermissions)(VirtualQFile* self, int permissionSpec);
	void (*close)(VirtualQFile* self);
	bool (*isSequential)(const VirtualQFile* self);
	long long (*pos)(const VirtualQFile* self);
	bool (*seek)(VirtualQFile* self, long long offset);
	bool (*atEnd)(const VirtualQFile* self);
	long long (*readData)(VirtualQFile* self, char* data, long long maxlen);
	long long (*writeData)(VirtualQFile* self, const char* data, long long len);
	long long (*readLineData)(VirtualQFile* self, char* data, long long maxlen);
	bool (*reset)(VirtualQFile* self);
	long long (*bytesAvailable)(const VirtualQFile* self);
	long long (*bytesToWrite)(const VirtualQFile* self);
	bool (*canReadLine)(const VirtualQFile* self);
	bool (*waitForReadyRead)(VirtualQFile* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQFile* self, int msecs);
	bool (*event)(VirtualQFile* self, QEvent* event);
	bool (*eventFilter)(VirtualQFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFile* self, QChildEvent* event);
	void (*customEvent)(VirtualQFile* self, QEvent* event);
	void (*connectNotify)(VirtualQFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFile* self, QMetaMethod* signal);
}QFile_VTable;

const QFile_VTable* QFile_vtbl(const VirtualQFile* self);
void* QFile_vdata(const VirtualQFile* self);
void QFile_setVdata(VirtualQFile* self, void* vdata);

VirtualQFile* QFile_new(const QFile_VTable* vtbl, void* vdata);
VirtualQFile* QFile_new2(const QFile_VTable* vtbl, void* vdata, struct miqt_string name);
VirtualQFile* QFile_new3(const QFile_VTable* vtbl, void* vdata, QObject* parent);
VirtualQFile* QFile_new4(const QFile_VTable* vtbl, void* vdata, struct miqt_string name, QObject* parent);

void QFile_virtbase(QFile* src, QFileDevice** outptr_QFileDevice);
QMetaObject* QFile_metaObject(const QFile* self);
void* QFile_metacast(QFile* self, const char* param1);
int QFile_metacall(QFile* self, int param1, int param2, void** param3);
struct miqt_string QFile_tr(const char* s);
struct miqt_string QFile_trUtf8(const char* s);
struct miqt_string QFile_fileName(const QFile* self);
void QFile_setFileName(QFile* self, struct miqt_string name);
struct miqt_string QFile_encodeName(struct miqt_string fileName);
struct miqt_string QFile_decodeName(struct miqt_string localFileName);
struct miqt_string QFile_decodeNameWithLocalFileName(const char* localFileName);
bool QFile_exists(const QFile* self);
bool QFile_existsWithFileName(struct miqt_string fileName);
struct miqt_string QFile_readLink(const QFile* self);
struct miqt_string QFile_readLinkWithFileName(struct miqt_string fileName);
struct miqt_string QFile_symLinkTarget(const QFile* self);
struct miqt_string QFile_symLinkTargetWithFileName(struct miqt_string fileName);
bool QFile_remove(QFile* self);
bool QFile_removeWithFileName(struct miqt_string fileName);
bool QFile_moveToTrash(QFile* self);
bool QFile_moveToTrashWithFileName(struct miqt_string fileName);
bool QFile_rename(QFile* self, struct miqt_string newName);
bool QFile_rename2(struct miqt_string oldName, struct miqt_string newName);
bool QFile_link(QFile* self, struct miqt_string newName);
bool QFile_link2(struct miqt_string oldname, struct miqt_string newName);
bool QFile_copy(QFile* self, struct miqt_string newName);
bool QFile_copy2(struct miqt_string fileName, struct miqt_string newName);
bool QFile_open(QFile* self, int flags);
bool QFile_open3(QFile* self, int fd, int ioFlags);
long long QFile_size(const QFile* self);
bool QFile_resize(QFile* self, long long sz);
bool QFile_resize2(struct miqt_string filename, long long sz);
int QFile_permissions(const QFile* self);
int QFile_permissionsWithFilename(struct miqt_string filename);
bool QFile_setPermissions(QFile* self, int permissionSpec);
bool QFile_setPermissions2(struct miqt_string filename, int permissionSpec);
struct miqt_string QFile_tr2(const char* s, const char* c);
struct miqt_string QFile_tr3(const char* s, const char* c, int n);
struct miqt_string QFile_trUtf82(const char* s, const char* c);
struct miqt_string QFile_trUtf83(const char* s, const char* c, int n);
bool QFile_open33(QFile* self, int fd, int ioFlags, int handleFlags);

QMetaObject* QFile_virtualbase_metaObject(const VirtualQFile* self);
void* QFile_virtualbase_metacast(VirtualQFile* self, const char* param1);
int QFile_virtualbase_metacall(VirtualQFile* self, int param1, int param2, void** param3);
struct miqt_string QFile_virtualbase_fileName(const VirtualQFile* self);
bool QFile_virtualbase_open(VirtualQFile* self, int flags);
long long QFile_virtualbase_size(const VirtualQFile* self);
bool QFile_virtualbase_resize(VirtualQFile* self, long long sz);
int QFile_virtualbase_permissions(const VirtualQFile* self);
bool QFile_virtualbase_setPermissions(VirtualQFile* self, int permissionSpec);
void QFile_virtualbase_close(VirtualQFile* self);
bool QFile_virtualbase_isSequential(const VirtualQFile* self);
long long QFile_virtualbase_pos(const VirtualQFile* self);
bool QFile_virtualbase_seek(VirtualQFile* self, long long offset);
bool QFile_virtualbase_atEnd(const VirtualQFile* self);
long long QFile_virtualbase_readData(VirtualQFile* self, char* data, long long maxlen);
long long QFile_virtualbase_writeData(VirtualQFile* self, const char* data, long long len);
long long QFile_virtualbase_readLineData(VirtualQFile* self, char* data, long long maxlen);
bool QFile_virtualbase_reset(VirtualQFile* self);
long long QFile_virtualbase_bytesAvailable(const VirtualQFile* self);
long long QFile_virtualbase_bytesToWrite(const VirtualQFile* self);
bool QFile_virtualbase_canReadLine(const VirtualQFile* self);
bool QFile_virtualbase_waitForReadyRead(VirtualQFile* self, int msecs);
bool QFile_virtualbase_waitForBytesWritten(VirtualQFile* self, int msecs);
bool QFile_virtualbase_event(VirtualQFile* self, QEvent* event);
bool QFile_virtualbase_eventFilter(VirtualQFile* self, QObject* watched, QEvent* event);
void QFile_virtualbase_timerEvent(VirtualQFile* self, QTimerEvent* event);
void QFile_virtualbase_childEvent(VirtualQFile* self, QChildEvent* event);
void QFile_virtualbase_customEvent(VirtualQFile* self, QEvent* event);
void QFile_virtualbase_connectNotify(VirtualQFile* self, QMetaMethod* signal);
void QFile_virtualbase_disconnectNotify(VirtualQFile* self, QMetaMethod* signal);

void QFile_protectedbase_setOpenMode(VirtualQFile* self, int openMode);
void QFile_protectedbase_setErrorString(VirtualQFile* self, struct miqt_string errorString);
QObject* QFile_protectedbase_sender(const VirtualQFile* self);
int QFile_protectedbase_senderSignalIndex(const VirtualQFile* self);
int QFile_protectedbase_receivers(const VirtualQFile* self, const char* signal);
bool QFile_protectedbase_isSignalConnected(const VirtualQFile* self, QMetaMethod* signal);

const QMetaObject* QFile_staticMetaObject();
void QFile_delete(QFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
