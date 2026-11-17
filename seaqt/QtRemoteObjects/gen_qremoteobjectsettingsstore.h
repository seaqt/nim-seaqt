#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTSETTINGSSTORE_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTSETTINGSSTORE_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QRemoteObjectAbstractPersistedStore;
class QRemoteObjectSettingsStore;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectAbstractPersistedStore QRemoteObjectAbstractPersistedStore;
typedef struct QRemoteObjectSettingsStore QRemoteObjectSettingsStore;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQRemoteObjectSettingsStore VirtualQRemoteObjectSettingsStore;
typedef struct QRemoteObjectSettingsStore_VTable{
	void (*destructor)(VirtualQRemoteObjectSettingsStore* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectSettingsStore* self);
	void* (*metacast)(VirtualQRemoteObjectSettingsStore* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectSettingsStore* self, int param1, int param2, void** param3);
	void (*saveProperties)(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
	struct seaqt_array /* of QVariant* */  (*restoreProperties)(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig);
	bool (*event)(VirtualQRemoteObjectSettingsStore* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectSettingsStore* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRemoteObjectSettingsStore* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRemoteObjectSettingsStore* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectSettingsStore* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);
}QRemoteObjectSettingsStore_VTable;

void* QRemoteObjectSettingsStore_vdata(VirtualQRemoteObjectSettingsStore* self);
VirtualQRemoteObjectSettingsStore* vdata_QRemoteObjectSettingsStore(void* vdata);

VirtualQRemoteObjectSettingsStore* QRemoteObjectSettingsStore_new(const QRemoteObjectSettingsStore_VTable* vtbl, size_t vdata);
VirtualQRemoteObjectSettingsStore* QRemoteObjectSettingsStore_new_parent(const QRemoteObjectSettingsStore_VTable* vtbl, size_t vdata, QObject* parent);

void QRemoteObjectSettingsStore_virtbase(QRemoteObjectSettingsStore* src, QRemoteObjectAbstractPersistedStore** outptr_QRemoteObjectAbstractPersistedStore);
QMetaObject* QRemoteObjectSettingsStore_metaObject(const QRemoteObjectSettingsStore* self);
void* QRemoteObjectSettingsStore_metacast(QRemoteObjectSettingsStore* self, const char* param1);
int QRemoteObjectSettingsStore_metacall(QRemoteObjectSettingsStore* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectSettingsStore_tr_s(const char* s);
void QRemoteObjectSettingsStore_saveProperties(QRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
struct seaqt_array /* of QVariant* */  QRemoteObjectSettingsStore_restoreProperties(QRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig);
struct seaqt_string QRemoteObjectSettingsStore_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectSettingsStore_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRemoteObjectSettingsStore_virtualbase_metaObject(const VirtualQRemoteObjectSettingsStore* self);
void* QRemoteObjectSettingsStore_virtualbase_metacast(VirtualQRemoteObjectSettingsStore* self, const char* param1);
int QRemoteObjectSettingsStore_virtualbase_metacall(VirtualQRemoteObjectSettingsStore* self, int param1, int param2, void** param3);
void QRemoteObjectSettingsStore_virtualbase_saveProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig, struct seaqt_array /* of QVariant* */  values);
struct seaqt_array /* of QVariant* */  QRemoteObjectSettingsStore_virtualbase_restoreProperties(VirtualQRemoteObjectSettingsStore* self, struct seaqt_string repName, struct seaqt_string repSig);
bool QRemoteObjectSettingsStore_virtualbase_event(VirtualQRemoteObjectSettingsStore* self, QEvent* event);
bool QRemoteObjectSettingsStore_virtualbase_eventFilter(VirtualQRemoteObjectSettingsStore* self, QObject* watched, QEvent* event);
void QRemoteObjectSettingsStore_virtualbase_timerEvent(VirtualQRemoteObjectSettingsStore* self, QTimerEvent* event);
void QRemoteObjectSettingsStore_virtualbase_childEvent(VirtualQRemoteObjectSettingsStore* self, QChildEvent* event);
void QRemoteObjectSettingsStore_virtualbase_customEvent(VirtualQRemoteObjectSettingsStore* self, QEvent* event);
void QRemoteObjectSettingsStore_virtualbase_connectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);
void QRemoteObjectSettingsStore_virtualbase_disconnectNotify(VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);

QObject* QRemoteObjectSettingsStore_protectedbase_sender(const VirtualQRemoteObjectSettingsStore* self);
int QRemoteObjectSettingsStore_protectedbase_senderSignalIndex(const VirtualQRemoteObjectSettingsStore* self);
int QRemoteObjectSettingsStore_protectedbase_receivers(const VirtualQRemoteObjectSettingsStore* self, const char* signal);
bool QRemoteObjectSettingsStore_protectedbase_isSignalConnected(const VirtualQRemoteObjectSettingsStore* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectSettingsStore_staticMetaObject();
void QRemoteObjectSettingsStore_delete(QRemoteObjectSettingsStore* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
