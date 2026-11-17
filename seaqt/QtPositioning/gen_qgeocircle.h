#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOCIRCLE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOCIRCLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGeoCircle;
class QGeoCoordinate;
class QGeoShape;
class QMetaObject;
#else
typedef struct QGeoCircle QGeoCircle;
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QGeoShape QGeoShape;
typedef struct QMetaObject QMetaObject;
#endif

QGeoCircle* QGeoCircle_new();
QGeoCircle* QGeoCircle_new_center(QGeoCoordinate* center);
QGeoCircle* QGeoCircle_new_from(QGeoCircle* from);
QGeoCircle* QGeoCircle_new_other(QGeoShape* other);
QGeoCircle* QGeoCircle_new_center_radius(QGeoCoordinate* center, double radius);

void QGeoCircle_virtbase(QGeoCircle* src, QGeoShape** outptr_QGeoShape);
void QGeoCircle_operatorAssign(QGeoCircle* self, QGeoCircle* from);
void QGeoCircle_setCenter(QGeoCircle* self, QGeoCoordinate* center);
QGeoCoordinate* QGeoCircle_center(const QGeoCircle* self);
void QGeoCircle_setRadius(QGeoCircle* self, double radius);
double QGeoCircle_radius(const QGeoCircle* self);
void QGeoCircle_translate(QGeoCircle* self, double degreesLatitude, double degreesLongitude);
QGeoCircle* QGeoCircle_translated(const QGeoCircle* self, double degreesLatitude, double degreesLongitude);
void QGeoCircle_extendCircle(QGeoCircle* self, QGeoCoordinate* coordinate);
struct seaqt_string QGeoCircle_toString(const QGeoCircle* self);

const QMetaObject* QGeoCircle_staticMetaObject();
void QGeoCircle_delete(QGeoCircle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
