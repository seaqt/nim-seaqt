#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_DEFAULT_EXTENSIONFACTORY_H
#define SEAQT_QTDESIGNER_GEN_DEFAULT_EXTENSIONFACTORY_H

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
class QChildEvent;
class QEvent;
class QExtensionFactory;
class QExtensionManager;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractExtensionFactory QAbstractExtensionFactory;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QExtensionFactory QExtensionFactory;
typedef struct QExtensionManager QExtensionManager;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQExtensionFactory VirtualQExtensionFactory;
typedef struct QExtensionFactory_VTable{
	void (*destructor)(VirtualQExtensionFactory* self);
	QMetaObject* (*metaObject)(const VirtualQExtensionFactory* self);
	void* (*metacast)(VirtualQExtensionFactory* self, const char* param1);
	int (*metacall)(VirtualQExtensionFactory* self, int param1, int param2, void** param3);
	QObject* (*extension)(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid);
	QObject* (*createExtension)(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid, QObject* parent);
	bool (*event)(VirtualQExtensionFactory* self, QEvent* event);
	bool (*eventFilter)(VirtualQExtensionFactory* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQExtensionFactory* self, QTimerEvent* event);
	void (*childEvent)(VirtualQExtensionFactory* self, QChildEvent* event);
	void (*customEvent)(VirtualQExtensionFactory* self, QEvent* event);
	void (*connectNotify)(VirtualQExtensionFactory* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQExtensionFactory* self, QMetaMethod* signal);
}QExtensionFactory_VTable;

void* QExtensionFactory_vdata(VirtualQExtensionFactory* self);
VirtualQExtensionFactory* vdata_QExtensionFactory(void* vdata);

VirtualQExtensionFactory* QExtensionFactory_new(const QExtensionFactory_VTable* vtbl, size_t vdata);
VirtualQExtensionFactory* QExtensionFactory_new2(const QExtensionFactory_VTable* vtbl, size_t vdata, QExtensionManager* parent);

void QExtensionFactory_virtbase(QExtensionFactory* src, QObject** outptr_QObject, QAbstractExtensionFactory** outptr_QAbstractExtensionFactory);
QMetaObject* QExtensionFactory_metaObject(const QExtensionFactory* self);
void* QExtensionFactory_metacast(QExtensionFactory* self, const char* param1);
int QExtensionFactory_metacall(QExtensionFactory* self, int param1, int param2, void** param3);
struct seaqt_string QExtensionFactory_tr(const char* s);
QObject* QExtensionFactory_extension(const QExtensionFactory* self, QObject* object, struct seaqt_string iid);
QExtensionManager* QExtensionFactory_extensionManager(const QExtensionFactory* self);
QObject* QExtensionFactory_createExtension(const QExtensionFactory* self, QObject* object, struct seaqt_string iid, QObject* parent);
struct seaqt_string QExtensionFactory_tr2(const char* s, const char* c);
struct seaqt_string QExtensionFactory_tr3(const char* s, const char* c, int n);

QMetaObject* QExtensionFactory_virtualbase_metaObject(const VirtualQExtensionFactory* self);
void* QExtensionFactory_virtualbase_metacast(VirtualQExtensionFactory* self, const char* param1);
int QExtensionFactory_virtualbase_metacall(VirtualQExtensionFactory* self, int param1, int param2, void** param3);
QObject* QExtensionFactory_virtualbase_extension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid);
QObject* QExtensionFactory_virtualbase_createExtension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid, QObject* parent);
bool QExtensionFactory_virtualbase_event(VirtualQExtensionFactory* self, QEvent* event);
bool QExtensionFactory_virtualbase_eventFilter(VirtualQExtensionFactory* self, QObject* watched, QEvent* event);
void QExtensionFactory_virtualbase_timerEvent(VirtualQExtensionFactory* self, QTimerEvent* event);
void QExtensionFactory_virtualbase_childEvent(VirtualQExtensionFactory* self, QChildEvent* event);
void QExtensionFactory_virtualbase_customEvent(VirtualQExtensionFactory* self, QEvent* event);
void QExtensionFactory_virtualbase_connectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal);
void QExtensionFactory_virtualbase_disconnectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal);

QObject* QExtensionFactory_protectedbase_sender(const VirtualQExtensionFactory* self);
int QExtensionFactory_protectedbase_senderSignalIndex(const VirtualQExtensionFactory* self);
int QExtensionFactory_protectedbase_receivers(const VirtualQExtensionFactory* self, const char* signal);
bool QExtensionFactory_protectedbase_isSignalConnected(const VirtualQExtensionFactory* self, QMetaMethod* signal);

const QMetaObject* QExtensionFactory_staticMetaObject();
void QExtensionFactory_delete(QExtensionFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
