#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLCONTEXT_H
#define SEAQT_QTQML_GEN_QQMLCONTEXT_H

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
class QJSValue;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlContext;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQmlContext__PropertyPair)
typedef QQmlContext::PropertyPair QQmlContext__PropertyPair;
#else
class QQmlContext__PropertyPair;
#endif
class QQmlEngine;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJSValue QJSValue;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlContext__PropertyPair QQmlContext__PropertyPair;
typedef struct QQmlEngine QQmlEngine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlContext VirtualQQmlContext;
typedef struct QQmlContext_VTable{
	void (*destructor)(VirtualQQmlContext* self);
	QMetaObject* (*metaObject)(const VirtualQQmlContext* self);
	void* (*metacast)(VirtualQQmlContext* self, const char* param1);
	int (*metacall)(VirtualQQmlContext* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlContext* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlContext* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlContext* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlContext* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlContext* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlContext* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlContext* self, QMetaMethod* signal);
}QQmlContext_VTable;

void* QQmlContext_vdata(VirtualQQmlContext* self);
VirtualQQmlContext* vdata_QQmlContext(void* vdata);

VirtualQQmlContext* QQmlContext_new_QQmlEngine(const QQmlContext_VTable* vtbl, size_t vdata, QQmlEngine* parent);
VirtualQQmlContext* QQmlContext_new_QQmlContext(const QQmlContext_VTable* vtbl, size_t vdata, QQmlContext* parent);
VirtualQQmlContext* QQmlContext_new_QQmlEngine_QObject(const QQmlContext_VTable* vtbl, size_t vdata, QQmlEngine* parent, QObject* objParent);
VirtualQQmlContext* QQmlContext_new_QQmlContext_QObject(const QQmlContext_VTable* vtbl, size_t vdata, QQmlContext* parent, QObject* objParent);

void QQmlContext_virtbase(QQmlContext* src, QObject** outptr_QObject);
QMetaObject* QQmlContext_metaObject(const QQmlContext* self);
void* QQmlContext_metacast(QQmlContext* self, const char* param1);
int QQmlContext_metacall(QQmlContext* self, int param1, int param2, void** param3);
struct seaqt_string QQmlContext_tr_s(const char* s);
bool QQmlContext_isValid(const QQmlContext* self);
QQmlEngine* QQmlContext_engine(const QQmlContext* self);
QQmlContext* QQmlContext_parentContext(const QQmlContext* self);
QObject* QQmlContext_contextObject(const QQmlContext* self);
void QQmlContext_setContextObject(QQmlContext* self, QObject* contextObject);
QVariant* QQmlContext_contextProperty(const QQmlContext* self, struct seaqt_string param1);
void QQmlContext_setContextProperty_QString_QObject(QQmlContext* self, struct seaqt_string param1, QObject* param2);
void QQmlContext_setContextProperty_QString_QVariant(QQmlContext* self, struct seaqt_string param1, QVariant* param2);
void QQmlContext_setContextProperties(QQmlContext* self, struct seaqt_array /* of QQmlContext__PropertyPair* */  properties);
struct seaqt_string QQmlContext_nameForObject(const QQmlContext* self, QObject* param1);
QObject* QQmlContext_objectForName(const QQmlContext* self, struct seaqt_string param1);
QUrl* QQmlContext_resolvedUrl(const QQmlContext* self, QUrl* param1);
void QQmlContext_setBaseUrl(QQmlContext* self, QUrl* baseUrl);
QUrl* QQmlContext_baseUrl(const QQmlContext* self);
QJSValue* QQmlContext_importedScript(const QQmlContext* self, struct seaqt_string name);
struct seaqt_string QQmlContext_tr_s_c(const char* s, const char* c);
struct seaqt_string QQmlContext_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QQmlContext_virtualbase_metaObject(const VirtualQQmlContext* self);
void* QQmlContext_virtualbase_metacast(VirtualQQmlContext* self, const char* param1);
int QQmlContext_virtualbase_metacall(VirtualQQmlContext* self, int param1, int param2, void** param3);
bool QQmlContext_virtualbase_event(VirtualQQmlContext* self, QEvent* event);
bool QQmlContext_virtualbase_eventFilter(VirtualQQmlContext* self, QObject* watched, QEvent* event);
void QQmlContext_virtualbase_timerEvent(VirtualQQmlContext* self, QTimerEvent* event);
void QQmlContext_virtualbase_childEvent(VirtualQQmlContext* self, QChildEvent* event);
void QQmlContext_virtualbase_customEvent(VirtualQQmlContext* self, QEvent* event);
void QQmlContext_virtualbase_connectNotify(VirtualQQmlContext* self, QMetaMethod* signal);
void QQmlContext_virtualbase_disconnectNotify(VirtualQQmlContext* self, QMetaMethod* signal);

QObject* QQmlContext_protectedbase_sender(const VirtualQQmlContext* self);
int QQmlContext_protectedbase_senderSignalIndex(const VirtualQQmlContext* self);
int QQmlContext_protectedbase_receivers(const VirtualQQmlContext* self, const char* signal);
bool QQmlContext_protectedbase_isSignalConnected(const VirtualQQmlContext* self, QMetaMethod* signal);

void QQmlContext_delete(QQmlContext* self);

QQmlContext__PropertyPair* QQmlContext__PropertyPair_new(QQmlContext__PropertyPair* from);

struct seaqt_string QQmlContext__PropertyPair_name(const QQmlContext__PropertyPair* self);
void QQmlContext__PropertyPair_setName(QQmlContext__PropertyPair* self, struct seaqt_string name);
QVariant* QQmlContext__PropertyPair_value(const QQmlContext__PropertyPair* self);
void QQmlContext__PropertyPair_setValue(QQmlContext__PropertyPair* self, QVariant* value);
void QQmlContext__PropertyPair_operatorAssign(QQmlContext__PropertyPair* self, QQmlContext__PropertyPair* from);

void QQmlContext__PropertyPair_delete(QQmlContext__PropertyPair* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
