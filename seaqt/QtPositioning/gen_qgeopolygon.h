#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOPOLYGON_H
#define SEAQT_QTPOSITIONING_GEN_QGEOPOLYGON_H

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
class QGeoPolygon;
class QGeoShape;
class QMetaObject;
class QVariant;
#else
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QGeoPolygon QGeoPolygon;
typedef struct QGeoShape QGeoShape;
typedef struct QMetaObject QMetaObject;
typedef struct QVariant QVariant;
#endif

QGeoPolygon* QGeoPolygon_new();
QGeoPolygon* QGeoPolygon_new_path(struct seaqt_array /* of QGeoCoordinate* */  path);
QGeoPolygon* QGeoPolygon_new_from(QGeoPolygon* from);
QGeoPolygon* QGeoPolygon_new_other(QGeoShape* other);

void QGeoPolygon_virtbase(QGeoPolygon* src, QGeoShape** outptr_QGeoShape);
void QGeoPolygon_operatorAssign(QGeoPolygon* self, QGeoPolygon* from);
void QGeoPolygon_setPerimeter(QGeoPolygon* self, struct seaqt_array /* of QGeoCoordinate* */  path);
struct seaqt_array /* of QGeoCoordinate* */  QGeoPolygon_perimeter(const QGeoPolygon* self);
void QGeoPolygon_addHole_QVariant(QGeoPolygon* self, QVariant* holePath);
void QGeoPolygon_addHole_QListOfQGeoCoordinate(QGeoPolygon* self, struct seaqt_array /* of QGeoCoordinate* */  holePath);
struct seaqt_array /* of QVariant* */  QGeoPolygon_hole(const QGeoPolygon* self, ptrdiff_t index);
struct seaqt_array /* of QGeoCoordinate* */  QGeoPolygon_holePath(const QGeoPolygon* self, ptrdiff_t index);
void QGeoPolygon_removeHole(QGeoPolygon* self, ptrdiff_t index);
ptrdiff_t QGeoPolygon_holesCount(const QGeoPolygon* self);
void QGeoPolygon_translate(QGeoPolygon* self, double degreesLatitude, double degreesLongitude);
QGeoPolygon* QGeoPolygon_translated(const QGeoPolygon* self, double degreesLatitude, double degreesLongitude);
double QGeoPolygon_length(const QGeoPolygon* self);
ptrdiff_t QGeoPolygon_size(const QGeoPolygon* self);
void QGeoPolygon_addCoordinate(QGeoPolygon* self, QGeoCoordinate* coordinate);
void QGeoPolygon_insertCoordinate(QGeoPolygon* self, ptrdiff_t index, QGeoCoordinate* coordinate);
void QGeoPolygon_replaceCoordinate(QGeoPolygon* self, ptrdiff_t index, QGeoCoordinate* coordinate);
QGeoCoordinate* QGeoPolygon_coordinateAt(const QGeoPolygon* self, ptrdiff_t index);
bool QGeoPolygon_containsCoordinate(const QGeoPolygon* self, QGeoCoordinate* coordinate);
void QGeoPolygon_removeCoordinate_coordinate(QGeoPolygon* self, QGeoCoordinate* coordinate);
void QGeoPolygon_removeCoordinate_index(QGeoPolygon* self, ptrdiff_t index);
struct seaqt_string QGeoPolygon_toString(const QGeoPolygon* self);
double QGeoPolygon_length_indexFrom(const QGeoPolygon* self, ptrdiff_t indexFrom);
double QGeoPolygon_length_indexFrom_indexTo(const QGeoPolygon* self, ptrdiff_t indexFrom, ptrdiff_t indexTo);

void QGeoPolygon_delete(QGeoPolygon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
