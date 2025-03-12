#pragma once
#ifndef SEAQT_QTCORE_GEN_QSIGNALMAPPER_H
#define SEAQT_QTCORE_GEN_QSIGNALMAPPER_H

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
class QSignalMapper;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSignalMapper QSignalMapper;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSignalMapper VirtualQSignalMapper;
typedef struct QSignalMapper_VTable{
	void (*destructor)(VirtualQSignalMapper* self);
	QMetaObject* (*metaObject)(const VirtualQSignalMapper* self);
	void* (*metacast)(VirtualQSignalMapper* self, const char* param1);
	int (*metacall)(VirtualQSignalMapper* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSignalMapper* self, QEvent* event);
	bool (*eventFilter)(VirtualQSignalMapper* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSignalMapper* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSignalMapper* self, QChildEvent* event);
	void (*customEvent)(VirtualQSignalMapper* self, QEvent* event);
	void (*connectNotify)(VirtualQSignalMapper* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSignalMapper* self, QMetaMethod* signal);
}QSignalMapper_VTable;

const QSignalMapper_VTable* QSignalMapper_vtbl(const VirtualQSignalMapper* self);
void* QSignalMapper_vdata(const VirtualQSignalMapper* self);
void QSignalMapper_setVdata(VirtualQSignalMapper* self, void* vdata);

VirtualQSignalMapper* QSignalMapper_new(const QSignalMapper_VTable* vtbl, void* vdata);
VirtualQSignalMapper* QSignalMapper_new2(const QSignalMapper_VTable* vtbl, void* vdata, QObject* parent);

void QSignalMapper_virtbase(QSignalMapper* src, QObject** outptr_QObject);
QMetaObject* QSignalMapper_metaObject(const QSignalMapper* self);
void* QSignalMapper_metacast(QSignalMapper* self, const char* param1);
int QSignalMapper_metacall(QSignalMapper* self, int param1, int param2, void** param3);
struct miqt_string QSignalMapper_tr(const char* s);
struct miqt_string QSignalMapper_trUtf8(const char* s);
void QSignalMapper_setMapping(QSignalMapper* self, QObject* sender, int id);
void QSignalMapper_setMapping2(QSignalMapper* self, QObject* sender, struct miqt_string text);
void QSignalMapper_setMapping3(QSignalMapper* self, QObject* sender, QObject* object);
void QSignalMapper_removeMappings(QSignalMapper* self, QObject* sender);
QObject* QSignalMapper_mapping(const QSignalMapper* self, int id);
QObject* QSignalMapper_mappingWithText(const QSignalMapper* self, struct miqt_string text);
QObject* QSignalMapper_mappingWithObject(const QSignalMapper* self, QObject* object);
void QSignalMapper_mapped(QSignalMapper* self, int param1);
void QSignalMapper_connect_mapped(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSignalMapper_mappedWithQString(QSignalMapper* self, struct miqt_string param1);
void QSignalMapper_connect_mappedWithQString(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QSignalMapper_mappedWithQObject(QSignalMapper* self, QObject* param1);
void QSignalMapper_connect_mappedWithQObject(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t));
void QSignalMapper_mappedInt(QSignalMapper* self, int param1);
void QSignalMapper_connect_mappedInt(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSignalMapper_mappedString(QSignalMapper* self, struct miqt_string param1);
void QSignalMapper_connect_mappedString(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QSignalMapper_mappedObject(QSignalMapper* self, QObject* param1);
void QSignalMapper_connect_mappedObject(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t));
void QSignalMapper_map(QSignalMapper* self);
void QSignalMapper_mapWithSender(QSignalMapper* self, QObject* sender);
struct miqt_string QSignalMapper_tr2(const char* s, const char* c);
struct miqt_string QSignalMapper_tr3(const char* s, const char* c, int n);
struct miqt_string QSignalMapper_trUtf82(const char* s, const char* c);
struct miqt_string QSignalMapper_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSignalMapper_virtualbase_metaObject(const VirtualQSignalMapper* self);
void* QSignalMapper_virtualbase_metacast(VirtualQSignalMapper* self, const char* param1);
int QSignalMapper_virtualbase_metacall(VirtualQSignalMapper* self, int param1, int param2, void** param3);
bool QSignalMapper_virtualbase_event(VirtualQSignalMapper* self, QEvent* event);
bool QSignalMapper_virtualbase_eventFilter(VirtualQSignalMapper* self, QObject* watched, QEvent* event);
void QSignalMapper_virtualbase_timerEvent(VirtualQSignalMapper* self, QTimerEvent* event);
void QSignalMapper_virtualbase_childEvent(VirtualQSignalMapper* self, QChildEvent* event);
void QSignalMapper_virtualbase_customEvent(VirtualQSignalMapper* self, QEvent* event);
void QSignalMapper_virtualbase_connectNotify(VirtualQSignalMapper* self, QMetaMethod* signal);
void QSignalMapper_virtualbase_disconnectNotify(VirtualQSignalMapper* self, QMetaMethod* signal);

QObject* QSignalMapper_protectedbase_sender(const VirtualQSignalMapper* self);
int QSignalMapper_protectedbase_senderSignalIndex(const VirtualQSignalMapper* self);
int QSignalMapper_protectedbase_receivers(const VirtualQSignalMapper* self, const char* signal);
bool QSignalMapper_protectedbase_isSignalConnected(const VirtualQSignalMapper* self, QMetaMethod* signal);

const QMetaObject* QSignalMapper_staticMetaObject();
void QSignalMapper_delete(QSignalMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
