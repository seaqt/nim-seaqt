#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLEXTENSIONPLUGIN_H
#define SEAQT_QTQML_GEN_QQMLEXTENSIONPLUGIN_H

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
class QQmlEngine;
class QQmlEngineExtensionInterface;
class QQmlEngineExtensionPlugin;
class QQmlExtensionInterface;
class QQmlExtensionPlugin;
class QQmlTypesExtensionInterface;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlEngineExtensionInterface QQmlEngineExtensionInterface;
typedef struct QQmlEngineExtensionPlugin QQmlEngineExtensionPlugin;
typedef struct QQmlExtensionInterface QQmlExtensionInterface;
typedef struct QQmlExtensionPlugin QQmlExtensionPlugin;
typedef struct QQmlTypesExtensionInterface QQmlTypesExtensionInterface;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQQmlExtensionPlugin VirtualQQmlExtensionPlugin;
typedef struct QQmlExtensionPlugin_VTable{
	void (*destructor)(VirtualQQmlExtensionPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQQmlExtensionPlugin* self);
	void* (*metacast)(VirtualQQmlExtensionPlugin* self, const char* param1);
	int (*metacall)(VirtualQQmlExtensionPlugin* self, int param1, int param2, void** param3);
	void (*registerTypes)(VirtualQQmlExtensionPlugin* self, const char* uri);
	void (*unregisterTypes)(VirtualQQmlExtensionPlugin* self);
	void (*initializeEngine)(VirtualQQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);
	bool (*event)(VirtualQQmlExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);
}QQmlExtensionPlugin_VTable;

const QQmlExtensionPlugin_VTable* QQmlExtensionPlugin_vtbl(const VirtualQQmlExtensionPlugin* self);
void* QQmlExtensionPlugin_vdata(const VirtualQQmlExtensionPlugin* self);
void QQmlExtensionPlugin_setVdata(VirtualQQmlExtensionPlugin* self, void* vdata);

VirtualQQmlExtensionPlugin* QQmlExtensionPlugin_new(const QQmlExtensionPlugin_VTable* vtbl, void* vdata);
VirtualQQmlExtensionPlugin* QQmlExtensionPlugin_new2(const QQmlExtensionPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QQmlExtensionPlugin_virtbase(QQmlExtensionPlugin* src, QObject** outptr_QObject, QQmlExtensionInterface** outptr_QQmlExtensionInterface);
QMetaObject* QQmlExtensionPlugin_metaObject(const QQmlExtensionPlugin* self);
void* QQmlExtensionPlugin_metacast(QQmlExtensionPlugin* self, const char* param1);
int QQmlExtensionPlugin_metacall(QQmlExtensionPlugin* self, int param1, int param2, void** param3);
struct miqt_string QQmlExtensionPlugin_tr(const char* s);
QUrl* QQmlExtensionPlugin_baseUrl(const QQmlExtensionPlugin* self);
void QQmlExtensionPlugin_registerTypes(QQmlExtensionPlugin* self, const char* uri);
void QQmlExtensionPlugin_unregisterTypes(QQmlExtensionPlugin* self);
void QQmlExtensionPlugin_initializeEngine(QQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);
struct miqt_string QQmlExtensionPlugin_tr2(const char* s, const char* c);
struct miqt_string QQmlExtensionPlugin_tr3(const char* s, const char* c, int n);

QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const VirtualQQmlExtensionPlugin* self);
void* QQmlExtensionPlugin_virtualbase_metacast(VirtualQQmlExtensionPlugin* self, const char* param1);
int QQmlExtensionPlugin_virtualbase_metacall(VirtualQQmlExtensionPlugin* self, int param1, int param2, void** param3);
void QQmlExtensionPlugin_virtualbase_registerTypes(VirtualQQmlExtensionPlugin* self, const char* uri);
void QQmlExtensionPlugin_virtualbase_unregisterTypes(VirtualQQmlExtensionPlugin* self);
void QQmlExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);
bool QQmlExtensionPlugin_virtualbase_event(VirtualQQmlExtensionPlugin* self, QEvent* event);
bool QQmlExtensionPlugin_virtualbase_eventFilter(VirtualQQmlExtensionPlugin* self, QObject* watched, QEvent* event);
void QQmlExtensionPlugin_virtualbase_timerEvent(VirtualQQmlExtensionPlugin* self, QTimerEvent* event);
void QQmlExtensionPlugin_virtualbase_childEvent(VirtualQQmlExtensionPlugin* self, QChildEvent* event);
void QQmlExtensionPlugin_virtualbase_customEvent(VirtualQQmlExtensionPlugin* self, QEvent* event);
void QQmlExtensionPlugin_virtualbase_connectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);
void QQmlExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);

