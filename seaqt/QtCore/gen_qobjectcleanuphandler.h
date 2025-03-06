#pragma once
#ifndef SEAQT_QTCORE_GEN_QOBJECTCLEANUPHANDLER_H
#define SEAQT_QTCORE_GEN_QOBJECTCLEANUPHANDLER_H

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
class QObjectCleanupHandler;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QObjectCleanupHandler QObjectCleanupHandler;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QObjectCleanupHandler_VTable {
	void (*destructor)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self);
	QMetaObject* (*metaObject)(struct QObjectCleanupHandler_VTable* vtbl, const QObjectCleanupHandler* self);
	void* (*metacast)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, const char* param1);
	int (*metacall)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, int param1, int param2, void** param3);
	bool (*event)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QEvent* event);
	bool (*eventFilter)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QTimerEvent* event);
	void (*childEvent)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QChildEvent* event);
	void (*customEvent)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QEvent* event);
	void (*connectNotify)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QObjectCleanupHandler_VTable* vtbl, QObjectCleanupHandler* self, QMetaMethod* signal);
};
QObjectCleanupHandler* QObjectCleanupHandler_new(struct QObjectCleanupHandler_VTable* vtbl);
void QObjectCleanupHandler_virtbase(QObjectCleanupHandler* src, QObject** outptr_QObject);
QMetaObject* QObjectCleanupHandler_metaObject(const QObjectCleanupHandler* self);
void* QObjectCleanupHandler_metacast(QObjectCleanupHandler* self, const char* param1);
int QObjectCleanupHandler_metacall(QObjectCleanupHandler* self, int param1, int param2, void** param3);
struct miqt_string QObjectCleanupHandler_tr(const char* s);
struct miqt_string QObjectCleanupHandler_trUtf8(const char* s);
QObject* QObjectCleanupHandler_add(QObjectCleanupHandler* self, QObject* object);
void QObjectCleanupHandler_remove(QObjectCleanupHandler* self, QObject* object);
bool QObjectCleanupHandler_isEmpty(const QObjectCleanupHandler* self);
void QObjectCleanupHandler_clear(QObjectCleanupHandler* self);
struct miqt_string QObjectCleanupHandler_tr2(const char* s, const char* c);
struct miqt_string QObjectCleanupHandler_tr3(const char* s, const char* c, int n);
struct miqt_string QObjectCleanupHandler_trUtf82(const char* s, const char* c);
struct miqt_string QObjectCleanupHandler_trUtf83(const char* s, const char* c, int n);
QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const void* self);
void* QObjectCleanupHandler_virtualbase_metacast(void* self, const char* param1);
int QObjectCleanupHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QObjectCleanupHandler_virtualbase_event(void* self, QEvent* event);
bool QObjectCleanupHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QObjectCleanupHandler_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QObjectCleanupHandler_virtualbase_childEvent(void* self, QChildEvent* event);
void QObjectCleanupHandler_virtualbase_customEvent(void* self, QEvent* event);
void QObjectCleanupHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QObjectCleanupHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QObjectCleanupHandler_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QObjectCleanupHandler_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QObjectCleanupHandler_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QObjectCleanupHandler_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QObjectCleanupHandler_staticMetaObject();
void QObjectCleanupHandler_delete(QObjectCleanupHandler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
