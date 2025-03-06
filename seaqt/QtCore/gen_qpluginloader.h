#pragma once
#ifndef SEAQT_QTCORE_GEN_QPLUGINLOADER_H
#define SEAQT_QTCORE_GEN_QPLUGINLOADER_H

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
class QJsonObject;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPluginLoader;
class QStaticPlugin;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJsonObject QJsonObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPluginLoader QPluginLoader;
typedef struct QStaticPlugin QStaticPlugin;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QPluginLoader_VTable {
	void (*destructor)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self);
	QMetaObject* (*metaObject)(struct QPluginLoader_VTable* vtbl, const QPluginLoader* self);
	void* (*metacast)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, const char* param1);
	int (*metacall)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, int param1, int param2, void** param3);
	bool (*event)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QEvent* event);
	bool (*eventFilter)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QTimerEvent* event);
	void (*childEvent)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QChildEvent* event);
	void (*customEvent)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QEvent* event);
	void (*connectNotify)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPluginLoader_VTable* vtbl, QPluginLoader* self, QMetaMethod* signal);
};
QPluginLoader* QPluginLoader_new(struct QPluginLoader_VTable* vtbl);
QPluginLoader* QPluginLoader_new2(struct QPluginLoader_VTable* vtbl, struct miqt_string fileName);
QPluginLoader* QPluginLoader_new3(struct QPluginLoader_VTable* vtbl, QObject* parent);
QPluginLoader* QPluginLoader_new4(struct QPluginLoader_VTable* vtbl, struct miqt_string fileName, QObject* parent);
void QPluginLoader_virtbase(QPluginLoader* src, QObject** outptr_QObject);
QMetaObject* QPluginLoader_metaObject(const QPluginLoader* self);
void* QPluginLoader_metacast(QPluginLoader* self, const char* param1);
int QPluginLoader_metacall(QPluginLoader* self, int param1, int param2, void** param3);
struct miqt_string QPluginLoader_tr(const char* s);
QObject* QPluginLoader_instance(QPluginLoader* self);
QJsonObject* QPluginLoader_metaData(const QPluginLoader* self);
struct miqt_array /* of QObject* */  QPluginLoader_staticInstances();
struct miqt_array /* of QStaticPlugin* */  QPluginLoader_staticPlugins();
bool QPluginLoader_load(QPluginLoader* self);
bool QPluginLoader_unload(QPluginLoader* self);
bool QPluginLoader_isLoaded(const QPluginLoader* self);
void QPluginLoader_setFileName(QPluginLoader* self, struct miqt_string fileName);
struct miqt_string QPluginLoader_fileName(const QPluginLoader* self);
struct miqt_string QPluginLoader_errorString(const QPluginLoader* self);
void QPluginLoader_setLoadHints(QPluginLoader* self, int loadHints);
int QPluginLoader_loadHints(const QPluginLoader* self);
struct miqt_string QPluginLoader_tr2(const char* s, const char* c);
struct miqt_string QPluginLoader_tr3(const char* s, const char* c, int n);
QMetaObject* QPluginLoader_virtualbase_metaObject(const void* self);
void* QPluginLoader_virtualbase_metacast(void* self, const char* param1);
int QPluginLoader_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPluginLoader_virtualbase_event(void* self, QEvent* event);
bool QPluginLoader_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPluginLoader_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPluginLoader_virtualbase_childEvent(void* self, QChildEvent* event);
void QPluginLoader_virtualbase_customEvent(void* self, QEvent* event);
void QPluginLoader_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPluginLoader_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPluginLoader_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QPluginLoader_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QPluginLoader_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QPluginLoader_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QPluginLoader_staticMetaObject();
void QPluginLoader_delete(QPluginLoader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
