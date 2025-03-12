#pragma once
#ifndef SEAQT_QTCORE_GEN_QSHAREDMEMORY_H
#define SEAQT_QTCORE_GEN_QSHAREDMEMORY_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QSharedMemory;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSharedMemory QSharedMemory;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSharedMemory VirtualQSharedMemory;
typedef struct QSharedMemory_VTable{
	void (*destructor)(VirtualQSharedMemory* self);
	QMetaObject* (*metaObject)(const VirtualQSharedMemory* self);
	void* (*metacast)(VirtualQSharedMemory* self, const char* param1);
	int (*metacall)(VirtualQSharedMemory* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSharedMemory* self, QEvent* event);
	bool (*eventFilter)(VirtualQSharedMemory* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSharedMemory* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSharedMemory* self, QChildEvent* event);
	void (*customEvent)(VirtualQSharedMemory* self, QEvent* event);
	void (*connectNotify)(VirtualQSharedMemory* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSharedMemory* self, QMetaMethod* signal);
}QSharedMemory_VTable;

const QSharedMemory_VTable* QSharedMemory_vtbl(const VirtualQSharedMemory* self);
void* QSharedMemory_vdata(const VirtualQSharedMemory* self);
void QSharedMemory_setVdata(VirtualQSharedMemory* self, void* vdata);

VirtualQSharedMemory* QSharedMemory_new(const QSharedMemory_VTable* vtbl, void* vdata);
VirtualQSharedMemory* QSharedMemory_new2(const QSharedMemory_VTable* vtbl, void* vdata, struct miqt_string key);
VirtualQSharedMemory* QSharedMemory_new3(const QSharedMemory_VTable* vtbl, void* vdata, QObject* parent);
VirtualQSharedMemory* QSharedMemory_new4(const QSharedMemory_VTable* vtbl, void* vdata, struct miqt_string key, QObject* parent);

void QSharedMemory_virtbase(QSharedMemory* src, QObject** outptr_QObject);
QMetaObject* QSharedMemory_metaObject(const QSharedMemory* self);
void* QSharedMemory_metacast(QSharedMemory* self, const char* param1);
int QSharedMemory_metacall(QSharedMemory* self, int param1, int param2, void** param3);
struct miqt_string QSharedMemory_tr(const char* s);
struct miqt_string QSharedMemory_trUtf8(const char* s);
void QSharedMemory_setKey(QSharedMemory* self, struct miqt_string key);
struct miqt_string QSharedMemory_key(const QSharedMemory* self);
void QSharedMemory_setNativeKey(QSharedMemory* self, struct miqt_string key);
struct miqt_string QSharedMemory_nativeKey(const QSharedMemory* self);
bool QSharedMemory_create(QSharedMemory* self, int size);
int QSharedMemory_size(const QSharedMemory* self);
bool QSharedMemory_attach(QSharedMemory* self);
bool QSharedMemory_isAttached(const QSharedMemory* self);
bool QSharedMemory_detach(QSharedMemory* self);
void* QSharedMemory_data(QSharedMemory* self);
const void* QSharedMemory_constData(const QSharedMemory* self);
const void* QSharedMemory_data2(const QSharedMemory* self);
bool QSharedMemory_lock(QSharedMemory* self);
bool QSharedMemory_unlock(QSharedMemory* self);
int QSharedMemory_error(const QSharedMemory* self);
struct miqt_string QSharedMemory_errorString(const QSharedMemory* self);
struct miqt_string QSharedMemory_tr2(const char* s, const char* c);
struct miqt_string QSharedMemory_tr3(const char* s, const char* c, int n);
struct miqt_string QSharedMemory_trUtf82(const char* s, const char* c);
struct miqt_string QSharedMemory_trUtf83(const char* s, const char* c, int n);
bool QSharedMemory_create2(QSharedMemory* self, int size, int mode);
bool QSharedMemory_attach1(QSharedMemory* self, int mode);

QMetaObject* QSharedMemory_virtualbase_metaObject(const VirtualQSharedMemory* self);
void* QSharedMemory_virtualbase_metacast(VirtualQSharedMemory* self, const char* param1);
int QSharedMemory_virtualbase_metacall(VirtualQSharedMemory* self, int param1, int param2, void** param3);
bool QSharedMemory_virtualbase_event(VirtualQSharedMemory* self, QEvent* event);
bool QSharedMemory_virtualbase_eventFilter(VirtualQSharedMemory* self, QObject* watched, QEvent* event);
void QSharedMemory_virtualbase_timerEvent(VirtualQSharedMemory* self, QTimerEvent* event);
void QSharedMemory_virtualbase_childEvent(VirtualQSharedMemory* self, QChildEvent* event);
void QSharedMemory_virtualbase_customEvent(VirtualQSharedMemory* self, QEvent* event);
void QSharedMemory_virtualbase_connectNotify(VirtualQSharedMemory* self, QMetaMethod* signal);
void QSharedMemory_virtualbase_disconnectNotify(VirtualQSharedMemory* self, QMetaMethod* signal);

QObject* QSharedMemory_protectedbase_sender(const VirtualQSharedMemory* self);
int QSharedMemory_protectedbase_senderSignalIndex(const VirtualQSharedMemory* self);
int QSharedMemory_protectedbase_receivers(const VirtualQSharedMemory* self, const char* signal);
bool QSharedMemory_protectedbase_isSignalConnected(const VirtualQSharedMemory* self, QMetaMethod* signal);

const QMetaObject* QSharedMemory_staticMetaObject();
void QSharedMemory_delete(QSharedMemory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
