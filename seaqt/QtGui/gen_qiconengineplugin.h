#pragma once
#ifndef SEAQT_QTGUI_GEN_QICONENGINEPLUGIN_H
#define SEAQT_QTGUI_GEN_QICONENGINEPLUGIN_H

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
class QIconEngine;
class QIconEnginePlugin;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIconEngine QIconEngine;
typedef struct QIconEnginePlugin QIconEnginePlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QIconEnginePlugin_VTable {
	void (*destructor)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self);
	QMetaObject* (*metaObject)(struct QIconEnginePlugin_VTable* vtbl, const QIconEnginePlugin* self);
	void* (*metacast)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, const char* param1);
	int (*metacall)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, int param1, int param2, void** param3);
	QIconEngine* (*create)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, struct miqt_string filename);
	bool (*event)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QEvent* event);
	bool (*eventFilter)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QChildEvent* event);
	void (*customEvent)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QEvent* event);
	void (*connectNotify)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QIconEnginePlugin_VTable* vtbl, QIconEnginePlugin* self, QMetaMethod* signal);
};
QIconEnginePlugin* QIconEnginePlugin_new(struct QIconEnginePlugin_VTable* vtbl);
QIconEnginePlugin* QIconEnginePlugin_new2(struct QIconEnginePlugin_VTable* vtbl, QObject* parent);
void QIconEnginePlugin_virtbase(QIconEnginePlugin* src, QObject** outptr_QObject);
QMetaObject* QIconEnginePlugin_metaObject(const QIconEnginePlugin* self);
void* QIconEnginePlugin_metacast(QIconEnginePlugin* self, const char* param1);
int QIconEnginePlugin_metacall(QIconEnginePlugin* self, int param1, int param2, void** param3);
struct miqt_string QIconEnginePlugin_tr(const char* s);
QIconEngine* QIconEnginePlugin_create(QIconEnginePlugin* self, struct miqt_string filename);
struct miqt_string QIconEnginePlugin_tr2(const char* s, const char* c);
struct miqt_string QIconEnginePlugin_tr3(const char* s, const char* c, int n);
QMetaObject* QIconEnginePlugin_virtualbase_metaObject(const void* self);
void* QIconEnginePlugin_virtualbase_metacast(void* self, const char* param1);
int QIconEnginePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QIconEngine* QIconEnginePlugin_virtualbase_create(void* self, struct miqt_string filename);
bool QIconEnginePlugin_virtualbase_event(void* self, QEvent* event);
bool QIconEnginePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QIconEnginePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QIconEnginePlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QIconEnginePlugin_virtualbase_customEvent(void* self, QEvent* event);
void QIconEnginePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QIconEnginePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QIconEnginePlugin_protectedbase_sender(const void* self);
int QIconEnginePlugin_protectedbase_senderSignalIndex(const void* self);
int QIconEnginePlugin_protectedbase_receivers(const void* self, const char* signal);
bool QIconEnginePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QIconEnginePlugin_staticMetaObject();
void QIconEnginePlugin_delete(QIconEnginePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
