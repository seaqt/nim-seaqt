#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOCOORDINATE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOCOORDINATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGeoCoordinate;
class QMetaObject;
#else
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QMetaObject QMetaObject;
#endif

QGeoCoordinate* QGeoCoordinate_new();
QGeoCoordinate* QGeoCoordinate_new_latitude_longitude(double latitude, double longitude);
QGeoCoordinate* QGeoCoordinate_new_latitude_longitude_altitude(double latitude, double longitude, double altitude);
QGeoCoordinate* QGeoCoordinate_new_from(QGeoCoordinate* from);

void QGeoCoordinate_operatorAssign(QGeoCoordinate* self, QGeoCoordinate* from);
void QGeoCoordinate_swap(QGeoCoordinate* self, QGeoCoordinate* other);
bool QGeoCoordinate_isValid(const QGeoCoordinate* self);
int QGeoCoordinate_type(const QGeoCoordinate* self);
void QGeoCoordinate_setLatitude(QGeoCoordinate* self, double latitude);
double QGeoCoordinate_latitude(const QGeoCoordinate* self);
void QGeoCoordinate_setLongitude(QGeoCoordinate* self, double longitude);
double QGeoCoordinate_longitude(const QGeoCoordinate* self);
void QGeoCoordinate_setAltitude(QGeoCoordinate* self, double altitude);
double QGeoCoordinate_altitude(const QGeoCoordinate* self);
double QGeoCoordinate_distanceTo(const QGeoCoordinate* self, QGeoCoordinate* other);
double QGeoCoordinate_azimuthTo(const QGeoCoordinate* self, QGeoCoordinate* other);
QGeoCoordinate* QGeoCoordinate_atDistanceAndAzimuth_distance_azimuth(const QGeoCoordinate* self, double distance, double azimuth);
struct seaqt_string QGeoCoordinate_toString(const QGeoCoordinate* self);
QGeoCoordinate* QGeoCoordinate_atDistanceAndAzimuth_distance_azimuth_distanceUp(const QGeoCoordinate* self, double distance, double azimuth, double distanceUp);
struct seaqt_string QGeoCoordinate_toString_format(const QGeoCoordinate* self, int format);

const QMetaObject* QGeoCoordinate_staticMetaObject();
void QGeoCoordinate_delete(QGeoCoordinate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
