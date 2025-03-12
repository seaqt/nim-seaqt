#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLAPPLICATIONENGINE_H
#define SEAQT_QTQML_GEN_QQMLAPPLICATIONENGINE_H

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
class QJSEngine;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlApplicationEngine;
class QQmlEngine;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJSEngine QJSEngine;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlApplicationEngine QQmlApplicationEngine;
typedef struct QQmlEngine QQmlEngine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlApplicationEngine VirtualQQmlApplicationEngine;
typedef struct QQmlApplicationEngine_VTable{
	void (*destructor)(VirtualQQmlApplicationEngine* self);
	QMetaObject* (*metaObject)(const VirtualQQmlApplicationEngine* self);
	void* (*metacast)(VirtualQQmlApplicationEngine* self, const char* param1);
	int (*metacall)(VirtualQQmlApplicationEngine* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlApplicationEngine* self, QEvent* param1);
	bool (*eventFilter)(VirtualQQmlApplicationEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlApplicationEngine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlApplicationEngine* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlApplicationEngine* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);
}QQmlApplicationEngine_VTable;

const QQmlApplicationEngine_VTable* QQmlApplicationEngine_vtbl(const VirtualQQmlApplicationEngine* self);
void* QQmlApplicationEngine_vdata(const VirtualQQmlApplicationEngine* self);
void QQmlApplicationEngine_setVdata(VirtualQQmlApplicationEngine* self, void* vdata);

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new(const QQmlApplicationEngine_VTable* vtbl, void* vdata);
VirtualQQmlApplicationEngine* QQmlApplicationEngine_new2(const QQmlApplicationEngine_VTable* vtbl, void* vdata, QUrl* url);
VirtualQQmlApplicationEngine* QQmlApplicationEngine_new3(const QQmlApplicationEngine_VTable* vtbl, void* vdata, struct miqt_string filePath);
VirtualQQmlApplicationEngine* QQmlApplicationEngine_new4(const QQmlApplicationEngine_VTable* vtbl, void* vdata, QObject* parent);
VirtualQQmlApplicationEngine* QQmlApplicationEngine_new5(const QQmlApplicationEngine_VTable* vtbl, void* vdata, QUrl* url, QObject* parent);
VirtualQQmlApplicationEngine* QQmlApplicationEngine_new6(const QQmlApplicationEngine_VTable* vtbl, void* vdata, struct miqt_string filePath, QObject* parent);

void QQmlApplicationEngine_virtbase(QQmlApplicationEngine* src, QQmlEngine** outptr_QQmlEngine);
QMetaObject* QQmlApplicationEngine_metaObject(const QQmlApplicationEngine* self);
void* QQmlApplicationEngine_metacast(QQmlApplicationEngine* self, const char* param1);
int QQmlApplicationEngine_metacall(QQmlApplicationEngine* self, int param1, int param2, void** param3);
struct miqt_string QQmlApplicationEngine_tr(const char* s);
struct miqt_string QQmlApplicationEngine_trUtf8(const char* s);
struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects(QQmlApplicationEngine* self);
struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects2(const QQmlApplicationEngine* self);
void QQmlApplicationEngine_load(QQmlApplicationEngine* self, QUrl* url);
void QQmlApplicationEngine_loadWithFilePath(QQmlApplicationEngine* self, struct miqt_string filePath);
void QQmlApplicationEngine_setInitialProperties(QQmlApplicationEngine* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties);
void QQmlApplicationEngine_loadData(QQmlApplicationEngine* self, struct miqt_string data);
void QQmlApplicationEngine_objectCreated(QQmlApplicationEngine* self, QObject* object, QUrl* url);
void QQmlApplicationEngine_connect_objectCreated(VirtualQQmlApplicationEngine* self, intptr_t slot, void (*callback)(intptr_t, QObject*, QUrl*), void (*release)(intptr_t));
struct miqt_string QQmlApplicationEngine_tr2(const char* s, const char* c);
struct miqt_string QQmlApplicationEngine_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlApplicationEngine_trUtf82(const char* s, const char* c);
struct miqt_string QQmlApplicationEngine_trUtf83(const char* s, const char* c, int n);
void QQmlApplicationEngine_loadData2(QQmlApplicationEngine* self, struct miqt_string data, QUrl* url);

QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const VirtualQQmlApplicationEngine* self);
void* QQmlApplicationEngine_virtualbase_metacast(VirtualQQmlApplicationEngine* self, const char* param1);
int QQmlApplicationEngine_virtualbase_metacall(VirtualQQmlApplicationEngine* self, int param1, int param2, void** param3);
bool QQmlApplicationEngine_virtualbase_event(VirtualQQmlApplicationEngine* self, QEvent* param1);
bool QQmlApplicationEngine_virtualbase_eventFilter(VirtualQQmlApplicationEngine* self, QObject* watched, QEvent* event);
void QQmlApplicationEngine_virtualbase_timerEvent(VirtualQQmlApplicationEngine* self, QTimerEvent* event);
void QQmlApplicationEngine_virtualbase_childEvent(VirtualQQmlApplicationEngine* self, QChildEvent* event);
void QQmlApplicationEngine_virtualbase_customEvent(VirtualQQmlApplicationEngine* self, QEvent* event);
void QQmlApplicationEngine_virtualbase_connectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);
void QQmlApplicationEngine_virtualbase_disconnectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);

QObject* QQmlApplicationEngine_protectedbase_sender(const VirtualQQmlApplicationEngine* self);
int QQmlApplicationEngine_protectedbase_senderSignalIndex(const VirtualQQmlApplicationEngine* self);
int QQmlApplicationEngine_protectedbase_receivers(const VirtualQQmlApplicationEngine* self, const char* signal);
bool QQmlApplicationEngine_protectedbase_isSignalConnected(const VirtualQQmlApplicationEngine* self, QMetaMethod* signal);

const QMetaObject* QQmlApplicationEngine_staticMetaObject();
void QQmlApplicationEngine_delete(QQmlApplicationEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
