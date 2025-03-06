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

struct QQmlExtensionPlugin_VTable {
	void (*destructor)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self);
	QMetaObject* (*metaObject)(struct QQmlExtensionPlugin_VTable* vtbl, const QQmlExtensionPlugin* self);
	void* (*metacast)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, const char* param1);
	int (*metacall)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, int param1, int param2, void** param3);
	void (*registerTypes)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, const char* uri);
	void (*initializeEngine)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);
	bool (*event)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlExtensionPlugin_VTable* vtbl, QQmlExtensionPlugin* self, QMetaMethod* signal);
};
QQmlExtensionPlugin* QQmlExtensionPlugin_new(struct QQmlExtensionPlugin_VTable* vtbl);
QQmlExtensionPlugin* QQmlExtensionPlugin_new2(struct QQmlExtensionPlugin_VTable* vtbl, QObject* parent);
void QQmlExtensionPlugin_virtbase(QQmlExtensionPlugin* src, QObject** outptr_QObject, QQmlExtensionInterface** outptr_QQmlExtensionInterface);
QMetaObject* QQmlExtensionPlugin_metaObject(const QQmlExtensionPlugin* self);
void* QQmlExtensionPlugin_metacast(QQmlExtensionPlugin* self, const char* param1);
int QQmlExtensionPlugin_metacall(QQmlExtensionPlugin* self, int param1, int param2, void** param3);
struct miqt_string QQmlExtensionPlugin_tr(const char* s);
struct miqt_string QQmlExtensionPlugin_trUtf8(const char* s);
QUrl* QQmlExtensionPlugin_baseUrl(const QQmlExtensionPlugin* self);
void QQmlExtensionPlugin_registerTypes(QQmlExtensionPlugin* self, const char* uri);
void QQmlExtensionPlugin_initializeEngine(QQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);
struct miqt_string QQmlExtensionPlugin_tr2(const char* s, const char* c);
struct miqt_string QQmlExtensionPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlExtensionPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QQmlExtensionPlugin_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const void* self);
void* QQmlExtensionPlugin_virtualbase_metacast(void* self, const char* param1);
int QQmlExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QQmlExtensionPlugin_virtualbase_registerTypes(void* self, const char* uri);
void QQmlExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri);
bool QQmlExtensionPlugin_virtualbase_event(void* self, QEvent* event);
bool QQmlExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QQmlExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlExtensionPlugin_protectedbase_sender(const void* self);
int QQmlExtensionPlugin_protectedbase_senderSignalIndex(const void* self);
int QQmlExtensionPlugin_protectedbase_receivers(const void* self, const char* signal);
bool QQmlExtensionPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQmlExtensionPlugin_staticMetaObject();
void QQmlExtensionPlugin_delete(QQmlExtensionPlugin* self);

struct QQmlEngineExtensionPlugin_VTable {
	void (*destructor)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self);
	QMetaObject* (*metaObject)(struct QQmlEngineExtensionPlugin_VTable* vtbl, const QQmlEngineExtensionPlugin* self);
	void* (*metacast)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, const char* param1);
	int (*metacall)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);
	void (*initializeEngine)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);
	bool (*event)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlEngineExtensionPlugin_VTable* vtbl, QQmlEngineExtensionPlugin* self, QMetaMethod* signal);
};
QQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new(struct QQmlEngineExtensionPlugin_VTable* vtbl);
QQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new2(struct QQmlEngineExtensionPlugin_VTable* vtbl, QObject* parent);
void QQmlEngineExtensionPlugin_virtbase(QQmlEngineExtensionPlugin* src, QObject** outptr_QObject, QQmlEngineExtensionInterface** outptr_QQmlEngineExtensionInterface);
QMetaObject* QQmlEngineExtensionPlugin_metaObject(const QQmlEngineExtensionPlugin* self);
void* QQmlEngineExtensionPlugin_metacast(QQmlEngineExtensionPlugin* self, const char* param1);
int QQmlEngineExtensionPlugin_metacall(QQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);
struct miqt_string QQmlEngineExtensionPlugin_tr(const char* s);
struct miqt_string QQmlEngineExtensionPlugin_trUtf8(const char* s);
void QQmlEngineExtensionPlugin_initializeEngine(QQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);
struct miqt_string QQmlEngineExtensionPlugin_tr2(const char* s, const char* c);
struct miqt_string QQmlEngineExtensionPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlEngineExtensionPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QQmlEngineExtensionPlugin_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const void* self);
void* QQmlEngineExtensionPlugin_virtualbase_metacast(void* self, const char* param1);
int QQmlEngineExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(void* self, QQmlEngine* engine, const char* uri);
bool QQmlEngineExtensionPlugin_virtualbase_event(void* self, QEvent* event);
bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QQmlEngineExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlEngineExtensionPlugin_protectedbase_sender(const void* self);
int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(const void* self);
int QQmlEngineExtensionPlugin_protectedbase_receivers(const void* self, const char* signal);
bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQmlEngineExtensionPlugin_staticMetaObject();
void QQmlEngineExtensionPlugin_delete(QQmlEngineExtensionPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
