#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTYLEPLUGIN_H
#define SEAQT_QTWIDGETS_GEN_QSTYLEPLUGIN_H

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
class QStyle;
class QStylePlugin;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QStyle QStyle;
typedef struct QStylePlugin QStylePlugin;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQStylePlugin VirtualQStylePlugin;
typedef struct QStylePlugin_VTable{
	void (*destructor)(VirtualQStylePlugin* self);
	QMetaObject* (*metaObject)(const VirtualQStylePlugin* self);
	void* (*metacast)(VirtualQStylePlugin* self, const char* param1);
	int (*metacall)(VirtualQStylePlugin* self, int param1, int param2, void** param3);
	QStyle* (*create)(VirtualQStylePlugin* self, struct miqt_string key);
	bool (*event)(VirtualQStylePlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQStylePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStylePlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStylePlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQStylePlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQStylePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStylePlugin* self, QMetaMethod* signal);
}QStylePlugin_VTable;

const QStylePlugin_VTable* QStylePlugin_vtbl(const VirtualQStylePlugin* self);
void* QStylePlugin_vdata(const VirtualQStylePlugin* self);
void QStylePlugin_setVdata(VirtualQStylePlugin* self, void* vdata);

VirtualQStylePlugin* QStylePlugin_new(const QStylePlugin_VTable* vtbl, void* vdata);
VirtualQStylePlugin* QStylePlugin_new2(const QStylePlugin_VTable* vtbl, void* vdata, QObject* parent);

void QStylePlugin_virtbase(QStylePlugin* src, QObject** outptr_QObject);
QMetaObject* QStylePlugin_metaObject(const QStylePlugin* self);
void* QStylePlugin_metacast(QStylePlugin* self, const char* param1);
int QStylePlugin_metacall(QStylePlugin* self, int param1, int param2, void** param3);
struct miqt_string QStylePlugin_tr(const char* s);
struct miqt_string QStylePlugin_trUtf8(const char* s);
QStyle* QStylePlugin_create(QStylePlugin* self, struct miqt_string key);
struct miqt_string QStylePlugin_tr2(const char* s, const char* c);
struct miqt_string QStylePlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QStylePlugin_trUtf82(const char* s, const char* c);
struct miqt_string QStylePlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QStylePlugin_virtualbase_metaObject(const VirtualQStylePlugin* self);
void* QStylePlugin_virtualbase_metacast(VirtualQStylePlugin* self, const char* param1);
int QStylePlugin_virtualbase_metacall(VirtualQStylePlugin* self, int param1, int param2, void** param3);
QStyle* QStylePlugin_virtualbase_create(VirtualQStylePlugin* self, struct miqt_string key);
bool QStylePlugin_virtualbase_event(VirtualQStylePlugin* self, QEvent* event);
bool QStylePlugin_virtualbase_eventFilter(VirtualQStylePlugin* self, QObject* watched, QEvent* event);
void QStylePlugin_virtualbase_timerEvent(VirtualQStylePlugin* self, QTimerEvent* event);
void QStylePlugin_virtualbase_childEvent(VirtualQStylePlugin* self, QChildEvent* event);
void QStylePlugin_virtualbase_customEvent(VirtualQStylePlugin* self, QEvent* event);
void QStylePlugin_virtualbase_connectNotify(VirtualQStylePlugin* self, QMetaMethod* signal);
void QStylePlugin_virtualbase_disconnectNotify(VirtualQStylePlugin* self, QMetaMethod* signal);

QObject* QStylePlugin_protectedbase_sender(const VirtualQStylePlugin* self);
int QStylePlugin_protectedbase_senderSignalIndex(const VirtualQStylePlugin* self);
int QStylePlugin_protectedbase_receivers(const VirtualQStylePlugin* self, const char* signal);
bool QStylePlugin_protectedbase_isSignalConnected(const VirtualQStylePlugin* self, QMetaMethod* signal);

const QMetaObject* QStylePlugin_staticMetaObject();
void QStylePlugin_delete(QStylePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
