#pragma once
#ifndef SEAQT_QTGUI_GEN_QGENERICPLUGIN_H
#define SEAQT_QTGUI_GEN_QGENERICPLUGIN_H

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
class QGenericPlugin;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGenericPlugin QGenericPlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QGenericPlugin_VTable {
	void (*destructor)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self);
	QMetaObject* (*metaObject)(struct QGenericPlugin_VTable* vtbl, const QGenericPlugin* self);
	void* (*metacast)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, const char* param1);
	int (*metacall)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, int param1, int param2, void** param3);
	QObject* (*create)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, struct miqt_string name, struct miqt_string spec);
	bool (*event)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QEvent* event);
	void (*connectNotify)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGenericPlugin_VTable* vtbl, QGenericPlugin* self, QMetaMethod* signal);
};
QGenericPlugin* QGenericPlugin_new(struct QGenericPlugin_VTable* vtbl);
QGenericPlugin* QGenericPlugin_new2(struct QGenericPlugin_VTable* vtbl, QObject* parent);
void QGenericPlugin_virtbase(QGenericPlugin* src, QObject** outptr_QObject);
QMetaObject* QGenericPlugin_metaObject(const QGenericPlugin* self);
void* QGenericPlugin_metacast(QGenericPlugin* self, const char* param1);
int QGenericPlugin_metacall(QGenericPlugin* self, int param1, int param2, void** param3);
struct miqt_string QGenericPlugin_tr(const char* s);
struct miqt_string QGenericPlugin_trUtf8(const char* s);
QObject* QGenericPlugin_create(QGenericPlugin* self, struct miqt_string name, struct miqt_string spec);
struct miqt_string QGenericPlugin_tr2(const char* s, const char* c);
struct miqt_string QGenericPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QGenericPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QGenericPlugin_trUtf83(const char* s, const char* c, int n);
QMetaObject* QGenericPlugin_virtualbase_metaObject(const void* self);
void* QGenericPlugin_virtualbase_metacast(void* self, const char* param1);
int QGenericPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QObject* QGenericPlugin_virtualbase_create(void* self, struct miqt_string name, struct miqt_string spec);
bool QGenericPlugin_virtualbase_event(void* self, QEvent* event);
bool QGenericPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QGenericPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGenericPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QGenericPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QGenericPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGenericPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QGenericPlugin_protectedbase_sender(const void* self);
int QGenericPlugin_protectedbase_senderSignalIndex(const void* self);
int QGenericPlugin_protectedbase_receivers(const void* self, const char* signal);
bool QGenericPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QGenericPlugin_staticMetaObject();
void QGenericPlugin_delete(QGenericPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
