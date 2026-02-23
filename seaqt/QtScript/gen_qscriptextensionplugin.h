#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONPLUGIN_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTEXTENSIONPLUGIN_H

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

typedef struct VirtualQScriptExtensionPlugin VirtualQScriptExtensionPlugin;
typedef struct QScriptExtensionPlugin_VTable{
	void (*destructor)(VirtualQScriptExtensionPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQScriptExtensionPlugin* self);
	void* (*metacast)(VirtualQScriptExtensionPlugin* self, const char* param1);
	int (*metacall)(VirtualQScriptExtensionPlugin* self, int param1, int param2, void** param3);
	struct seaqt_array /* of struct seaqt_string */  (*keys)(const VirtualQScriptExtensionPlugin* self);
	void (*initialize)(VirtualQScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine);
	bool (*event)(VirtualQScriptExtensionPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQScriptExtensionPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQScriptExtensionPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQScriptExtensionPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQScriptExtensionPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);
}QScriptExtensionPlugin_VTable;

void* QScriptExtensionPlugin_vdata(VirtualQScriptExtensionPlugin* self);
VirtualQScriptExtensionPlugin* vdata_QScriptExtensionPlugin(void* vdata);

VirtualQScriptExtensionPlugin* QScriptExtensionPlugin_new(const QScriptExtensionPlugin_VTable* vtbl, size_t vdata);
VirtualQScriptExtensionPlugin* QScriptExtensionPlugin_new_parent(const QScriptExtensionPlugin_VTable* vtbl, size_t vdata, QObject* parent);

void QScriptExtensionPlugin_virtbase(QScriptExtensionPlugin* src, QObject** outptr_QObject, QScriptExtensionInterface** outptr_QScriptExtensionInterface);
QMetaObject* QScriptExtensionPlugin_metaObject(const QScriptExtensionPlugin* self);
void* QScriptExtensionPlugin_metacast(QScriptExtensionPlugin* self, const char* param1);
int QScriptExtensionPlugin_metacall(QScriptExtensionPlugin* self, int param1, int param2, void** param3);
struct seaqt_string QScriptExtensionPlugin_tr_s(const char* s);
struct seaqt_string QScriptExtensionPlugin_trUtf8_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QScriptExtensionPlugin_keys(const QScriptExtensionPlugin* self);
void QScriptExtensionPlugin_initialize(QScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine);
QScriptValue* QScriptExtensionPlugin_setupPackage(const QScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine);
struct seaqt_string QScriptExtensionPlugin_tr_s_c(const char* s, const char* c);
struct seaqt_string QScriptExtensionPlugin_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QScriptExtensionPlugin_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QScriptExtensionPlugin_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QScriptExtensionPlugin_virtualbase_metaObject(const VirtualQScriptExtensionPlugin* self);
void* QScriptExtensionPlugin_virtualbase_metacast(VirtualQScriptExtensionPlugin* self, const char* param1);
int QScriptExtensionPlugin_virtualbase_metacall(VirtualQScriptExtensionPlugin* self, int param1, int param2, void** param3);
struct seaqt_array /* of struct seaqt_string */  QScriptExtensionPlugin_virtualbase_keys(const VirtualQScriptExtensionPlugin* self);
void QScriptExtensionPlugin_virtualbase_initialize(VirtualQScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine);
bool QScriptExtensionPlugin_virtualbase_event(VirtualQScriptExtensionPlugin* self, QEvent* event);
bool QScriptExtensionPlugin_virtualbase_eventFilter(VirtualQScriptExtensionPlugin* self, QObject* watched, QEvent* event);
void QScriptExtensionPlugin_virtualbase_timerEvent(VirtualQScriptExtensionPlugin* self, QTimerEvent* event);
void QScriptExtensionPlugin_virtualbase_childEvent(VirtualQScriptExtensionPlugin* self, QChildEvent* event);
void QScriptExtensionPlugin_virtualbase_customEvent(VirtualQScriptExtensionPlugin* self, QEvent* event);
void QScriptExtensionPlugin_virtualbase_connectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);
void QScriptExtensionPlugin_virtualbase_disconnectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);

QObject* QScriptExtensionPlugin_protectedbase_sender(const VirtualQScriptExtensionPlugin* self);
int QScriptExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQScriptExtensionPlugin* self);
int QScriptExtensionPlugin_protectedbase_receivers(const VirtualQScriptExtensionPlugin* self, const char* signal);
bool QScriptExtensionPlugin_protectedbase_isSignalConnected(const VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);

void QScriptExtensionPlugin_delete(QScriptExtensionPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
