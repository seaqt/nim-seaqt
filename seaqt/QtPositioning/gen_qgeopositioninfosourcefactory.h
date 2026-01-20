#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOPOSITIONINFOSOURCEFACTORY_H
#define SEAQT_QTPOSITIONING_GEN_QGEOPOSITIONINFOSOURCEFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGeoAreaMonitorSource;
class QGeoPositionInfoSource;
class QGeoPositionInfoSourceFactory;
class QGeoPositionInfoSourceFactoryV2;
class QGeoSatelliteInfoSource;
class QObject;
class QVariant;
#else
typedef struct QGeoAreaMonitorSource QGeoAreaMonitorSource;
typedef struct QGeoPositionInfoSource QGeoPositionInfoSource;
typedef struct QGeoPositionInfoSourceFactory QGeoPositionInfoSourceFactory;
typedef struct QGeoPositionInfoSourceFactoryV2 QGeoPositionInfoSourceFactoryV2;
typedef struct QGeoSatelliteInfoSource QGeoSatelliteInfoSource;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQGeoPositionInfoSourceFactory VirtualQGeoPositionInfoSourceFactory;
typedef struct QGeoPositionInfoSourceFactory_VTable{
	void (*destructor)(VirtualQGeoPositionInfoSourceFactory* self);
	QGeoPositionInfoSource* (*positionInfoSource)(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);
	QGeoSatelliteInfoSource* (*satelliteInfoSource)(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);
	QGeoAreaMonitorSource* (*areaMonitor)(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);
}QGeoPositionInfoSourceFactory_VTable;

void* QGeoPositionInfoSourceFactory_vdata(VirtualQGeoPositionInfoSourceFactory* self);
VirtualQGeoPositionInfoSourceFactory* vdata_QGeoPositionInfoSourceFactory(void* vdata);

VirtualQGeoPositionInfoSourceFactory* QGeoPositionInfoSourceFactory_new(const QGeoPositionInfoSourceFactory_VTable* vtbl, size_t vdata, QGeoPositionInfoSourceFactory* from);

QGeoPositionInfoSource* QGeoPositionInfoSourceFactory_positionInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent);
QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactory_satelliteInfoSource(QGeoPositionInfoSourceFactory* self, QObject* parent);
QGeoAreaMonitorSource* QGeoPositionInfoSourceFactory_areaMonitor(QGeoPositionInfoSourceFactory* self, QObject* parent);
void QGeoPositionInfoSourceFactory_operatorAssign(QGeoPositionInfoSourceFactory* self, QGeoPositionInfoSourceFactory* from);

QGeoPositionInfoSource* QGeoPositionInfoSourceFactory_virtualbase_positionInfoSource(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);
QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactory_virtualbase_satelliteInfoSource(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);
QGeoAreaMonitorSource* QGeoPositionInfoSourceFactory_virtualbase_areaMonitor(VirtualQGeoPositionInfoSourceFactory* self, QObject* parent);

void QGeoPositionInfoSourceFactory_delete(QGeoPositionInfoSourceFactory* self);

typedef struct VirtualQGeoPositionInfoSourceFactoryV2 VirtualQGeoPositionInfoSourceFactoryV2;
typedef struct QGeoPositionInfoSourceFactoryV2_VTable{
	void (*destructor)(VirtualQGeoPositionInfoSourceFactoryV2* self);
	QGeoPositionInfoSource* (*positionInfoSourceWithParameters)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
	QGeoSatelliteInfoSource* (*satelliteInfoSourceWithParameters)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
	QGeoAreaMonitorSource* (*areaMonitorWithParameters)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
	QGeoPositionInfoSource* (*positionInfoSource)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);
	QGeoSatelliteInfoSource* (*satelliteInfoSource)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);
	QGeoAreaMonitorSource* (*areaMonitor)(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);
}QGeoPositionInfoSourceFactoryV2_VTable;

void* QGeoPositionInfoSourceFactoryV2_vdata(VirtualQGeoPositionInfoSourceFactoryV2* self);
VirtualQGeoPositionInfoSourceFactoryV2* vdata_QGeoPositionInfoSourceFactoryV2(void* vdata);

VirtualQGeoPositionInfoSourceFactoryV2* QGeoPositionInfoSourceFactoryV2_new(const QGeoPositionInfoSourceFactoryV2_VTable* vtbl, size_t vdata, QGeoPositionInfoSourceFactoryV2* from);

void QGeoPositionInfoSourceFactoryV2_virtbase(QGeoPositionInfoSourceFactoryV2* src, QGeoPositionInfoSourceFactory** outptr_QGeoPositionInfoSourceFactory);
QGeoPositionInfoSource* QGeoPositionInfoSourceFactoryV2_positionInfoSourceWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactoryV2_satelliteInfoSourceWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
QGeoAreaMonitorSource* QGeoPositionInfoSourceFactoryV2_areaMonitorWithParameters(QGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
void QGeoPositionInfoSourceFactoryV2_operatorAssign(QGeoPositionInfoSourceFactoryV2* self, QGeoPositionInfoSourceFactoryV2* from);

QGeoPositionInfoSource* QGeoPositionInfoSourceFactoryV2_virtualbase_positionInfoSourceWithParameters(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactoryV2_virtualbase_satelliteInfoSourceWithParameters(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
QGeoAreaMonitorSource* QGeoPositionInfoSourceFactoryV2_virtualbase_areaMonitorWithParameters(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters);
QGeoPositionInfoSource* QGeoPositionInfoSourceFactoryV2_virtualbase_positionInfoSource(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);
QGeoSatelliteInfoSource* QGeoPositionInfoSourceFactoryV2_virtualbase_satelliteInfoSource(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);
QGeoAreaMonitorSource* QGeoPositionInfoSourceFactoryV2_virtualbase_areaMonitor(VirtualQGeoPositionInfoSourceFactoryV2* self, QObject* parent);

void QGeoPositionInfoSourceFactoryV2_delete(QGeoPositionInfoSourceFactoryV2* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
