#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_QEXTENSIONMANAGER_H
#define SEAQT_QTDESIGNER_GEN_QEXTENSIONMANAGER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractExtensionFactory;
class QAbstractExtensionManager;
class QChildEvent;
class QEvent;
class QExtensionManager;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractExtensionFactory QAbstractExtensionFactory;
typedef struct QAbstractExtensionManager QAbstractExtensionManager;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QExtensionManager QExtensionManager;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQExtensionManager VirtualQExtensionManager;
typedef struct QExtensionManager_VTable{
	void (*destructor)(VirtualQExtensionManager* self);
	QMetaObject* (*metaObject)(const VirtualQExtensionManager* self);
	void* (*metacast)(VirtualQExtensionManager* self, const char* param1);
	int (*metacall)(VirtualQExtensionManager* self, int param1, int param2, void** param3);
	void (*registerExtensions)(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
	void (*unregisterExtensions)(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
	QObject* (*extension)(const VirtualQExtensionManager* self, QObject* object, struct seaqt_string iid);
	bool (*event)(VirtualQExtensionManager* self, QEvent* event);
	bool (*eventFilter)(VirtualQExtensionManager* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQExtensionManager* self, QTimerEvent* event);
	void (*childEvent)(VirtualQExtensionManager* self, QChildEvent* event);
	void (*customEvent)(VirtualQExtensionManager* self, QEvent* event);
	void (*connectNotify)(VirtualQExtensionManager* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQExtensionManager* self, QMetaMethod* signal);
}QExtensionManager_VTable;

void* QExtensionManager_vdata(VirtualQExtensionManager* self);
VirtualQExtensionManager* vdata_QExtensionManager(void* vdata);

VirtualQExtensionManager* QExtensionManager_new(const QExtensionManager_VTable* vtbl, size_t vdata);
VirtualQExtensionManager* QExtensionManager_new_parent(const QExtensionManager_VTable* vtbl, size_t vdata, QObject* parent);

void QExtensionManager_virtbase(QExtensionManager* src, QObject** outptr_QObject, QAbstractExtensionManager** outptr_QAbstractExtensionManager);
QMetaObject* QExtensionManager_metaObject(const QExtensionManager* self);
void* QExtensionManager_metacast(QExtensionManager* self, const char* param1);
int QExtensionManager_metacall(QExtensionManager* self, int param1, int param2, void** param3);
struct seaqt_string QExtensionManager_tr_s(const char* s);
void QExtensionManager_registerExtensions(QExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
void QExtensionManager_unregisterExtensions(QExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
QObject* QExtensionManager_extension(const QExtensionManager* self, QObject* object, struct seaqt_string iid);
struct seaqt_string QExtensionManager_tr_s_c(const char* s, const char* c);
struct seaqt_string QExtensionManager_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QExtensionManager_virtualbase_metaObject(const VirtualQExtensionManager* self);
void* QExtensionManager_virtualbase_metacast(VirtualQExtensionManager* self, const char* param1);
int QExtensionManager_virtualbase_metacall(VirtualQExtensionManager* self, int param1, int param2, void** param3);
void QExtensionManager_virtualbase_registerExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
void QExtensionManager_virtualbase_unregisterExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);
QObject* QExtensionManager_virtualbase_extension(const VirtualQExtensionManager* self, QObject* object, struct seaqt_string iid);
bool QExtensionManager_virtualbase_event(VirtualQExtensionManager* self, QEvent* event);
bool QExtensionManager_virtualbase_eventFilter(VirtualQExtensionManager* self, QObject* watched, QEvent* event);
void QExtensionManager_virtualbase_timerEvent(VirtualQExtensionManager* self, QTimerEvent* event);
void QExtensionManager_virtualbase_childEvent(VirtualQExtensionManager* self, QChildEvent* event);
void QExtensionManager_virtualbase_customEvent(VirtualQExtensionManager* self, QEvent* event);
void QExtensionManager_virtualbase_connectNotify(VirtualQExtensionManager* self, QMetaMethod* signal);
void QExtensionManager_virtualbase_disconnectNotify(VirtualQExtensionManager* self, QMetaMethod* signal);

QObject* QExtensionManager_protectedbase_sender(const VirtualQExtensionManager* self);
int QExtensionManager_protectedbase_senderSignalIndex(const VirtualQExtensionManager* self);
int QExtensionManager_protectedbase_receivers(const VirtualQExtensionManager* self, const char* signal);
bool QExtensionManager_protectedbase_isSignalConnected(const VirtualQExtensionManager* self, QMetaMethod* signal);

void QExtensionManager_delete(QExtensionManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
