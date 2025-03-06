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

struct QInputDevice_VTable {
	void (*destructor)(struct QInputDevice_VTable* vtbl, QInputDevice* self);
	QMetaObject* (*metaObject)(struct QInputDevice_VTable* vtbl, const QInputDevice* self);
	void* (*metacast)(struct QInputDevice_VTable* vtbl, QInputDevice* self, const char* param1);
	int (*metacall)(struct QInputDevice_VTable* vtbl, QInputDevice* self, int param1, int param2, void** param3);
	bool (*event)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QEvent* event);
	bool (*eventFilter)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QTimerEvent* event);
	void (*childEvent)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QChildEvent* event);
	void (*customEvent)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QEvent* event);
	void (*connectNotify)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QInputDevice_VTable* vtbl, QInputDevice* self, QMetaMethod* signal);
};
QInputDevice* QInputDevice_new(struct QInputDevice_VTable* vtbl);
QInputDevice* QInputDevice_new2(struct QInputDevice_VTable* vtbl, struct miqt_string name, long long systemId, int type);
QInputDevice* QInputDevice_new3(struct QInputDevice_VTable* vtbl, QObject* parent);
QInputDevice* QInputDevice_new4(struct QInputDevice_VTable* vtbl, struct miqt_string name, long long systemId, int type, struct miqt_string seatName);
QInputDevice* QInputDevice_new5(struct QInputDevice_VTable* vtbl, struct miqt_string name, long long systemId, int type, struct miqt_string seatName, QObject* parent);
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
void QInputDevice_connect_availableVirtualGeometryChanged(QInputDevice* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t));
struct miqt_string QInputDevice_tr2(const char* s, const char* c);
struct miqt_string QInputDevice_tr3(const char* s, const char* c, int n);
QInputDevice* QInputDevice_primaryKeyboard1(struct miqt_string seatName);
QMetaObject* QInputDevice_virtualbase_metaObject(const void* self);
void* QInputDevice_virtualbase_metacast(void* self, const char* param1);
int QInputDevice_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QInputDevice_virtualbase_event(void* self, QEvent* event);
bool QInputDevice_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QInputDevice_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QInputDevice_virtualbase_childEvent(void* self, QChildEvent* event);
void QInputDevice_virtualbase_customEvent(void* self, QEvent* event);
void QInputDevice_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QInputDevice_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QInputDevice_protectedbase_sender(const void* self);
int QInputDevice_protectedbase_senderSignalIndex(const void* self);
int QInputDevice_protectedbase_receivers(const void* self, const char* signal);
bool QInputDevice_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QInputDevice_staticMetaObject();
void QInputDevice_delete(QInputDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
