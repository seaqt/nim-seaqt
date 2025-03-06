#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTYLEPLUGIN_H
#define SEAQT_QTWIDGETS_GEN_QSTYLEPLUGIN_H

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
class QStyle;
class QStylePlugin;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QStyle QStyle;
typedef struct QStylePlugin QStylePlugin;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QStylePlugin_VTable {
	void (*destructor)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self);
	QMetaObject* (*metaObject)(struct QStylePlugin_VTable* vtbl, const QStylePlugin* self);
	void* (*metacast)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, const char* param1);
	int (*metacall)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, int param1, int param2, void** param3);
	QStyle* (*create)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, struct miqt_string key);
	bool (*event)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QEvent* event);
	bool (*eventFilter)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QChildEvent* event);
	void (*customEvent)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QEvent* event);
	void (*connectNotify)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStylePlugin_VTable* vtbl, QStylePlugin* self, QMetaMethod* signal);
};
QStylePlugin* QStylePlugin_new(struct QStylePlugin_VTable* vtbl);
QStylePlugin* QStylePlugin_new2(struct QStylePlugin_VTable* vtbl, QObject* parent);
void QStylePlugin_virtbase(QStylePlugin* src, QObject** outptr_QObject);
QMetaObject* QStylePlugin_metaObject(const QStylePlugin* self);
void* QStylePlugin_metacast(QStylePlugin* self, const char* param1);
int QStylePlugin_metacall(QStylePlugin* self, int param1, int param2, void** param3);
struct miqt_string QStylePlugin_tr(const char* s);
QStyle* QStylePlugin_create(QStylePlugin* self, struct miqt_string key);
struct miqt_string QStylePlugin_tr2(const char* s, const char* c);
struct miqt_string QStylePlugin_tr3(const char* s, const char* c, int n);
QMetaObject* QStylePlugin_virtualbase_metaObject(const void* self);
void* QStylePlugin_virtualbase_metacast(void* self, const char* param1);
int QStylePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QStyle* QStylePlugin_virtualbase_create(void* self, struct miqt_string key);
bool QStylePlugin_virtualbase_event(void* self, QEvent* event);
bool QStylePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStylePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStylePlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QStylePlugin_virtualbase_customEvent(void* self, QEvent* event);
void QStylePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStylePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QStylePlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QStylePlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QStylePlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QStylePlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QStylePlugin_staticMetaObject();
void QStylePlugin_delete(QStylePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
