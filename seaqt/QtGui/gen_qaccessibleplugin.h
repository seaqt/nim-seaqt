#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBLEPLUGIN_H
#define SEAQT_QTGUI_GEN_QACCESSIBLEPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleInterface;
class QAccessiblePlugin;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessiblePlugin QAccessiblePlugin;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAccessiblePlugin_VTable {
	void (*destructor)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self);
	QMetaObject* (*metaObject)(struct QAccessiblePlugin_VTable* vtbl, const QAccessiblePlugin* self);
	void* (*metacast)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, const char* param1);
	int (*metacall)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, int param1, int param2, void** param3);
	QAccessibleInterface* (*create)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, struct miqt_string key, QObject* object);
	bool (*event)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QEvent* event);
	bool (*eventFilter)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QChildEvent* event);
	void (*customEvent)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QEvent* event);
	void (*connectNotify)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAccessiblePlugin_VTable* vtbl, QAccessiblePlugin* self, QMetaMethod* signal);
};
QAccessiblePlugin* QAccessiblePlugin_new(struct QAccessiblePlugin_VTable* vtbl);
QAccessiblePlugin* QAccessiblePlugin_new2(struct QAccessiblePlugin_VTable* vtbl, QObject* parent);
void QAccessiblePlugin_virtbase(QAccessiblePlugin* src, QObject** outptr_QObject);
QMetaObject* QAccessiblePlugin_metaObject(const QAccessiblePlugin* self);
void* QAccessiblePlugin_metacast(QAccessiblePlugin* self, const char* param1);
int QAccessiblePlugin_metacall(QAccessiblePlugin* self, int param1, int param2, void** param3);
struct miqt_string QAccessiblePlugin_tr(const char* s);
struct miqt_string QAccessiblePlugin_trUtf8(const char* s);
QAccessibleInterface* QAccessiblePlugin_create(QAccessiblePlugin* self, struct miqt_string key, QObject* object);
struct miqt_string QAccessiblePlugin_tr2(const char* s, const char* c);
struct miqt_string QAccessiblePlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QAccessiblePlugin_trUtf82(const char* s, const char* c);
struct miqt_string QAccessiblePlugin_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAccessiblePlugin_virtualbase_metaObject(const void* self);
void* QAccessiblePlugin_virtualbase_metacast(void* self, const char* param1);
int QAccessiblePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QAccessibleInterface* QAccessiblePlugin_virtualbase_create(void* self, struct miqt_string key, QObject* object);
bool QAccessiblePlugin_virtualbase_event(void* self, QEvent* event);
bool QAccessiblePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAccessiblePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAccessiblePlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QAccessiblePlugin_virtualbase_customEvent(void* self, QEvent* event);
void QAccessiblePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAccessiblePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAccessiblePlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAccessiblePlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAccessiblePlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAccessiblePlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAccessiblePlugin_staticMetaObject();
void QAccessiblePlugin_delete(QAccessiblePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
