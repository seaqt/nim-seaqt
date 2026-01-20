#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOSHAPE_H
#define SEAQT_QTPOSITIONING_GEN_QGEOSHAPE_H

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
class QGeoRectangle;
class QGeoShape;
class QMetaObject;
#else
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QGeoRectangle QGeoRectangle;
typedef struct QGeoShape QGeoShape;
typedef struct QMetaObject QMetaObject;
#endif

QGeoShape* QGeoShape_new();
QGeoShape* QGeoShape_new2(QGeoShape* other);

int QGeoShape_type(const QGeoShape* self);
bool QGeoShape_isValid(const QGeoShape* self);
bool QGeoShape_isEmpty(const QGeoShape* self);
bool QGeoShape_contains(const QGeoShape* self, QGeoCoordinate* coordinate);
QGeoRectangle* QGeoShape_boundingGeoRectangle(const QGeoShape* self);
QGeoCoordinate* QGeoShape_center(const QGeoShape* self);
void QGeoShape_operatorAssign(QGeoShape* self, QGeoShape* other);
struct seaqt_string QGeoShape_toString(const QGeoShape* self);

const QMetaObject* QGeoShape_staticMetaObject();
void QGeoShape_delete(QGeoShape* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
