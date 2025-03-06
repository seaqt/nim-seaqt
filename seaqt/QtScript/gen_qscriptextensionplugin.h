#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONPLUGIN_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONPLUGIN_H

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
class QFactoryInterface;
class QMetaMethod;
class QMetaObject;
class QObject;
class QScriptEngine;
class QScriptExtensionInterface;
class QScriptExtensionPlugin;
class QScriptValue;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFactoryInterface QFactoryInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptExtensionInterface QScriptExtensionInterface;
typedef struct QScriptExtensionPlugin QScriptExtensionPlugin;
typedef struct QScriptValue QScriptValue;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QScriptExtensionPlugin_VTable {
	void (*destructor)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self);
	QMetaObject* (*metaObject)(struct QScriptExtensionPlugin_VTable* vtbl, const QScriptExtensionPlugin* self);
	void* (*metacast)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, const char* param1);
	int (*metacall)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, int param1, int param2, void** param3);
	struct miqt_array /* of struct miqt_string */  (*keys)(struct QScriptExtensionPlugin_VTable* vtbl, const QScriptExtensionPlugin* self);
	void (*initialize)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, struct miqt_string key, QScriptEngine* engine);
	bool (*event)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QScriptExtensionPlugin_VTable* vtbl, QScriptExtensionPlugin* self, QMetaMethod* signal);
};
QScriptExtensionPlugin* QScriptExtensionPlugin_new(struct QScriptExtensionPlugin_VTable* vtbl);
QScriptExtensionPlugin* QScriptExtensionPlugin_new2(struct QScriptExtensionPlugin_VTable* vtbl, QObject* parent);
void QScriptExtensionPlugin_virtbase(QScriptExtensionPlugin* src, QObject** outptr_QObject, QScriptExtensionInterface** outptr_QScriptExtensionInterface);
QMetaObject* QScriptExtensionPlugin_metaObject(const QScriptExtensionPlugin* self);
void* QScriptExtensionPlugin_metacast(QScriptExtensionPlugin* self, const char* param1);
int QScriptExtensionPlugin_metacall(QScriptExtensionPlugin* self, int param1, int param2, void** param3);
struct miqt_string QScriptExtensionPlugin_tr(const char* s);
struct miqt_string QScriptExtensionPlugin_trUtf8(const char* s);
struct miqt_array /* of struct miqt_string */  QScriptExtensionPlugin_keys(const QScriptExtensionPlugin* self);
void QScriptExtensionPlugin_initialize(QScriptExtensionPlugin* self, struct miqt_string key, QScriptEngine* engine);
QScriptValue* QScriptExtensionPlugin_setupPackage(const QScriptExtensionPlugin* self, struct miqt_string key, QScriptEngine* engine);
struct miqt_string QScriptExtensionPlugin_tr2(const char* s, const char* c);
struct miqt_string QScriptExtensionPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QScriptExtensionPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QScriptExtensionPlugin_trUtf83(const char* s, const char* c, int n);
QMetaObject* QScriptExtensionPlugin_virtualbase_metaObject(const void* self);
void* QScriptExtensionPlugin_virtualbase_metacast(void* self, const char* param1);
int QScriptExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_array /* of struct miqt_string */  QScriptExtensionPlugin_virtualbase_keys(const void* self);
void QScriptExtensionPlugin_virtualbase_initialize(void* self, struct miqt_string key, QScriptEngine* engine);
bool QScriptExtensionPlugin_virtualbase_event(void* self, QEvent* event);
bool QScriptExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QScriptExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QScriptExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QScriptExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QScriptExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QScriptExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QScriptExtensionPlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QScriptExtensionPlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QScriptExtensionPlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QScriptExtensionPlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QScriptExtensionPlugin_staticMetaObject();
void QScriptExtensionPlugin_delete(QScriptExtensionPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
