#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QNMEASATELLITEINFOSOURCE_H
#define SEAQT_QTPOSITIONING_GEN_QNMEASATELLITEINFOSOURCE_H

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
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QNmeaSatelliteInfoSource;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGeoSatelliteInfo QGeoSatelliteInfo;
typedef struct QGeoSatelliteInfoSource QGeoSatelliteInfoSource;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNmeaSatelliteInfoSource QNmeaSatelliteInfoSource;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQNmeaSatelliteInfoSource VirtualQNmeaSatelliteInfoSource;
typedef struct QNmeaSatelliteInfoSource_VTable{
	void (*destructor)(VirtualQNmeaSatelliteInfoSource* self);
	QMetaObject* (*metaObject)(const VirtualQNmeaSatelliteInfoSource* self);
	void* (*metacast)(VirtualQNmeaSatelliteInfoSource* self, const char* param1);
	int (*metacall)(VirtualQNmeaSatelliteInfoSource* self, int param1, int param2, void** param3);
	void (*setUpdateInterval)(VirtualQNmeaSatelliteInfoSource* self, int msec);
	int (*minimumUpdateInterval)(const VirtualQNmeaSatelliteInfoSource* self);
	int (*error)(const VirtualQNmeaSatelliteInfoSource* self);
	bool (*setBackendProperty)(VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value);
	QVariant* (*backendProperty)(const VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name);
	void (*startUpdates)(VirtualQNmeaSatelliteInfoSource* self);
	void (*stopUpdates)(VirtualQNmeaSatelliteInfoSource* self);
	void (*requestUpdate)(VirtualQNmeaSatelliteInfoSource* self, int timeout);
	int (*parseSatellitesInUseFromNmea)(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of int */  pnrsInUse);
	int (*parseSatelliteInfoFromNmea)(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of QGeoSatelliteInfo* */  infos, int* system);
	bool (*event)(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQNmeaSatelliteInfoSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNmeaSatelliteInfoSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNmeaSatelliteInfoSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);
	void (*connectNotify)(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);
}QNmeaSatelliteInfoSource_VTable;

void* QNmeaSatelliteInfoSource_vdata(VirtualQNmeaSatelliteInfoSource* self);
VirtualQNmeaSatelliteInfoSource* vdata_QNmeaSatelliteInfoSource(void* vdata);

VirtualQNmeaSatelliteInfoSource* QNmeaSatelliteInfoSource_new_mode(const QNmeaSatelliteInfoSource_VTable* vtbl, size_t vdata, int mode);
VirtualQNmeaSatelliteInfoSource* QNmeaSatelliteInfoSource_new_mode_parent(const QNmeaSatelliteInfoSource_VTable* vtbl, size_t vdata, int mode, QObject* parent);

void QNmeaSatelliteInfoSource_virtbase(QNmeaSatelliteInfoSource* src, QGeoSatelliteInfoSource** outptr_QGeoSatelliteInfoSource);
QMetaObject* QNmeaSatelliteInfoSource_metaObject(const QNmeaSatelliteInfoSource* self);
void* QNmeaSatelliteInfoSource_metacast(QNmeaSatelliteInfoSource* self, const char* param1);
int QNmeaSatelliteInfoSource_metacall(QNmeaSatelliteInfoSource* self, int param1, int param2, void** param3);
struct seaqt_string QNmeaSatelliteInfoSource_tr_s(const char* s);
int QNmeaSatelliteInfoSource_updateMode(const QNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_setDevice(QNmeaSatelliteInfoSource* self, QIODevice* source);
QIODevice* QNmeaSatelliteInfoSource_device(const QNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_setUpdateInterval(QNmeaSatelliteInfoSource* self, int msec);
int QNmeaSatelliteInfoSource_minimumUpdateInterval(const QNmeaSatelliteInfoSource* self);
int QNmeaSatelliteInfoSource_error(const QNmeaSatelliteInfoSource* self);
bool QNmeaSatelliteInfoSource_setBackendProperty(QNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value);
QVariant* QNmeaSatelliteInfoSource_backendProperty(const QNmeaSatelliteInfoSource* self, struct seaqt_string name);
void QNmeaSatelliteInfoSource_startUpdates(QNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_stopUpdates(QNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_requestUpdate(QNmeaSatelliteInfoSource* self, int timeout);
int QNmeaSatelliteInfoSource_parseSatellitesInUseFromNmea(QNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of int */  pnrsInUse);
int QNmeaSatelliteInfoSource_parseSatelliteInfoFromNmea(QNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of QGeoSatelliteInfo* */  infos, int* system);
struct seaqt_string QNmeaSatelliteInfoSource_tr_s_c(const char* s, const char* c);
struct seaqt_string QNmeaSatelliteInfoSource_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QNmeaSatelliteInfoSource_virtualbase_metaObject(const VirtualQNmeaSatelliteInfoSource* self);
void* QNmeaSatelliteInfoSource_virtualbase_metacast(VirtualQNmeaSatelliteInfoSource* self, const char* param1);
int QNmeaSatelliteInfoSource_virtualbase_metacall(VirtualQNmeaSatelliteInfoSource* self, int param1, int param2, void** param3);
void QNmeaSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaSatelliteInfoSource* self, int msec);
int QNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval(const VirtualQNmeaSatelliteInfoSource* self);
int QNmeaSatelliteInfoSource_virtualbase_error(const VirtualQNmeaSatelliteInfoSource* self);
bool QNmeaSatelliteInfoSource_virtualbase_setBackendProperty(VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value);
QVariant* QNmeaSatelliteInfoSource_virtualbase_backendProperty(const VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name);
void QNmeaSatelliteInfoSource_virtualbase_startUpdates(VirtualQNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_virtualbase_stopUpdates(VirtualQNmeaSatelliteInfoSource* self);
void QNmeaSatelliteInfoSource_virtualbase_requestUpdate(VirtualQNmeaSatelliteInfoSource* self, int timeout);
int QNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of int */  pnrsInUse);
int QNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of QGeoSatelliteInfo* */  infos, int* system);
bool QNmeaSatelliteInfoSource_virtualbase_event(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);
bool QNmeaSatelliteInfoSource_virtualbase_eventFilter(VirtualQNmeaSatelliteInfoSource* self, QObject* watched, QEvent* event);
void QNmeaSatelliteInfoSource_virtualbase_timerEvent(VirtualQNmeaSatelliteInfoSource* self, QTimerEvent* event);
void QNmeaSatelliteInfoSource_virtualbase_childEvent(VirtualQNmeaSatelliteInfoSource* self, QChildEvent* event);
void QNmeaSatelliteInfoSource_virtualbase_customEvent(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);
void QNmeaSatelliteInfoSource_virtualbase_connectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);
void QNmeaSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);

void QNmeaSatelliteInfoSource_protectedbase_setError(VirtualQNmeaSatelliteInfoSource* self, int satelliteError);
QObject* QNmeaSatelliteInfoSource_protectedbase_sender(const VirtualQNmeaSatelliteInfoSource* self);
int QNmeaSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaSatelliteInfoSource* self);
int QNmeaSatelliteInfoSource_protectedbase_receivers(const VirtualQNmeaSatelliteInfoSource* self, const char* signal);
bool QNmeaSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);

void QNmeaSatelliteInfoSource_delete(QNmeaSatelliteInfoSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
