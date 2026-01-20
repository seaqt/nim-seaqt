#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOAREAMONITORSOURCE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOAREAMONITORSOURCE_H

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
class QGeoAreaMonitorInfo;
class QGeoAreaMonitorSource;
class QGeoPositionInfo;
class QGeoPositionInfoSource;
class QGeoShape;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGeoAreaMonitorInfo QGeoAreaMonitorInfo;
typedef struct QGeoAreaMonitorSource QGeoAreaMonitorSource;
typedef struct QGeoPositionInfo QGeoPositionInfo;
typedef struct QGeoPositionInfoSource QGeoPositionInfoSource;
typedef struct QGeoShape QGeoShape;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQGeoAreaMonitorSource VirtualQGeoAreaMonitorSource;
typedef struct QGeoAreaMonitorSource_VTable{
	void (*destructor)(VirtualQGeoAreaMonitorSource* self);
	QMetaObject* (*metaObject)(const VirtualQGeoAreaMonitorSource* self);
	void* (*metacast)(VirtualQGeoAreaMonitorSource* self, const char* param1);
	int (*metacall)(VirtualQGeoAreaMonitorSource* self, int param1, int param2, void** param3);
	void (*setPositionInfoSource)(VirtualQGeoAreaMonitorSource* self, QGeoPositionInfoSource* source);
	QGeoPositionInfoSource* (*positionInfoSource)(const VirtualQGeoAreaMonitorSource* self);
	int (*error)(const VirtualQGeoAreaMonitorSource* self);
	int (*supportedAreaMonitorFeatures)(const VirtualQGeoAreaMonitorSource* self);
	bool (*startMonitoring)(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
	bool (*stopMonitoring)(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
	bool (*requestUpdate)(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, const char* signal);
	struct seaqt_array /* of QGeoAreaMonitorInfo* */  (*activeMonitors)(const VirtualQGeoAreaMonitorSource* self);
	struct seaqt_array /* of QGeoAreaMonitorInfo* */  (*activeMonitorsWithLookupArea)(const VirtualQGeoAreaMonitorSource* self, QGeoShape* lookupArea);
	bool (*setBackendProperty)(VirtualQGeoAreaMonitorSource* self, struct seaqt_string name, QVariant* value);
	QVariant* (*backendProperty)(const VirtualQGeoAreaMonitorSource* self, struct seaqt_string name);
	bool (*event)(VirtualQGeoAreaMonitorSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQGeoAreaMonitorSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGeoAreaMonitorSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGeoAreaMonitorSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQGeoAreaMonitorSource* self, QEvent* event);
	void (*connectNotify)(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);
}QGeoAreaMonitorSource_VTable;

void* QGeoAreaMonitorSource_vdata(VirtualQGeoAreaMonitorSource* self);
VirtualQGeoAreaMonitorSource* vdata_QGeoAreaMonitorSource(void* vdata);

VirtualQGeoAreaMonitorSource* QGeoAreaMonitorSource_new(const QGeoAreaMonitorSource_VTable* vtbl, size_t vdata, QObject* parent);

void QGeoAreaMonitorSource_virtbase(QGeoAreaMonitorSource* src, QObject** outptr_QObject);
QMetaObject* QGeoAreaMonitorSource_metaObject(const QGeoAreaMonitorSource* self);
void* QGeoAreaMonitorSource_metacast(QGeoAreaMonitorSource* self, const char* param1);
int QGeoAreaMonitorSource_metacall(QGeoAreaMonitorSource* self, int param1, int param2, void** param3);
struct seaqt_string QGeoAreaMonitorSource_tr(const char* s);
QGeoAreaMonitorSource* QGeoAreaMonitorSource_createDefaultSource(QObject* parent);
QGeoAreaMonitorSource* QGeoAreaMonitorSource_createSource(struct seaqt_string sourceName, QObject* parent);
struct seaqt_array /* of struct seaqt_string */  QGeoAreaMonitorSource_availableSources();
void QGeoAreaMonitorSource_setPositionInfoSource(QGeoAreaMonitorSource* self, QGeoPositionInfoSource* source);
QGeoPositionInfoSource* QGeoAreaMonitorSource_positionInfoSource(const QGeoAreaMonitorSource* self);
struct seaqt_string QGeoAreaMonitorSource_sourceName(const QGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_error(const QGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_supportedAreaMonitorFeatures(const QGeoAreaMonitorSource* self);
bool QGeoAreaMonitorSource_startMonitoring(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
bool QGeoAreaMonitorSource_stopMonitoring(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
bool QGeoAreaMonitorSource_requestUpdate(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, const char* signal);
struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_activeMonitors(const QGeoAreaMonitorSource* self);
struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_activeMonitorsWithLookupArea(const QGeoAreaMonitorSource* self, QGeoShape* lookupArea);
bool QGeoAreaMonitorSource_setBackendProperty(QGeoAreaMonitorSource* self, struct seaqt_string name, QVariant* value);
QVariant* QGeoAreaMonitorSource_backendProperty(const QGeoAreaMonitorSource* self, struct seaqt_string name);
void QGeoAreaMonitorSource_areaEntered(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, QGeoPositionInfo* update);
void QGeoAreaMonitorSource_connect_areaEntered(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*, QGeoPositionInfo*), void (*release)(intptr_t));
void QGeoAreaMonitorSource_areaExited(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, QGeoPositionInfo* update);
void QGeoAreaMonitorSource_connect_areaExited(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*, QGeoPositionInfo*), void (*release)(intptr_t));
void QGeoAreaMonitorSource_monitorExpired(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
void QGeoAreaMonitorSource_connect_monitorExpired(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*), void (*release)(intptr_t));
void QGeoAreaMonitorSource_errorOccurred(QGeoAreaMonitorSource* self, int error);
void QGeoAreaMonitorSource_connect_errorOccurred(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QGeoAreaMonitorSource_tr2(const char* s, const char* c);
struct seaqt_string QGeoAreaMonitorSource_tr3(const char* s, const char* c, int n);

QMetaObject* QGeoAreaMonitorSource_virtualbase_metaObject(const VirtualQGeoAreaMonitorSource* self);
void* QGeoAreaMonitorSource_virtualbase_metacast(VirtualQGeoAreaMonitorSource* self, const char* param1);
int QGeoAreaMonitorSource_virtualbase_metacall(VirtualQGeoAreaMonitorSource* self, int param1, int param2, void** param3);
void QGeoAreaMonitorSource_virtualbase_setPositionInfoSource(VirtualQGeoAreaMonitorSource* self, QGeoPositionInfoSource* source);
QGeoPositionInfoSource* QGeoAreaMonitorSource_virtualbase_positionInfoSource(const VirtualQGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_virtualbase_error(const VirtualQGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_virtualbase_supportedAreaMonitorFeatures(const VirtualQGeoAreaMonitorSource* self);
bool QGeoAreaMonitorSource_virtualbase_startMonitoring(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
bool QGeoAreaMonitorSource_virtualbase_stopMonitoring(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor);
bool QGeoAreaMonitorSource_virtualbase_requestUpdate(VirtualQGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, const char* signal);
struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_virtualbase_activeMonitors(const VirtualQGeoAreaMonitorSource* self);
struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_virtualbase_activeMonitorsWithLookupArea(const VirtualQGeoAreaMonitorSource* self, QGeoShape* lookupArea);
bool QGeoAreaMonitorSource_virtualbase_setBackendProperty(VirtualQGeoAreaMonitorSource* self, struct seaqt_string name, QVariant* value);
QVariant* QGeoAreaMonitorSource_virtualbase_backendProperty(const VirtualQGeoAreaMonitorSource* self, struct seaqt_string name);
bool QGeoAreaMonitorSource_virtualbase_event(VirtualQGeoAreaMonitorSource* self, QEvent* event);
bool QGeoAreaMonitorSource_virtualbase_eventFilter(VirtualQGeoAreaMonitorSource* self, QObject* watched, QEvent* event);
void QGeoAreaMonitorSource_virtualbase_timerEvent(VirtualQGeoAreaMonitorSource* self, QTimerEvent* event);
void QGeoAreaMonitorSource_virtualbase_childEvent(VirtualQGeoAreaMonitorSource* self, QChildEvent* event);
void QGeoAreaMonitorSource_virtualbase_customEvent(VirtualQGeoAreaMonitorSource* self, QEvent* event);
void QGeoAreaMonitorSource_virtualbase_connectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);
void QGeoAreaMonitorSource_virtualbase_disconnectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);

QObject* QGeoAreaMonitorSource_protectedbase_sender(const VirtualQGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_protectedbase_senderSignalIndex(const VirtualQGeoAreaMonitorSource* self);
int QGeoAreaMonitorSource_protectedbase_receivers(const VirtualQGeoAreaMonitorSource* self, const char* signal);
bool QGeoAreaMonitorSource_protectedbase_isSignalConnected(const VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);

const QMetaObject* QGeoAreaMonitorSource_staticMetaObject();
void QGeoAreaMonitorSource_delete(QGeoAreaMonitorSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
