#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLFILESELECTOR_H
#define SEAQT_QTQML_GEN_QQMLFILESELECTOR_H

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

struct QQmlFileSelector_VTable {
	void (*destructor)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self);
	QMetaObject* (*metaObject)(struct QQmlFileSelector_VTable* vtbl, const QQmlFileSelector* self);
	void* (*metacast)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, const char* param1);
	int (*metacall)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, int param1, int param2, void** param3);
	bool (*event)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QEvent* event);
	bool (*eventFilter)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QChildEvent* event);
	void (*customEvent)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QEvent* event);
	void (*connectNotify)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlFileSelector_VTable* vtbl, QQmlFileSelector* self, QMetaMethod* signal);
};
QQmlFileSelector* QQmlFileSelector_new(struct QQmlFileSelector_VTable* vtbl, QQmlEngine* engine);
QQmlFileSelector* QQmlFileSelector_new2(struct QQmlFileSelector_VTable* vtbl, QQmlEngine* engine, QObject* parent);
void QQmlFileSelector_virtbase(QQmlFileSelector* src, QObject** outptr_QObject);
QMetaObject* QQmlFileSelector_metaObject(const QQmlFileSelector* self);
void* QQmlFileSelector_metacast(QQmlFileSelector* self, const char* param1);
int QQmlFileSelector_metacall(QQmlFileSelector* self, int param1, int param2, void** param3);
struct miqt_string QQmlFileSelector_tr(const char* s);
QFileSelector* QQmlFileSelector_selector(const QQmlFileSelector* self);
void QQmlFileSelector_setSelector(QQmlFileSelector* self, QFileSelector* selector);
void QQmlFileSelector_setExtraSelectors(QQmlFileSelector* self, struct miqt_array /* of struct miqt_string */  strings);
QQmlFileSelector* QQmlFileSelector_get(QQmlEngine* param1);
struct miqt_string QQmlFileSelector_tr2(const char* s, const char* c);
struct miqt_string QQmlFileSelector_tr3(const char* s, const char* c, int n);
QMetaObject* QQmlFileSelector_virtualbase_metaObject(const void* self);
void* QQmlFileSelector_virtualbase_metacast(void* self, const char* param1);
int QQmlFileSelector_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQmlFileSelector_virtualbase_event(void* self, QEvent* event);
bool QQmlFileSelector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlFileSelector_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlFileSelector_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlFileSelector_virtualbase_customEvent(void* self, QEvent* event);
void QQmlFileSelector_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlFileSelector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlFileSelector_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQmlFileSelector_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQmlFileSelector_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQmlFileSelector_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQmlFileSelector_staticMetaObject();
void QQmlFileSelector_delete(QQmlFileSelector* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
