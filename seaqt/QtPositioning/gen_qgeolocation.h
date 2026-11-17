#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOLOCATION_H
#define SEAQT_QTPOSITIONING_GEN_QGEOLOCATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGeoAddress;
class QGeoCoordinate;
class QGeoLocation;
class QGeoShape;
class QVariant;
#else
typedef struct QGeoAddress QGeoAddress;
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QGeoLocation QGeoLocation;
typedef struct QGeoShape QGeoShape;
typedef struct QVariant QVariant;
#endif

QGeoLocation* QGeoLocation_new();
QGeoLocation* QGeoLocation_new_from(QGeoLocation* from);

void QGeoLocation_operatorAssign(QGeoLocation* self, QGeoLocation* from);
void QGeoLocation_swap(QGeoLocation* self, QGeoLocation* other);
QGeoAddress* QGeoLocation_address(const QGeoLocation* self);
void QGeoLocation_setAddress(QGeoLocation* self, QGeoAddress* address);
QGeoCoordinate* QGeoLocation_coordinate(const QGeoLocation* self);
void QGeoLocation_setCoordinate(QGeoLocation* self, QGeoCoordinate* position);
QGeoShape* QGeoLocation_boundingShape(const QGeoLocation* self);
void QGeoLocation_setBoundingShape(QGeoLocation* self, QGeoShape* shape);
struct seaqt_map /* of struct seaqt_string to QVariant* */  QGeoLocation_extendedAttributes(const QGeoLocation* self);
void QGeoLocation_setExtendedAttributes(QGeoLocation* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  data);
bool QGeoLocation_isEmpty(const QGeoLocation* self);

void QGeoLocation_delete(QGeoLocation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
