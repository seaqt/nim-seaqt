#pragma once
#ifndef SEAQT_QTCORE_GEN_QLIBRARY_H
#define SEAQT_QTCORE_GEN_QLIBRARY_H

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
class QLibrary;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QLibrary QLibrary;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQLibrary VirtualQLibrary;
typedef struct QLibrary_VTable{
	void (*destructor)(VirtualQLibrary* self);
	QMetaObject* (*metaObject)(const VirtualQLibrary* self);
	void* (*metacast)(VirtualQLibrary* self, const char* param1);
	int (*metacall)(VirtualQLibrary* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQLibrary* self, QEvent* event);
	bool (*eventFilter)(VirtualQLibrary* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLibrary* self, QTimerEvent* event);
	void (*childEvent)(VirtualQLibrary* self, QChildEvent* event);
	void (*customEvent)(VirtualQLibrary* self, QEvent* event);
	void (*connectNotify)(VirtualQLibrary* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLibrary* self, QMetaMethod* signal);
}QLibrary_VTable;

void* QLibrary_vdata(VirtualQLibrary* self);
VirtualQLibrary* vdata_QLibrary(void* vdata);

VirtualQLibrary* QLibrary_new(const QLibrary_VTable* vtbl, size_t vdata);
VirtualQLibrary* QLibrary_new_fileName(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName);
VirtualQLibrary* QLibrary_new_fileName_verNum(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName, int verNum);
VirtualQLibrary* QLibrary_new_fileName_version(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName, struct seaqt_string version);
VirtualQLibrary* QLibrary_new_parent(const QLibrary_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQLibrary* QLibrary_new_fileName_parent(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName, QObject* parent);
VirtualQLibrary* QLibrary_new_fileName_verNum_parent(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName, int verNum, QObject* parent);
VirtualQLibrary* QLibrary_new_fileName_version_parent(const QLibrary_VTable* vtbl, size_t vdata, struct seaqt_string fileName, struct seaqt_string version, QObject* parent);

void QLibrary_virtbase(QLibrary* src, QObject** outptr_QObject);
QMetaObject* QLibrary_metaObject(const QLibrary* self);
void* QLibrary_metacast(QLibrary* self, const char* param1);
int QLibrary_metacall(QLibrary* self, int param1, int param2, void** param3);
struct seaqt_string QLibrary_tr_s(const char* s);
bool QLibrary_load(QLibrary* self);
bool QLibrary_unload(QLibrary* self);
bool QLibrary_isLoaded(const QLibrary* self);
bool QLibrary_isLibrary(struct seaqt_string fileName);
void QLibrary_setFileName(QLibrary* self, struct seaqt_string fileName);
struct seaqt_string QLibrary_fileName(const QLibrary* self);
void QLibrary_setFileNameAndVersion_fileName_verNum(QLibrary* self, struct seaqt_string fileName, int verNum);
void QLibrary_setFileNameAndVersion_fileName_version(QLibrary* self, struct seaqt_string fileName, struct seaqt_string version);
struct seaqt_string QLibrary_errorString(const QLibrary* self);
void QLibrary_setLoadHints(QLibrary* self, int hints);
int QLibrary_loadHints(const QLibrary* self);
struct seaqt_string QLibrary_tr_s_c(const char* s, const char* c);
struct seaqt_string QLibrary_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QLibrary_virtualbase_metaObject(const VirtualQLibrary* self);
void* QLibrary_virtualbase_metacast(VirtualQLibrary* self, const char* param1);
int QLibrary_virtualbase_metacall(VirtualQLibrary* self, int param1, int param2, void** param3);
bool QLibrary_virtualbase_event(VirtualQLibrary* self, QEvent* event);
bool QLibrary_virtualbase_eventFilter(VirtualQLibrary* self, QObject* watched, QEvent* event);
void QLibrary_virtualbase_timerEvent(VirtualQLibrary* self, QTimerEvent* event);
void QLibrary_virtualbase_childEvent(VirtualQLibrary* self, QChildEvent* event);
void QLibrary_virtualbase_customEvent(VirtualQLibrary* self, QEvent* event);
void QLibrary_virtualbase_connectNotify(VirtualQLibrary* self, QMetaMethod* signal);
void QLibrary_virtualbase_disconnectNotify(VirtualQLibrary* self, QMetaMethod* signal);

QObject* QLibrary_protectedbase_sender(const VirtualQLibrary* self);
int QLibrary_protectedbase_senderSignalIndex(const VirtualQLibrary* self);
int QLibrary_protectedbase_receivers(const VirtualQLibrary* self, const char* signal);
bool QLibrary_protectedbase_isSignalConnected(const VirtualQLibrary* self, QMetaMethod* signal);

const QMetaObject* QLibrary_staticMetaObject();
void QLibrary_delete(QLibrary* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
