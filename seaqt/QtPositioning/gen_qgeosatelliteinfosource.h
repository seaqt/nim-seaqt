#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOSATELLITEINFOSOURCE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOSATELLITEINFOSOURCE_H

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
class QGeoSatelliteInfo;
class QGeoSatelliteInfoSource;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGeoSatelliteInfo QGeoSatelliteInfo;
typedef struct QGeoSatelliteInfoSource QGeoSatelliteInfoSource;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQGeoSatelliteInfoSource VirtualQGeoSatelliteInfoSource;
typedef struct QGeoSatelliteInfoSource_VTable{
	void (*destructor)(VirtualQGeoSatelliteInfoSource* self);
	QMetaObject* (*metaObject)(const VirtualQGeoSatelliteInfoSource* self);
	void* (*metacast)(VirtualQGeoSatelliteInfoSource* self, const char* param1);
	int (*metacall)(VirtualQGeoSatelliteInfoSource* self, int param1, int param2, void** param3);
	void (*setUpdateInterval)(VirtualQGeoSatelliteInfoSource* self, int msec);
	int (*minimumUpdateInterval)(const VirtualQGeoSatelliteInfoSource* self);
	int (*error)(const VirtualQGeoSatelliteInfoSource* self);
	void (*startUpdates)(VirtualQGeoSatelliteInfoSource* self);
	void (*stopUpdates)(VirtualQGeoSatelliteInfoSource* self);
	void (*requestUpdate)(VirtualQGeoSatelliteInfoSource* self, int timeout);
	bool (*event)(VirtualQGeoSatelliteInfoSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQGeoSatelliteInfoSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGeoSatelliteInfoSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGeoSatelliteInfoSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQGeoSatelliteInfoSource* self, QEvent* event);
	void (*connectNotify)(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);
}QGeoSatelliteInfoSource_VTable;

void* QGeoSatelliteInfoSource_vdata(VirtualQGeoSatelliteInfoSource* self);
VirtualQGeoSatelliteInfoSource* vdata_QGeoSatelliteInfoSource(void* vdata);

VirtualQGeoSatelliteInfoSource* QGeoSatelliteInfoSource_new(const QGeoSatelliteInfoSource_VTable* vtbl, size_t vdata, QObject* parent);

void QGeoSatelliteInfoSource_virtbase(QGeoSatelliteInfoSource* src, QObject** outptr_QObject);
QMetaObject* QGeoSatelliteInfoSource_metaObject(const QGeoSatelliteInfoSource* self);
void* QGeoSatelliteInfoSource_metacast(QGeoSatelliteInfoSource* self, const char* param1);
int QGeoSatelliteInfoSource_metacall(QGeoSatelliteInfoSource* self, int param1, int param2, void** param3);
struct seaqt_string QGeoSatelliteInfoSource_tr(const char* s);
struct seaqt_string QGeoSatelliteInfoSource_trUtf8(const char* s);
QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createDefaultSource(QObject* parent);
QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createSource(struct seaqt_string sourceName, QObject* parent);
QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createDefaultSource2(struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent);
QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createSource2(struct seaqt_string sourceName, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent);
struct seaqt_array /* of struct seaqt_string */  QGeoSatelliteInfoSource_availableSources();
struct seaqt_string QGeoSatelliteInfoSource_sourceName(const QGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_setUpdateInterval(QGeoSatelliteInfoSource* self, int msec);
int QGeoSatelliteInfoSource_updateInterval(const QGeoSatelliteInfoSource* self);
int QGeoSatelliteInfoSource_minimumUpdateInterval(const QGeoSatelliteInfoSource* self);
int QGeoSatelliteInfoSource_error(const QGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_startUpdates(QGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_stopUpdates(QGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_requestUpdate(QGeoSatelliteInfoSource* self, int timeout);
void QGeoSatelliteInfoSource_satellitesInViewUpdated(QGeoSatelliteInfoSource* self, struct seaqt_array /* of QGeoSatelliteInfo* */  satellites);
void QGeoSatelliteInfoSource_connect_satellitesInViewUpdated(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QGeoSatelliteInfo* */ ), void (*release)(intptr_t));
void QGeoSatelliteInfoSource_satellitesInUseUpdated(QGeoSatelliteInfoSource* self, struct seaqt_array /* of QGeoSatelliteInfo* */  satellites);
void QGeoSatelliteInfoSource_connect_satellitesInUseUpdated(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QGeoSatelliteInfo* */ ), void (*release)(intptr_t));
void QGeoSatelliteInfoSource_requestTimeout(QGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_connect_requestTimeout(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QGeoSatelliteInfoSource_errorWithQGeoSatelliteInfoSourceError(QGeoSatelliteInfoSource* self, int param1);
void QGeoSatelliteInfoSource_connect_errorWithQGeoSatelliteInfoSourceError(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QGeoSatelliteInfoSource_tr2(const char* s, const char* c);
struct seaqt_string QGeoSatelliteInfoSource_tr3(const char* s, const char* c, int n);
struct seaqt_string QGeoSatelliteInfoSource_trUtf82(const char* s, const char* c);
struct seaqt_string QGeoSatelliteInfoSource_trUtf83(const char* s, const char* c, int n);

QMetaObject* QGeoSatelliteInfoSource_virtualbase_metaObject(const VirtualQGeoSatelliteInfoSource* self);
void* QGeoSatelliteInfoSource_virtualbase_metacast(VirtualQGeoSatelliteInfoSource* self, const char* param1);
int QGeoSatelliteInfoSource_virtualbase_metacall(VirtualQGeoSatelliteInfoSource* self, int param1, int param2, void** param3);
void QGeoSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQGeoSatelliteInfoSource* self, int msec);
int QGeoSatelliteInfoSource_virtualbase_minimumUpdateInterval(const VirtualQGeoSatelliteInfoSource* self);
int QGeoSatelliteInfoSource_virtualbase_error(const VirtualQGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_virtualbase_startUpdates(VirtualQGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_virtualbase_stopUpdates(VirtualQGeoSatelliteInfoSource* self);
void QGeoSatelliteInfoSource_virtualbase_requestUpdate(VirtualQGeoSatelliteInfoSource* self, int timeout);
bool QGeoSatelliteInfoSource_virtualbase_event(VirtualQGeoSatelliteInfoSource* self, QEvent* event);
bool QGeoSatelliteInfoSource_virtualbase_eventFilter(VirtualQGeoSatelliteInfoSource* self, QObject* watched, QEvent* event);
void QGeoSatelliteInfoSource_virtualbase_timerEvent(VirtualQGeoSatelliteInfoSource* self, QTimerEvent* event);
void QGeoSatelliteInfoSource_virtualbase_childEvent(VirtualQGeoSatelliteInfoSource* self, QChildEvent* event);
void QGeoSatelliteInfoSource_virtualbase_customEvent(VirtualQGeoSatelliteInfoSource* self, QEvent* event);
void QGeoSatelliteInfoSource_virtualbase_connectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);
void QGeoSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);

QObject* QGeoSatelliteInfoSource_protectedbase_sender(const VirtualQGeoSatelliteInfoSource* self);
int QGeoSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoSatelliteInfoSource* self);
int QGeoSatelliteInfoSource_protectedbase_receivers(const VirtualQGeoSatelliteInfoSource* self, const char* signal);
bool QGeoSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);

const QMetaObject* QGeoSatelliteInfoSource_staticMetaObject();
void QGeoSatelliteInfoSource_delete(QGeoSatelliteInfoSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
