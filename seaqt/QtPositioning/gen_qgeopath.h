#pragma once
#ifndef SEAQT_QTPOSITIONING_GEN_QGEOPATH_H
#define SEAQT_QTPOSITIONING_GEN_QGEOPATH_H

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
class QGeoPath;
class QGeoShape;
class QMetaObject;
class QVariant;
#else
typedef struct QGeoCoordinate QGeoCoordinate;
typedef struct QGeoPath QGeoPath;
typedef struct QGeoShape QGeoShape;
typedef struct QMetaObject QMetaObject;
typedef struct QVariant QVariant;
#endif

QGeoPath* QGeoPath_new();
QGeoPath* QGeoPath_new_path(struct seaqt_array /* of QGeoCoordinate* */  path);
QGeoPath* QGeoPath_new_from(QGeoPath* from);
QGeoPath* QGeoPath_new_other(QGeoShape* other);
QGeoPath* QGeoPath_new_path_width(struct seaqt_array /* of QGeoCoordinate* */  path, const double* width);

void QGeoPath_virtbase(QGeoPath* src, QGeoShape** outptr_QGeoShape);
void QGeoPath_operatorAssign(QGeoPath* self, QGeoPath* from);
bool QGeoPath_operatorEqual(const QGeoPath* self, QGeoPath* other);
bool QGeoPath_operatorNotEqual(const QGeoPath* self, QGeoPath* other);
void QGeoPath_setPath(QGeoPath* self, struct seaqt_array /* of QGeoCoordinate* */  path);
struct seaqt_array /* of QGeoCoordinate* */  QGeoPath_path(const QGeoPath* self);
void QGeoPath_clearPath(QGeoPath* self);
void QGeoPath_setVariantPath(QGeoPath* self, struct seaqt_array /* of QVariant* */  path);
struct seaqt_array /* of QVariant* */  QGeoPath_variantPath(const QGeoPath* self);
void QGeoPath_setWidth(QGeoPath* self, const double* width);
double QGeoPath_width(const QGeoPath* self);
void QGeoPath_translate(QGeoPath* self, double degreesLatitude, double degreesLongitude);
QGeoPath* QGeoPath_translated(const QGeoPath* self, double degreesLatitude, double degreesLongitude);
double QGeoPath_length(const QGeoPath* self);
int QGeoPath_size(const QGeoPath* self);
void QGeoPath_addCoordinate(QGeoPath* self, QGeoCoordinate* coordinate);
void QGeoPath_insertCoordinate(QGeoPath* self, int index, QGeoCoordinate* coordinate);
void QGeoPath_replaceCoordinate(QGeoPath* self, int index, QGeoCoordinate* coordinate);
QGeoCoordinate* QGeoPath_coordinateAt(const QGeoPath* self, int index);
bool QGeoPath_containsCoordinate(const QGeoPath* self, QGeoCoordinate* coordinate);
void QGeoPath_removeCoordinate_coordinate(QGeoPath* self, QGeoCoordinate* coordinate);
void QGeoPath_removeCoordinate_index(QGeoPath* self, int index);
struct seaqt_string QGeoPath_toString(const QGeoPath* self);
double QGeoPath_length_indexFrom(const QGeoPath* self, int indexFrom);
double QGeoPath_length_indexFrom_indexTo(const QGeoPath* self, int indexFrom, int indexTo);

void QGeoPath_delete(QGeoPath* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
