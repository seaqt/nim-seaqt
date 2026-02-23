#pragma once
#ifndef SEAQT_QTCORE_GEN_QFILESYSTEMWATCHER_H
#define SEAQT_QTCORE_GEN_QFILESYSTEMWATCHER_H

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
class QFileSystemWatcher;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileSystemWatcher QFileSystemWatcher;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQFileSystemWatcher VirtualQFileSystemWatcher;
typedef struct QFileSystemWatcher_VTable{
	void (*destructor)(VirtualQFileSystemWatcher* self);
	QMetaObject* (*metaObject)(const VirtualQFileSystemWatcher* self);
	void* (*metacast)(VirtualQFileSystemWatcher* self, const char* param1);
	int (*metacall)(VirtualQFileSystemWatcher* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQFileSystemWatcher* self, QEvent* event);
	bool (*eventFilter)(VirtualQFileSystemWatcher* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFileSystemWatcher* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFileSystemWatcher* self, QChildEvent* event);
	void (*customEvent)(VirtualQFileSystemWatcher* self, QEvent* event);
	void (*connectNotify)(VirtualQFileSystemWatcher* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFileSystemWatcher* self, QMetaMethod* signal);
}QFileSystemWatcher_VTable;

void* QFileSystemWatcher_vdata(VirtualQFileSystemWatcher* self);
VirtualQFileSystemWatcher* vdata_QFileSystemWatcher(void* vdata);

VirtualQFileSystemWatcher* QFileSystemWatcher_new(const QFileSystemWatcher_VTable* vtbl, size_t vdata);
VirtualQFileSystemWatcher* QFileSystemWatcher_new_paths(const QFileSystemWatcher_VTable* vtbl, size_t vdata, struct seaqt_array /* of struct seaqt_string */  paths);
VirtualQFileSystemWatcher* QFileSystemWatcher_new_parent(const QFileSystemWatcher_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQFileSystemWatcher* QFileSystemWatcher_new_paths_parent(const QFileSystemWatcher_VTable* vtbl, size_t vdata, struct seaqt_array /* of struct seaqt_string */  paths, QObject* parent);

void QFileSystemWatcher_virtbase(QFileSystemWatcher* src, QObject** outptr_QObject);
QMetaObject* QFileSystemWatcher_metaObject(const QFileSystemWatcher* self);
void* QFileSystemWatcher_metacast(QFileSystemWatcher* self, const char* param1);
int QFileSystemWatcher_metacall(QFileSystemWatcher* self, int param1, int param2, void** param3);
struct seaqt_string QFileSystemWatcher_tr_s(const char* s);
bool QFileSystemWatcher_addPath(QFileSystemWatcher* self, struct seaqt_string file);
struct seaqt_array /* of struct seaqt_string */  QFileSystemWatcher_addPaths(QFileSystemWatcher* self, struct seaqt_array /* of struct seaqt_string */  files);
bool QFileSystemWatcher_removePath(QFileSystemWatcher* self, struct seaqt_string file);
struct seaqt_array /* of struct seaqt_string */  QFileSystemWatcher_removePaths(QFileSystemWatcher* self, struct seaqt_array /* of struct seaqt_string */  files);
struct seaqt_array /* of struct seaqt_string */  QFileSystemWatcher_files(const QFileSystemWatcher* self);
struct seaqt_array /* of struct seaqt_string */  QFileSystemWatcher_directories(const QFileSystemWatcher* self);
struct seaqt_string QFileSystemWatcher_tr_s_c(const char* s, const char* c);
struct seaqt_string QFileSystemWatcher_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QFileSystemWatcher_virtualbase_metaObject(const VirtualQFileSystemWatcher* self);
void* QFileSystemWatcher_virtualbase_metacast(VirtualQFileSystemWatcher* self, const char* param1);
int QFileSystemWatcher_virtualbase_metacall(VirtualQFileSystemWatcher* self, int param1, int param2, void** param3);
bool QFileSystemWatcher_virtualbase_event(VirtualQFileSystemWatcher* self, QEvent* event);
bool QFileSystemWatcher_virtualbase_eventFilter(VirtualQFileSystemWatcher* self, QObject* watched, QEvent* event);
void QFileSystemWatcher_virtualbase_timerEvent(VirtualQFileSystemWatcher* self, QTimerEvent* event);
void QFileSystemWatcher_virtualbase_childEvent(VirtualQFileSystemWatcher* self, QChildEvent* event);
void QFileSystemWatcher_virtualbase_customEvent(VirtualQFileSystemWatcher* self, QEvent* event);
void QFileSystemWatcher_virtualbase_connectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal);
void QFileSystemWatcher_virtualbase_disconnectNotify(VirtualQFileSystemWatcher* self, QMetaMethod* signal);

QObject* QFileSystemWatcher_protectedbase_sender(const VirtualQFileSystemWatcher* self);
int QFileSystemWatcher_protectedbase_senderSignalIndex(const VirtualQFileSystemWatcher* self);
int QFileSystemWatcher_protectedbase_receivers(const VirtualQFileSystemWatcher* self, const char* signal);
bool QFileSystemWatcher_protectedbase_isSignalConnected(const VirtualQFileSystemWatcher* self, QMetaMethod* signal);

void QFileSystemWatcher_connect_fileChanged(QFileSystemWatcher* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QFileSystemWatcher_connect_directoryChanged(QFileSystemWatcher* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));

void QFileSystemWatcher_delete(QFileSystemWatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
