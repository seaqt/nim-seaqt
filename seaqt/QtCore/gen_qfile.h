#pragma once
#ifndef SEAQT_QTCORE_GEN_QFILE_H
#define SEAQT_QTCORE_GEN_QFILE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQFile VirtualQFile;
typedef struct QFile_VTable{
	void (*destructor)(VirtualQFile* self);
	QMetaObject* (*metaObject)(const VirtualQFile* self);
	void* (*metacast)(VirtualQFile* self, const char* param1);
	int (*metacall)(VirtualQFile* self, int param1, int param2, void** param3);
	struct seaqt_string (*fileName)(const VirtualQFile* self);
	bool (*open_flags)(VirtualQFile* self, int flags);
	long long (*size)(const VirtualQFile* self);
	bool (*resize_sz)(VirtualQFile* self, long long sz);
	int (*permissions)(const VirtualQFile* self);
	bool (*setPermissions_permissionSpec)(VirtualQFile* self, int permissionSpec);
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
	long long (*skipData)(VirtualQFile* self, long long maxSize);
	bool (*event)(VirtualQFile* self, QEvent* event);
	bool (*eventFilter)(VirtualQFile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFile* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFile* self, QChildEvent* event);
	void (*customEvent)(VirtualQFile* self, QEvent* event);
	void (*connectNotify)(VirtualQFile* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFile* self, QMetaMethod* signal);
}QFile_VTable;

void* QFile_vdata(VirtualQFile* self);
VirtualQFile* vdata_QFile(void* vdata);

VirtualQFile* QFile_new(const QFile_VTable* vtbl, size_t vdata);
VirtualQFile* QFile_new_name(const QFile_VTable* vtbl, size_t vdata, struct seaqt_string name);
VirtualQFile* QFile_new_parent(const QFile_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQFile* QFile_new_name_parent(const QFile_VTable* vtbl, size_t vdata, struct seaqt_string name, QObject* parent);

void QFile_virtbase(QFile* src, QFileDevice** outptr_QFileDevice);
QMetaObject* QFile_metaObject(const QFile* self);
void* QFile_metacast(QFile* self, const char* param1);
int QFile_metacall(QFile* self, int param1, int param2, void** param3);
struct seaqt_string QFile_tr_s(const char* s);
struct seaqt_string QFile_fileName(const QFile* self);
void QFile_setFileName(QFile* self, struct seaqt_string name);
struct seaqt_string QFile_encodeName(struct seaqt_string fileName);
struct seaqt_string QFile_decodeName_QByteArray(struct seaqt_string localFileName);
struct seaqt_string QFile_decodeName_char(const char* localFileName);
bool QFile_exists(const QFile* self);
bool QFile_exists_fileName(struct seaqt_string fileName);
struct seaqt_string QFile_symLinkTarget(const QFile* self);
struct seaqt_string QFile_symLinkTarget_fileName(struct seaqt_string fileName);
bool QFile_remove(QFile* self);
bool QFile_remove_fileName(struct seaqt_string fileName);
bool QFile_moveToTrash(QFile* self);
bool QFile_moveToTrash_fileName(struct seaqt_string fileName);
bool QFile_rename_newName(QFile* self, struct seaqt_string newName);
bool QFile_rename_oldName_newName(struct seaqt_string oldName, struct seaqt_string newName);
bool QFile_link_newName(QFile* self, struct seaqt_string newName);
bool QFile_link_fileName_newName(struct seaqt_string fileName, struct seaqt_string newName);
bool QFile_copy_newName(QFile* self, struct seaqt_string newName);
bool QFile_copy_fileName_newName(struct seaqt_string fileName, struct seaqt_string newName);
bool QFile_open_flags(QFile* self, int flags);
bool QFile_open_flags_permissions(QFile* self, int flags, int permissions);
bool QFile_open_fd_ioFlags(QFile* self, int fd, int ioFlags);
long long QFile_size(const QFile* self);
bool QFile_resize_sz(QFile* self, long long sz);
bool QFile_resize_filename_sz(struct seaqt_string filename, long long sz);
int QFile_permissions(const QFile* self);
int QFile_permissions_filename(struct seaqt_string filename);
bool QFile_setPermissions_permissionSpec(QFile* self, int permissionSpec);
bool QFile_setPermissions_filename_permissionSpec(struct seaqt_string filename, int permissionSpec);
struct seaqt_string QFile_tr_s_c(const char* s, const char* c);
struct seaqt_string QFile_tr_s_c_n(const char* s, const char* c, int n);
bool QFile_open_fd_ioFlags_handleFlags(QFile* self, int fd, int ioFlags, int handleFlags);

QMetaObject* QFile_virtualbase_metaObject(const VirtualQFile* self);
void* QFile_virtualbase_metacast(VirtualQFile* self, const char* param1);
int QFile_virtualbase_metacall(VirtualQFile* self, int param1, int param2, void** param3);
struct seaqt_string QFile_virtualbase_fileName(const VirtualQFile* self);
bool QFile_virtualbase_open_flags(VirtualQFile* self, int flags);
long long QFile_virtualbase_size(const VirtualQFile* self);
bool QFile_virtualbase_resize_sz(VirtualQFile* self, long long sz);
int QFile_virtualbase_permissions(const VirtualQFile* self);
bool QFile_virtualbase_setPermissions_permissionSpec(VirtualQFile* self, int permissionSpec);
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
long long QFile_virtualbase_skipData(VirtualQFile* self, long long maxSize);
bool QFile_virtualbase_event(VirtualQFile* self, QEvent* event);
bool QFile_virtualbase_eventFilter(VirtualQFile* self, QObject* watched, QEvent* event);
void QFile_virtualbase_timerEvent(VirtualQFile* self, QTimerEvent* event);
void QFile_virtualbase_childEvent(VirtualQFile* self, QChildEvent* event);
void QFile_virtualbase_customEvent(VirtualQFile* self, QEvent* event);
void QFile_virtualbase_connectNotify(VirtualQFile* self, QMetaMethod* signal);
void QFile_virtualbase_disconnectNotify(VirtualQFile* self, QMetaMethod* signal);

void QFile_protectedbase_setOpenMode(VirtualQFile* self, int openMode);
void QFile_protectedbase_setErrorString(VirtualQFile* self, struct seaqt_string errorString);
QObject* QFile_protectedbase_sender(const VirtualQFile* self);
int QFile_protectedbase_senderSignalIndex(const VirtualQFile* self);
int QFile_protectedbase_receivers(const VirtualQFile* self, const char* signal);
bool QFile_protectedbase_isSignalConnected(const VirtualQFile* self, QMetaMethod* signal);

void QFile_delete(QFile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