QObject* QQmlExtensionPlugin_protectedbase_sender(const VirtualQQmlExtensionPlugin* self);
int QQmlExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlExtensionPlugin* self);
int QQmlExtensionPlugin_protectedbase_receivers(const VirtualQQmlExtensionPlugin* self, const char* signal);
bool QQmlExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);

const QMetaObject* QQmlExtensionPlugin_staticMetaObject();
void QQmlExtensionPlugin_delete(QQmlExtensionPlugin* self);

typedef struct VirtualQQmlEngineExtensionPlugin VirtualQQmlEngineExtensionPlugin;
typedef struct QQmlEngineExtensionPlugin_VTable{
	void (*destructor)(VirtualQQmlEngineExtensionPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQQmlEngineExtensionPlugin* self);
	void* (*metacast)(VirtualQQmlEngineExtensionPlugin* self, const char* param1);
	int (*metacall)(VirtualQQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);
	void (*initializeEngine)(VirtualQQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);
	bool (*event)(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlEngineExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlEngineExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlEngineExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);
}QQmlEngineExtensionPlugin_VTable;

const QQmlEngineExtensionPlugin_VTable* QQmlEngineExtensionPlugin_vtbl(const VirtualQQmlEngineExtensionPlugin* self);
void* QQmlEngineExtensionPlugin_vdata(const VirtualQQmlEngineExtensionPlugin* self);
void QQmlEngineExtensionPlugin_setVdata(VirtualQQmlEngineExtensionPlugin* self, void* vdata);

VirtualQQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new(const QQmlEngineExtensionPlugin_VTable* vtbl, void* vdata);
VirtualQQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new2(const QQmlEngineExtensionPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QQmlEngineExtensionPlugin_virtbase(QQmlEngineExtensionPlugin* src, QObject** outptr_QObject, QQmlEngineExtensionInterface** outptr_QQmlEngineExtensionInterface);
QMetaObject* QQmlEngineExtensionPlugin_metaObject(const QQmlEngineExtensionPlugin* self);
void* QQmlEngineExtensionPlugin_metacast(QQmlEngineExtensionPlugin* self, const char* param1);
int QQmlEngineExtensionPlugin_metacall(QQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);
struct miqt_string QQmlEngineExtensionPlugin_tr(const char* s);
void QQmlEngineExtensionPlugin_initializeEngine(QQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);
struct miqt_string QQmlEngineExtensionPlugin_tr2(const char* s, const char* c);
struct miqt_string QQmlEngineExtensionPlugin_tr3(const char* s, const char* c, int n);

QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const VirtualQQmlEngineExtensionPlugin* self);
void* QQmlEngineExtensionPlugin_virtualbase_metacast(VirtualQQmlEngineExtensionPlugin* self, const char* param1);
int QQmlEngineExtensionPlugin_virtualbase_metacall(VirtualQQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);
void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);
bool QQmlEngineExtensionPlugin_virtualbase_event(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);
bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(VirtualQQmlEngineExtensionPlugin* self, QObject* watched, QEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_timerEvent(VirtualQQmlEngineExtensionPlugin* self, QTimerEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_childEvent(VirtualQQmlEngineExtensionPlugin* self, QChildEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_customEvent(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_connectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);
void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);

QObject* QQmlEngineExtensionPlugin_protectedbase_sender(const VirtualQQmlEngineExtensionPlugin* self);
int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlEngineExtensionPlugin* self);
int QQmlEngineExtensionPlugin_protectedbase_receivers(const VirtualQQmlEngineExtensionPlugin* self, const char* signal);
bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);

const QMetaObject* QQmlEngineExtensionPlugin_staticMetaObject();
void QQmlEngineExtensionPlugin_delete(QQmlEngineExtensionPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
