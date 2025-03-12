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

typedef struct VirtualQPluginLoader VirtualQPluginLoader;
typedef struct QPluginLoader_VTable{
	void (*destructor)(VirtualQPluginLoader* self);
	QMetaObject* (*metaObject)(const VirtualQPluginLoader* self);
	void* (*metacast)(VirtualQPluginLoader* self, const char* param1);
	int (*metacall)(VirtualQPluginLoader* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPluginLoader* self, QEvent* event);
	bool (*eventFilter)(VirtualQPluginLoader* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPluginLoader* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPluginLoader* self, QChildEvent* event);
	void (*customEvent)(VirtualQPluginLoader* self, QEvent* event);
	void (*connectNotify)(VirtualQPluginLoader* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPluginLoader* self, QMetaMethod* signal);
}QPluginLoader_VTable;

const QPluginLoader_VTable* QPluginLoader_vtbl(const VirtualQPluginLoader* self);
void* QPluginLoader_vdata(const VirtualQPluginLoader* self);
void QPluginLoader_setVdata(VirtualQPluginLoader* self, void* vdata);

VirtualQPluginLoader* QPluginLoader_new(const QPluginLoader_VTable* vtbl, void* vdata);
VirtualQPluginLoader* QPluginLoader_new2(const QPluginLoader_VTable* vtbl, void* vdata, struct miqt_string fileName);
VirtualQPluginLoader* QPluginLoader_new3(const QPluginLoader_VTable* vtbl, void* vdata, QObject* parent);
VirtualQPluginLoader* QPluginLoader_new4(const QPluginLoader_VTable* vtbl, void* vdata, struct miqt_string fileName, QObject* parent);

void QPluginLoader_virtbase(QPluginLoader* src, QObject** outptr_QObject);
QMetaObject* QPluginLoader_metaObject(const QPluginLoader* self);
void* QPluginLoader_metacast(QPluginLoader* self, const char* param1);
int QPluginLoader_metacall(QPluginLoader* self, int param1, int param2, void** param3);
struct miqt_string QPluginLoader_tr(const char* s);
struct miqt_string QPluginLoader_trUtf8(const char* s);
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
struct miqt_string QPluginLoader_trUtf82(const char* s, const char* c);
struct miqt_string QPluginLoader_trUtf83(const char* s, const char* c, int n);

QMetaObject* QPluginLoader_virtualbase_metaObject(const VirtualQPluginLoader* self);
void* QPluginLoader_virtualbase_metacast(VirtualQPluginLoader* self, const char* param1);
int QPluginLoader_virtualbase_metacall(VirtualQPluginLoader* self, int param1, int param2, void** param3);
bool QPluginLoader_virtualbase_event(VirtualQPluginLoader* self, QEvent* event);
bool QPluginLoader_virtualbase_eventFilter(VirtualQPluginLoader* self, QObject* watched, QEvent* event);
void QPluginLoader_virtualbase_timerEvent(VirtualQPluginLoader* self, QTimerEvent* event);
void QPluginLoader_virtualbase_childEvent(VirtualQPluginLoader* self, QChildEvent* event);
void QPluginLoader_virtualbase_customEvent(VirtualQPluginLoader* self, QEvent* event);
void QPluginLoader_virtualbase_connectNotify(VirtualQPluginLoader* self, QMetaMethod* signal);
void QPluginLoader_virtualbase_disconnectNotify(VirtualQPluginLoader* self, QMetaMethod* signal);

QObject* QPluginLoader_protectedbase_sender(const VirtualQPluginLoader* self);
int QPluginLoader_protectedbase_senderSignalIndex(const VirtualQPluginLoader* self);
int QPluginLoader_protectedbase_receivers(const VirtualQPluginLoader* self, const char* signal);
bool QPluginLoader_protectedbase_isSignalConnected(const VirtualQPluginLoader* self, QMetaMethod* signal);

const QMetaObject* QPluginLoader_staticMetaObject();
void QPluginLoader_delete(QPluginLoader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
