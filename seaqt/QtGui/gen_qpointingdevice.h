#pragma once
#ifndef SEAQT_QTGUI_GEN_QPOINTINGDEVICE_H
#define SEAQT_QTGUI_GEN_QPOINTINGDEVICE_H

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
class QEventPoint;
class QInputDevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPointerEvent;
class QPointingDevice;
class QPointingDeviceUniqueId;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QEventPoint QEventPoint;
typedef struct QInputDevice QInputDevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPointerEvent QPointerEvent;
typedef struct QPointingDevice QPointingDevice;
typedef struct QPointingDeviceUniqueId QPointingDeviceUniqueId;
typedef struct QTimerEvent QTimerEvent;
#endif

QPointingDeviceUniqueId* QPointingDeviceUniqueId_new();
QPointingDeviceUniqueId* QPointingDeviceUniqueId_new2(QPointingDeviceUniqueId* param1);

QPointingDeviceUniqueId* QPointingDeviceUniqueId_fromNumericId(long long id);
bool QPointingDeviceUniqueId_isValid(const QPointingDeviceUniqueId* self);
long long QPointingDeviceUniqueId_numericId(const QPointingDeviceUniqueId* self);

const QMetaObject* QPointingDeviceUniqueId_staticMetaObject();
void QPointingDeviceUniqueId_delete(QPointingDeviceUniqueId* self);

typedef struct VirtualQPointingDevice VirtualQPointingDevice;
typedef struct QPointingDevice_VTable{
	void (*destructor)(VirtualQPointingDevice* self);
	QMetaObject* (*metaObject)(const VirtualQPointingDevice* self);
	void* (*metacast)(VirtualQPointingDevice* self, const char* param1);
	int (*metacall)(VirtualQPointingDevice* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPointingDevice* self, QEvent* event);
	bool (*eventFilter)(VirtualQPointingDevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPointingDevice* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPointingDevice* self, QChildEvent* event);
	void (*customEvent)(VirtualQPointingDevice* self, QEvent* event);
	void (*connectNotify)(VirtualQPointingDevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPointingDevice* self, QMetaMethod* signal);
}QPointingDevice_VTable;

const QPointingDevice_VTable* QPointingDevice_vtbl(const VirtualQPointingDevice* self);
void* QPointingDevice_vdata(const VirtualQPointingDevice* self);
void QPointingDevice_setVdata(VirtualQPointingDevice* self, void* vdata);

VirtualQPointingDevice* QPointingDevice_new(const QPointingDevice_VTable* vtbl, void* vdata);
VirtualQPointingDevice* QPointingDevice_new2(const QPointingDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount);
VirtualQPointingDevice* QPointingDevice_new3(const QPointingDevice_VTable* vtbl, void* vdata, QObject* parent);
VirtualQPointingDevice* QPointingDevice_new4(const QPointingDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, struct miqt_string seatName);
VirtualQPointingDevice* QPointingDevice_new5(const QPointingDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, struct miqt_string seatName, QPointingDeviceUniqueId* uniqueId);
VirtualQPointingDevice* QPointingDevice_new6(const QPointingDevice_VTable* vtbl, void* vdata, struct miqt_string name, long long systemId, int devType, int pType, int caps, int maxPoints, int buttonCount, struct miqt_string seatName, QPointingDeviceUniqueId* uniqueId, QObject* parent);

void QPointingDevice_virtbase(QPointingDevice* src, QInputDevice** outptr_QInputDevice);
QMetaObject* QPointingDevice_metaObject(const QPointingDevice* self);
void* QPointingDevice_metacast(QPointingDevice* self, const char* param1);
int QPointingDevice_metacall(QPointingDevice* self, int param1, int param2, void** param3);
struct miqt_string QPointingDevice_tr(const char* s);
void QPointingDevice_setType(QPointingDevice* self, int devType);
void QPointingDevice_setCapabilities(QPointingDevice* self, int caps);
void QPointingDevice_setMaximumTouchPoints(QPointingDevice* self, int c);
int QPointingDevice_pointerType(const QPointingDevice* self);
int QPointingDevice_maximumPoints(const QPointingDevice* self);
int QPointingDevice_buttonCount(const QPointingDevice* self);
QPointingDeviceUniqueId* QPointingDevice_uniqueId(const QPointingDevice* self);
QPointingDevice* QPointingDevice_primaryPointingDevice();
bool QPointingDevice_operatorEqual(const QPointingDevice* self, QPointingDevice* other);
void QPointingDevice_grabChanged(const QPointingDevice* self, QObject* grabber, int transition, QPointerEvent* event, QEventPoint* point);
void QPointingDevice_connect_grabChanged(VirtualQPointingDevice* self, intptr_t slot, void (*callback)(intptr_t, QObject*, int, QPointerEvent*, QEventPoint*), void (*release)(intptr_t));
struct miqt_string QPointingDevice_tr2(const char* s, const char* c);
struct miqt_string QPointingDevice_tr3(const char* s, const char* c, int n);
QPointingDevice* QPointingDevice_primaryPointingDevice1(struct miqt_string seatName);

QMetaObject* QPointingDevice_virtualbase_metaObject(const VirtualQPointingDevice* self);
void* QPointingDevice_virtualbase_metacast(VirtualQPointingDevice* self, const char* param1);
int QPointingDevice_virtualbase_metacall(VirtualQPointingDevice* self, int param1, int param2, void** param3);
bool QPointingDevice_virtualbase_event(VirtualQPointingDevice* self, QEvent* event);
bool QPointingDevice_virtualbase_eventFilter(VirtualQPointingDevice* self, QObject* watched, QEvent* event);
void QPointingDevice_virtualbase_timerEvent(VirtualQPointingDevice* self, QTimerEvent* event);
void QPointingDevice_virtualbase_childEvent(VirtualQPointingDevice* self, QChildEvent* event);
void QPointingDevice_virtualbase_customEvent(VirtualQPointingDevice* self, QEvent* event);
void QPointingDevice_virtualbase_connectNotify(VirtualQPointingDevice* self, QMetaMethod* signal);
void QPointingDevice_virtualbase_disconnectNotify(VirtualQPointingDevice* self, QMetaMethod* signal);

QObject* QPointingDevice_protectedbase_sender(const VirtualQPointingDevice* self);
int QPointingDevice_protectedbase_senderSignalIndex(const VirtualQPointingDevice* self);
int QPointingDevice_protectedbase_receivers(const VirtualQPointingDevice* self, const char* signal);
bool QPointingDevice_protectedbase_isSignalConnected(const VirtualQPointingDevice* self, QMetaMethod* signal);

const QMetaObject* QPointingDevice_staticMetaObject();
void QPointingDevice_delete(QPointingDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
