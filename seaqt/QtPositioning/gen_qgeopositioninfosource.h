#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOPOSITIONINFOSOURCE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOPOSITIONINFOSOURCE_H

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
class QGeoPositionInfo;
class QGeoPositionInfoSource;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGeoPositionInfo QGeoPositionInfo;
typedef struct QGeoPositionInfoSource QGeoPositionInfoSource;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQGeoPositionInfoSource VirtualQGeoPositionInfoSource;
typedef struct QGeoPositionInfoSource_VTable{
	void (*destructor)(VirtualQGeoPositionInfoSource* self);
	QMetaObject* (*metaObject)(const VirtualQGeoPositionInfoSource* self);
	void* (*metacast)(VirtualQGeoPositionInfoSource* self, const char* param1);
	int (*metacall)(VirtualQGeoPositionInfoSource* self, int param1, int param2, void** param3);
	void (*setUpdateInterval)(VirtualQGeoPositionInfoSource* self, int msec);
	void (*setPreferredPositioningMethods)(VirtualQGeoPositionInfoSource* self, int methods);
	QGeoPositionInfo* (*lastKnownPosition)(const VirtualQGeoPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
	int (*supportedPositioningMethods)(const VirtualQGeoPositionInfoSource* self);
	int (*minimumUpdateInterval)(const VirtualQGeoPositionInfoSource* self);
	int (*error)(const VirtualQGeoPositionInfoSource* self);
	void (*startUpdates)(VirtualQGeoPositionInfoSource* self);
	void (*stopUpdates)(VirtualQGeoPositionInfoSource* self);
	void (*requestUpdate)(VirtualQGeoPositionInfoSource* self, int timeout);
	bool (*event)(VirtualQGeoPositionInfoSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQGeoPositionInfoSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGeoPositionInfoSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGeoPositionInfoSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQGeoPositionInfoSource* self, QEvent* event);
	void (*connectNotify)(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);
}QGeoPositionInfoSource_VTable;

void* QGeoPositionInfoSource_vdata(VirtualQGeoPositionInfoSource* self);
VirtualQGeoPositionInfoSource* vdata_QGeoPositionInfoSource(void* vdata);

VirtualQGeoPositionInfoSource* QGeoPositionInfoSource_new(const QGeoPositionInfoSource_VTable* vtbl, size_t vdata, QObject* parent);

void QGeoPositionInfoSource_virtbase(QGeoPositionInfoSource* src, QObject** outptr_QObject);
QMetaObject* QGeoPositionInfoSource_metaObject(const QGeoPositionInfoSource* self);
void* QGeoPositionInfoSource_metacast(QGeoPositionInfoSource* self, const char* param1);
int QGeoPositionInfoSource_metacall(QGeoPositionInfoSource* self, int param1, int param2, void** param3);
struct seaqt_string QGeoPositionInfoSource_tr_s(const char* s);
struct seaqt_string QGeoPositionInfoSource_trUtf8_s(const char* s);
void QGeoPositionInfoSource_setUpdateInterval(QGeoPositionInfoSource* self, int msec);
int QGeoPositionInfoSource_updateInterval(const QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_setPreferredPositioningMethods(QGeoPositionInfoSource* self, int methods);
int QGeoPositionInfoSource_preferredPositioningMethods(const QGeoPositionInfoSource* self);
QGeoPositionInfo* QGeoPositionInfoSource_lastKnownPosition(const QGeoPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
int QGeoPositionInfoSource_supportedPositioningMethods(const QGeoPositionInfoSource* self);
int QGeoPositionInfoSource_minimumUpdateInterval(const QGeoPositionInfoSource* self);
struct seaqt_string QGeoPositionInfoSource_sourceName(const QGeoPositionInfoSource* self);
bool QGeoPositionInfoSource_setBackendProperty(QGeoPositionInfoSource* self, struct seaqt_string name, QVariant* value);
QVariant* QGeoPositionInfoSource_backendProperty(const QGeoPositionInfoSource* self, struct seaqt_string name);
QGeoPositionInfoSource* QGeoPositionInfoSource_createDefaultSource_QObject(QObject* parent);
QGeoPositionInfoSource* QGeoPositionInfoSource_createDefaultSource_QVariantMap_QObject(struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent);
QGeoPositionInfoSource* QGeoPositionInfoSource_createSource_QString_QObject(struct seaqt_string sourceName, QObject* parent);
QGeoPositionInfoSource* QGeoPositionInfoSource_createSource_QString_QVariantMap_QObject(struct seaqt_string sourceName, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent);
struct seaqt_array /* of struct seaqt_string */  QGeoPositionInfoSource_availableSources();
int QGeoPositionInfoSource_error(const QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_startUpdates(QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_stopUpdates(QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_requestUpdate(QGeoPositionInfoSource* self, int timeout);
void QGeoPositionInfoSource_positionUpdated(QGeoPositionInfoSource* self, QGeoPositionInfo* update);
void QGeoPositionInfoSource_connect_positionUpdated(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoPositionInfo*), void (*release)(intptr_t));
void QGeoPositionInfoSource_updateTimeout(QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_connect_updateTimeout(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGeoPositionInfoSource_error_QGeoPositionInfoSource_Error(QGeoPositionInfoSource* self, int param1);
void QGeoPositionInfoSource_connect_error_QGeoPositionInfoSource_Error(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QGeoPositionInfoSource_supportedPositioningMethodsChanged(QGeoPositionInfoSource* self);
void QGeoPositionInfoSource_connect_supportedPositioningMethodsChanged(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QGeoPositionInfoSource_tr_s_c(const char* s, const char* c);
struct seaqt_string QGeoPositionInfoSource_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QGeoPositionInfoSource_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QGeoPositionInfoSource_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QGeoPositionInfoSource_virtualbase_metaObject(const VirtualQGeoPositionInfoSource* self);
void* QGeoPositionInfoSource_virtualbase_metacast(VirtualQGeoPositionInfoSource* self, const char* param1);
int QGeoPositionInfoSource_virtualbase_metacall(VirtualQGeoPositionInfoSource* self, int param1, int param2, void** param3);
void QGeoPositionInfoSource_virtualbase_setUpdateInterval(VirtualQGeoPositionInfoSource* self, int msec);
void QGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQGeoPositionInfoSource* self, int methods);
QGeoPositionInfo* QGeoPositionInfoSource_virtualbase_lastKnownPosition(const VirtualQGeoPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
int QGeoPositionInfoSource_virtualbase_supportedPositioningMethods(const VirtualQGeoPositionInfoSource* self);
int QGeoPositionInfoSource_virtualbase_minimumUpdateInterval(const VirtualQGeoPositionInfoSource* self);
int QGeoPositionInfoSource_virtualbase_error(const VirtualQGeoPositionInfoSource* self);
void QGeoPositionInfoSource_virtualbase_startUpdates(VirtualQGeoPositionInfoSource* self);
void QGeoPositionInfoSource_virtualbase_stopUpdates(VirtualQGeoPositionInfoSource* self);
void QGeoPositionInfoSource_virtualbase_requestUpdate(VirtualQGeoPositionInfoSource* self, int timeout);
bool QGeoPositionInfoSource_virtualbase_event(VirtualQGeoPositionInfoSource* self, QEvent* event);
bool QGeoPositionInfoSource_virtualbase_eventFilter(VirtualQGeoPositionInfoSource* self, QObject* watched, QEvent* event);
void QGeoPositionInfoSource_virtualbase_timerEvent(VirtualQGeoPositionInfoSource* self, QTimerEvent* event);
void QGeoPositionInfoSource_virtualbase_childEvent(VirtualQGeoPositionInfoSource* self, QChildEvent* event);
void QGeoPositionInfoSource_virtualbase_customEvent(VirtualQGeoPositionInfoSource* self, QEvent* event);
void QGeoPositionInfoSource_virtualbase_connectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);
void QGeoPositionInfoSource_virtualbase_disconnectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);

QObject* QGeoPositionInfoSource_protectedbase_sender(const VirtualQGeoPositionInfoSource* self);
int QGeoPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoPositionInfoSource* self);
int QGeoPositionInfoSource_protectedbase_receivers(const VirtualQGeoPositionInfoSource* self, const char* signal);
bool QGeoPositionInfoSource_protectedbase_isSignalConnected(const VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);

void QGeoPositionInfoSource_delete(QGeoPositionInfoSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
