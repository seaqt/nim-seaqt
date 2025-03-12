#pragma once
#ifndef SEAQT_QTGUI_GEN_QINPUTDEVICE_H
#define SEAQT_QTGUI_GEN_QINPUTDEVICE_H

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
class QInputDevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QInputDevice QInputDevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQInputDevice VirtualQInputDevice;
typedef struct QInputDevice_VTable{
	void (*destructor)(VirtualQInputDevice* self);
	QMetaObject* (*metaObject)(const VirtualQInputDevice* self);
	void* (*metacast)(VirtualQInputDevice* self, const char* param1);
	int (*metacall)(VirtualQInputDevice* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQInputDevice* self, QEvent* event);
	bool (*eventFilter)(VirtualQInputDevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQInputDevice* self, QTimerEvent* event);
	void (*childEvent)(VirtualQInputDevice* self, QChildEvent* event);
	void (*customEvent)(VirtualQInputDevice* self, QEvent* event);
	void (*connectNotify)(VirtualQInputDevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQInputDevice* self, QMetaMethod* signal);
}QInputDevice_VTable;

const QInputDevice_VTable* QInputDevice_vtbl(const VirtualQInputDevice* self);
void* QInputDevice_vdata(const VirtualQInputDevice* self);
void QInputDevice_setVdata(VirtualQInputDevice* self, void* vdata);

VirtualQInputDevice* QInputDevice_new(const QInputDevice_VTable* vtbl, void* vdata);
VirtualQInputDevice* QInputDevice_new2(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type);
VirtualQInputDevice* QInputDevice_new3(const QInputDevice_VTable* vtbl, void* vdata, QObject* parent);
VirtualQInputDevice* QInputDevice_new4(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type, struct miqt_string seatName);
VirtualQInputDevice* QInputDevice_new5(const QInputDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int type, struct miqt_string seatName, QObject* parent);

void QInputDevice_virtbase(QInputDevice* src, QObject** outptr_QObject);
QMetaObject* QInputDevice_metaObject(const QInputDevice* self);
void* QInputDevice_metacast(QInputDevice* self, const char* param1);
int QInputDevice_metacall(QInputDevice* self, int param1, int param2, void** param3);
struct miqt_string QInputDevice_tr(const char* s);
struct miqt_string QInputDevice_name(const QInputDevice* self);
int QInputDevice_type(const QInputDevice* self);
int QInputDevice_capabilities(const QInputDevice* self);
bool QInputDevice_hasCapability(const QInputDevice* self, int cap);
long long QInputDevice_systemId(const QInputDevice* self);
struct miqt_string QInputDevice_seatName(const QInputDevice* self);
QRect* QInputDevice_availableVirtualGeometry(const QInputDevice* self);
struct miqt_array /* of struct miqt_string */  QInputDevice_seatNames();
struct miqt_array /* of QInputDevice* */  QInputDevice_devices();
QInputDevice* QInputDevice_primaryKeyboard();
bool QInputDevice_operatorEqual(const QInputDevice* self, QInputDevice* other);
void QInputDevice_availableVirtualGeometryChanged(QInputDevice* self, QRect* area);
void QInputDevice_connect_availableVirtualGeometryChanged(VirtualQInputDevice* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t));
struct miqt_string QInputDevice_tr2(const char* s, const char* c);
struct miqt_string QInputDevice_tr3(const char* s, const char* c, int n);
QInputDevice* QInputDevice_primaryKeyboard1(struct miqt_string seatName);

QMetaObject* QInputDevice_virtualbase_metaObject(const VirtualQInputDevice* self);
void* QInputDevice_virtualbase_metacast(VirtualQInputDevice* self, const char* param1);
int QInputDevice_virtualbase_metacall(VirtualQInputDevice* self, int param1, int param2, void** param3);
bool QInputDevice_virtualbase_event(VirtualQInputDevice* self, QEvent* event);
bool QInputDevice_virtualbase_eventFilter(VirtualQInputDevice* self, QObject* watched, QEvent* event);
void QInputDevice_virtualbase_timerEvent(VirtualQInputDevice* self, QTimerEvent* event);
void QInputDevice_virtualbase_childEvent(VirtualQInputDevice* self, QChildEvent* event);
void QInputDevice_virtualbase_customEvent(VirtualQInputDevice* self, QEvent* event);
void QInputDevice_virtualbase_connectNotify(VirtualQInputDevice* self, QMetaMethod* signal);
void QInputDevice_virtualbase_disconnectNotify(VirtualQInputDevice* self, QMetaMethod* signal);

QObject* QInputDevice_protectedbase_sender(const VirtualQInputDevice* self);
int QInputDevice_protectedbase_senderSignalIndex(const VirtualQInputDevice* self);
int QInputDevice_protectedbase_receivers(const VirtualQInputDevice* self, const char* signal);
bool QInputDevice_protectedbase_isSignalConnected(const VirtualQInputDevice* self, QMetaMethod* signal);

const QMetaObject* QInputDevice_staticMetaObject();
void QInputDevice_delete(QInputDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
