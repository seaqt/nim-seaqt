#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QNMEAPOSITIONINFOSOURCE_H
#define SEAQT_QTPOSITIONING_GEN_QNMEAPOSITIONINFOSOURCE_H

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
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QNmeaPositionInfoSource;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGeoPositionInfo QGeoPositionInfo;
typedef struct QGeoPositionInfoSource QGeoPositionInfoSource;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNmeaPositionInfoSource QNmeaPositionInfoSource;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQNmeaPositionInfoSource VirtualQNmeaPositionInfoSource;
typedef struct QNmeaPositionInfoSource_VTable{
	void (*destructor)(VirtualQNmeaPositionInfoSource* self);
	QMetaObject* (*metaObject)(const VirtualQNmeaPositionInfoSource* self);
	void* (*metacast)(VirtualQNmeaPositionInfoSource* self, const char* param1);
	int (*metacall)(VirtualQNmeaPositionInfoSource* self, int param1, int param2, void** param3);
	void (*setUpdateInterval)(VirtualQNmeaPositionInfoSource* self, int msec);
	QGeoPositionInfo* (*lastKnownPosition)(const VirtualQNmeaPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
	int (*supportedPositioningMethods)(const VirtualQNmeaPositionInfoSource* self);
	int (*minimumUpdateInterval)(const VirtualQNmeaPositionInfoSource* self);
	int (*error)(const VirtualQNmeaPositionInfoSource* self);
	void (*startUpdates)(VirtualQNmeaPositionInfoSource* self);
	void (*stopUpdates)(VirtualQNmeaPositionInfoSource* self);
	void (*requestUpdate)(VirtualQNmeaPositionInfoSource* self, int timeout);
	bool (*parsePosInfoFromNmeaData_data_size_posInfo_hasFix)(VirtualQNmeaPositionInfoSource* self, const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix);
	void (*setPreferredPositioningMethods)(VirtualQNmeaPositionInfoSource* self, int methods);
	bool (*setBackendProperty)(VirtualQNmeaPositionInfoSource* self, struct seaqt_string name, QVariant* value);
	QVariant* (*backendProperty)(const VirtualQNmeaPositionInfoSource* self, struct seaqt_string name);
	bool (*event)(VirtualQNmeaPositionInfoSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQNmeaPositionInfoSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQNmeaPositionInfoSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQNmeaPositionInfoSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQNmeaPositionInfoSource* self, QEvent* event);
	void (*connectNotify)(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);
}QNmeaPositionInfoSource_VTable;

void* QNmeaPositionInfoSource_vdata(VirtualQNmeaPositionInfoSource* self);
VirtualQNmeaPositionInfoSource* vdata_QNmeaPositionInfoSource(void* vdata);

VirtualQNmeaPositionInfoSource* QNmeaPositionInfoSource_new_updateMode(const QNmeaPositionInfoSource_VTable* vtbl, size_t vdata, int updateMode);
VirtualQNmeaPositionInfoSource* QNmeaPositionInfoSource_new_updateMode_parent(const QNmeaPositionInfoSource_VTable* vtbl, size_t vdata, int updateMode, QObject* parent);

void QNmeaPositionInfoSource_virtbase(QNmeaPositionInfoSource* src, QGeoPositionInfoSource** outptr_QGeoPositionInfoSource);
QMetaObject* QNmeaPositionInfoSource_metaObject(const QNmeaPositionInfoSource* self);
void* QNmeaPositionInfoSource_metacast(QNmeaPositionInfoSource* self, const char* param1);
int QNmeaPositionInfoSource_metacall(QNmeaPositionInfoSource* self, int param1, int param2, void** param3);
struct seaqt_string QNmeaPositionInfoSource_tr_s(const char* s);
void QNmeaPositionInfoSource_setUserEquivalentRangeError(QNmeaPositionInfoSource* self, double uere);
double QNmeaPositionInfoSource_userEquivalentRangeError(const QNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_updateMode(const QNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_setDevice(QNmeaPositionInfoSource* self, QIODevice* source);
QIODevice* QNmeaPositionInfoSource_device(const QNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_setUpdateInterval(QNmeaPositionInfoSource* self, int msec);
QGeoPositionInfo* QNmeaPositionInfoSource_lastKnownPosition(const QNmeaPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
int QNmeaPositionInfoSource_supportedPositioningMethods(const QNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_minimumUpdateInterval(const QNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_error(const QNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_startUpdates(QNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_stopUpdates(QNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_requestUpdate(QNmeaPositionInfoSource* self, int timeout);
bool QNmeaPositionInfoSource_parsePosInfoFromNmeaData_data_size_posInfo_hasFix(QNmeaPositionInfoSource* self, const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix);
struct seaqt_string QNmeaPositionInfoSource_tr_s_c(const char* s, const char* c);
struct seaqt_string QNmeaPositionInfoSource_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QNmeaPositionInfoSource_virtualbase_metaObject(const VirtualQNmeaPositionInfoSource* self);
void* QNmeaPositionInfoSource_virtualbase_metacast(VirtualQNmeaPositionInfoSource* self, const char* param1);
int QNmeaPositionInfoSource_virtualbase_metacall(VirtualQNmeaPositionInfoSource* self, int param1, int param2, void** param3);
void QNmeaPositionInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaPositionInfoSource* self, int msec);
QGeoPositionInfo* QNmeaPositionInfoSource_virtualbase_lastKnownPosition(const VirtualQNmeaPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly);
int QNmeaPositionInfoSource_virtualbase_supportedPositioningMethods(const VirtualQNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_virtualbase_minimumUpdateInterval(const VirtualQNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_virtualbase_error(const VirtualQNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_virtualbase_startUpdates(VirtualQNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_virtualbase_stopUpdates(VirtualQNmeaPositionInfoSource* self);
void QNmeaPositionInfoSource_virtualbase_requestUpdate(VirtualQNmeaPositionInfoSource* self, int timeout);
bool QNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData_data_size_posInfo_hasFix(VirtualQNmeaPositionInfoSource* self, const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix);
void QNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQNmeaPositionInfoSource* self, int methods);
bool QNmeaPositionInfoSource_virtualbase_setBackendProperty(VirtualQNmeaPositionInfoSource* self, struct seaqt_string name, QVariant* value);
QVariant* QNmeaPositionInfoSource_virtualbase_backendProperty(const VirtualQNmeaPositionInfoSource* self, struct seaqt_string name);
bool QNmeaPositionInfoSource_virtualbase_event(VirtualQNmeaPositionInfoSource* self, QEvent* event);
bool QNmeaPositionInfoSource_virtualbase_eventFilter(VirtualQNmeaPositionInfoSource* self, QObject* watched, QEvent* event);
void QNmeaPositionInfoSource_virtualbase_timerEvent(VirtualQNmeaPositionInfoSource* self, QTimerEvent* event);
void QNmeaPositionInfoSource_virtualbase_childEvent(VirtualQNmeaPositionInfoSource* self, QChildEvent* event);
void QNmeaPositionInfoSource_virtualbase_customEvent(VirtualQNmeaPositionInfoSource* self, QEvent* event);
void QNmeaPositionInfoSource_virtualbase_connectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);
void QNmeaPositionInfoSource_virtualbase_disconnectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);

bool QNmeaPositionInfoSource_protectedbase_parsePosInfoFromNmeaData_data_posInfo_hasFix(VirtualQNmeaPositionInfoSource* self, struct seaqt_string data, QGeoPositionInfo* posInfo, bool* hasFix);
void QNmeaPositionInfoSource_protectedbase_setError(VirtualQNmeaPositionInfoSource* self, int positionError);
QObject* QNmeaPositionInfoSource_protectedbase_sender(const VirtualQNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaPositionInfoSource* self);
int QNmeaPositionInfoSource_protectedbase_receivers(const VirtualQNmeaPositionInfoSource* self, const char* signal);
bool QNmeaPositionInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);

const QMetaObject* QNmeaPositionInfoSource_staticMetaObject();
void QNmeaPositionInfoSource_delete(QNmeaPositionInfoSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
