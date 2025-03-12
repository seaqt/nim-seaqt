#pragma once
#ifndef SEAQT_QTGUI_GEN_QICONENGINEPLUGIN_H
#define SEAQT_QTGUI_GEN_QICONENGINEPLUGIN_H

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
class QIconEngine;
class QIconEnginePlugin;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIconEngine QIconEngine;
typedef struct QIconEnginePlugin QIconEnginePlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQIconEnginePlugin VirtualQIconEnginePlugin;
typedef struct QIconEnginePlugin_VTable{
	void (*destructor)(VirtualQIconEnginePlugin* self);
	QMetaObject* (*metaObject)(const VirtualQIconEnginePlugin* self);
	void* (*metacast)(VirtualQIconEnginePlugin* self, const char* param1);
	int (*metacall)(VirtualQIconEnginePlugin* self, int param1, int param2, void** param3);
	QIconEngine* (*create)(VirtualQIconEnginePlugin* self, struct miqt_string filename);
	bool (*event)(VirtualQIconEnginePlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQIconEnginePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQIconEnginePlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQIconEnginePlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQIconEnginePlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQIconEnginePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQIconEnginePlugin* self, QMetaMethod* signal);
}QIconEnginePlugin_VTable;

const QIconEnginePlugin_VTable* QIconEnginePlugin_vtbl(const VirtualQIconEnginePlugin* self);
void* QIconEnginePlugin_vdata(const VirtualQIconEnginePlugin* self);
void QIconEnginePlugin_setVdata(VirtualQIconEnginePlugin* self, void* vdata);

VirtualQIconEnginePlugin* QIconEnginePlugin_new(const QIconEnginePlugin_VTable* vtbl, void* vdata);
VirtualQIconEnginePlugin* QIconEnginePlugin_new2(const QIconEnginePlugin_VTable* vtbl, void* vdata, QObject* parent);

void QIconEnginePlugin_virtbase(QIconEnginePlugin* src, QObject** outptr_QObject);
QMetaObject* QIconEnginePlugin_metaObject(const QIconEnginePlugin* self);
void* QIconEnginePlugin_metacast(QIconEnginePlugin* self, const char* param1);
int QIconEnginePlugin_metacall(QIconEnginePlugin* self, int param1, int param2, void** param3);
struct miqt_string QIconEnginePlugin_tr(const char* s);
struct miqt_string QIconEnginePlugin_trUtf8(const char* s);
QIconEngine* QIconEnginePlugin_create(QIconEnginePlugin* self, struct miqt_string filename);
struct miqt_string QIconEnginePlugin_tr2(const char* s, const char* c);
struct miqt_string QIconEnginePlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QIconEnginePlugin_trUtf82(const char* s, const char* c);
struct miqt_string QIconEnginePlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QIconEnginePlugin_virtualbase_metaObject(const VirtualQIconEnginePlugin* self);
void* QIconEnginePlugin_virtualbase_metacast(VirtualQIconEnginePlugin* self, const char* param1);
int QIconEnginePlugin_virtualbase_metacall(VirtualQIconEnginePlugin* self, int param1, int param2, void** param3);
QIconEngine* QIconEnginePlugin_virtualbase_create(VirtualQIconEnginePlugin* self, struct miqt_string filename);
bool QIconEnginePlugin_virtualbase_event(VirtualQIconEnginePlugin* self, QEvent* event);
bool QIconEnginePlugin_virtualbase_eventFilter(VirtualQIconEnginePlugin* self, QObject* watched, QEvent* event);
void QIconEnginePlugin_virtualbase_timerEvent(VirtualQIconEnginePlugin* self, QTimerEvent* event);
void QIconEnginePlugin_virtualbase_childEvent(VirtualQIconEnginePlugin* self, QChildEvent* event);
void QIconEnginePlugin_virtualbase_customEvent(VirtualQIconEnginePlugin* self, QEvent* event);
void QIconEnginePlugin_virtualbase_connectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal);
void QIconEnginePlugin_virtualbase_disconnectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal);

QObject* QIconEnginePlugin_protectedbase_sender(const VirtualQIconEnginePlugin* self);
int QIconEnginePlugin_protectedbase_senderSignalIndex(const VirtualQIconEnginePlugin* self);
int QIconEnginePlugin_protectedbase_receivers(const VirtualQIconEnginePlugin* self, const char* signal);
bool QIconEnginePlugin_protectedbase_isSignalConnected(const VirtualQIconEnginePlugin* self, QMetaMethod* signal);

const QMetaObject* QIconEnginePlugin_staticMetaObject();
void QIconEnginePlugin_delete(QIconEnginePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
