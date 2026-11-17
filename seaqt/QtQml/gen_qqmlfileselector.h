#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLFILESELECTOR_H
#define SEAQT_QTQML_GEN_QQMLFILESELECTOR_H

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
class QFileSelector;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlEngine;
class QQmlFileSelector;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileSelector QFileSelector;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlFileSelector QQmlFileSelector;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQQmlFileSelector VirtualQQmlFileSelector;
typedef struct QQmlFileSelector_VTable{
	void (*destructor)(VirtualQQmlFileSelector* self);
	QMetaObject* (*metaObject)(const VirtualQQmlFileSelector* self);
	void* (*metacast)(VirtualQQmlFileSelector* self, const char* param1);
	int (*metacall)(VirtualQQmlFileSelector* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlFileSelector* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlFileSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlFileSelector* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlFileSelector* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlFileSelector* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlFileSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlFileSelector* self, QMetaMethod* signal);
}QQmlFileSelector_VTable;

void* QQmlFileSelector_vdata(VirtualQQmlFileSelector* self);
VirtualQQmlFileSelector* vdata_QQmlFileSelector(void* vdata);

VirtualQQmlFileSelector* QQmlFileSelector_new(const QQmlFileSelector_VTable* vtbl, size_t vdata, QQmlEngine* engine);
VirtualQQmlFileSelector* QQmlFileSelector_new2(const QQmlFileSelector_VTable* vtbl, size_t vdata, QQmlEngine* engine, QObject* parent);

void QQmlFileSelector_virtbase(QQmlFileSelector* src, QObject** outptr_QObject);
QMetaObject* QQmlFileSelector_metaObject(const QQmlFileSelector* self);
void* QQmlFileSelector_metacast(QQmlFileSelector* self, const char* param1);
int QQmlFileSelector_metacall(QQmlFileSelector* self, int param1, int param2, void** param3);
struct seaqt_string QQmlFileSelector_tr(const char* s);
QFileSelector* QQmlFileSelector_selector(const QQmlFileSelector* self);
void QQmlFileSelector_setSelector(QQmlFileSelector* self, QFileSelector* selector);
void QQmlFileSelector_setExtraSelectors(QQmlFileSelector* self, struct seaqt_array /* of struct seaqt_string */  strings);
QQmlFileSelector* QQmlFileSelector_get(QQmlEngine* param1);
struct seaqt_string QQmlFileSelector_tr2(const char* s, const char* c);
struct seaqt_string QQmlFileSelector_tr3(const char* s, const char* c, int n);

QMetaObject* QQmlFileSelector_virtualbase_metaObject(const VirtualQQmlFileSelector* self);
void* QQmlFileSelector_virtualbase_metacast(VirtualQQmlFileSelector* self, const char* param1);
int QQmlFileSelector_virtualbase_metacall(VirtualQQmlFileSelector* self, int param1, int param2, void** param3);
bool QQmlFileSelector_virtualbase_event(VirtualQQmlFileSelector* self, QEvent* event);
bool QQmlFileSelector_virtualbase_eventFilter(VirtualQQmlFileSelector* self, QObject* watched, QEvent* event);
void QQmlFileSelector_virtualbase_timerEvent(VirtualQQmlFileSelector* self, QTimerEvent* event);
void QQmlFileSelector_virtualbase_childEvent(VirtualQQmlFileSelector* self, QChildEvent* event);
void QQmlFileSelector_virtualbase_customEvent(VirtualQQmlFileSelector* self, QEvent* event);
void QQmlFileSelector_virtualbase_connectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal);
void QQmlFileSelector_virtualbase_disconnectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal);

QObject* QQmlFileSelector_protectedbase_sender(const VirtualQQmlFileSelector* self);
int QQmlFileSelector_protectedbase_senderSignalIndex(const VirtualQQmlFileSelector* self);
int QQmlFileSelector_protectedbase_receivers(const VirtualQQmlFileSelector* self, const char* signal);
bool QQmlFileSelector_protectedbase_isSignalConnected(const VirtualQQmlFileSelector* self, QMetaMethod* signal);

const QMetaObject* QQmlFileSelector_staticMetaObject();
void QQmlFileSelector_delete(QQmlFileSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
