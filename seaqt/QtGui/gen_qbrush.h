#pragma once
#ifndef SEAQT_QTGUI_GEN_QBRUSH_H
#define SEAQT_QTGUI_GEN_QBRUSH_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBrush;
class QColor;
class QConicalGradient;
class QGradient;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QGradient__QGradientData)
typedef QGradient::QGradientData QGradient__QGradientData;
#else
class QGradient__QGradientData;
#endif
class QImage;
class QLinearGradient;
class QMatrix;
class QMetaObject;
class QPixmap;
class QPointF;
class QRadialGradient;
class QTransform;
class QVariant;
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QConicalGradient QConicalGradient;
typedef struct QGradient QGradient;
typedef struct QGradient__QGradientData QGradient__QGradientData;
typedef struct QImage QImage;
typedef struct QLinearGradient QLinearGradient;
typedef struct QMatrix QMatrix;
typedef struct QMetaObject QMetaObject;
typedef struct QPixmap QPixmap;
typedef struct QPointF QPointF;
typedef struct QRadialGradient QRadialGradient;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
#endif

QBrush* QBrush_new();
QBrush* QBrush_new_Qt_BrushStyle(int bs);
QBrush* QBrush_new_QColor(QColor* color);
QBrush* QBrush_new_Qt_GlobalColor(int color);
QBrush* QBrush_new_QColor_QPixmap(QColor* color, QPixmap* pixmap);
QBrush* QBrush_new_Qt_GlobalColor_QPixmap(int color, QPixmap* pixmap);
QBrush* QBrush_new_QPixmap(QPixmap* pixmap);
QBrush* QBrush_new_QImage(QImage* image);
QBrush* QBrush_new_QBrush(QBrush* from);
QBrush* QBrush_new_QGradient(QGradient* gradient);
QBrush* QBrush_new_QColor_Qt_BrushStyle(QColor* color, int bs);
QBrush* QBrush_new_Qt_GlobalColor_Qt_BrushStyle(int color, int bs);

void QBrush_operatorAssign(QBrush* self, QBrush* from);
void QBrush_swap(QBrush* self, QBrush* other);
QVariant* QBrush_ToQVariant(const QBrush* self);
int QBrush_style(const QBrush* self);
void QBrush_setStyle(QBrush* self, int style);
QMatrix* QBrush_matrix(const QBrush* self);
void QBrush_setMatrix(QBrush* self, QMatrix* mat);
QTransform* QBrush_transform(const QBrush* self);
void QBrush_setTransform(QBrush* self, QTransform* transform);
QPixmap* QBrush_texture(const QBrush* self);
void QBrush_setTexture(QBrush* self, QPixmap* pixmap);
QImage* QBrush_textureImage(const QBrush* self);
void QBrush_setTextureImage(QBrush* self, QImage* image);
QColor* QBrush_color(const QBrush* self);
void QBrush_setColor_QColor(QBrush* self, QColor* color);
void QBrush_setColor_Qt_GlobalColor(QBrush* self, int color);
QGradient* QBrush_gradient(const QBrush* self);
bool QBrush_isOpaque(const QBrush* self);
bool QBrush_operatorEqual(const QBrush* self, QBrush* b);
bool QBrush_operatorNotEqual(const QBrush* self, QBrush* b);
bool QBrush_isDetached(const QBrush* self);

void QBrush_delete(QBrush* self);

QGradient* QGradient_new();
QGradient* QGradient_new_QGradient_Preset(int param1);
QGradient* QGradient_new_QGradient(QGradient* from);

int QGradient_type(const QGradient* self);
void QGradient_setSpread(QGradient* self, int spread);
int QGradient_spread(const QGradient* self);
void QGradient_setColorAt(QGradient* self, double pos, QColor* color);
void QGradient_setStops(QGradient* self, struct seaqt_array /* of struct seaqt_map  tuple of double and QColor*   */  stops);
struct seaqt_array /* of struct seaqt_map  tuple of double and QColor*   */  QGradient_stops(const QGradient* self);
int QGradient_coordinateMode(const QGradient* self);
void QGradient_setCoordinateMode(QGradient* self, int mode);
int QGradient_interpolationMode(const QGradient* self);
void QGradient_setInterpolationMode(QGradient* self, int mode);
bool QGradient_operatorEqual(const QGradient* self, QGradient* gradient);
bool QGradient_operatorNotEqual(const QGradient* self, QGradient* other);
void QGradient_operatorAssign(QGradient* self, QGradient* from);

const QMetaObject* QGradient_staticMetaObject();
void QGradient_delete(QGradient* self);

QLinearGradient* QLinearGradient_new();
QLinearGradient* QLinearGradient_new_start_finalStop(QPointF* start, QPointF* finalStop);
QLinearGradient* QLinearGradient_new_xStart_yStart_xFinalStop_yFinalStop(double xStart, double yStart, double xFinalStop, double yFinalStop);
QLinearGradient* QLinearGradient_new_from(QLinearGradient* from);

void QLinearGradient_virtbase(QLinearGradient* src, QGradient** outptr_QGradient);
QPointF* QLinearGradient_start(const QLinearGradient* self);
void QLinearGradient_setStart_start(QLinearGradient* self, QPointF* start);
void QLinearGradient_setStart_x_y(QLinearGradient* self, double x, double y);
QPointF* QLinearGradient_finalStop(const QLinearGradient* self);
void QLinearGradient_setFinalStop_stop(QLinearGradient* self, QPointF* stop);
void QLinearGradient_setFinalStop_x_y(QLinearGradient* self, double x, double y);

void QLinearGradient_delete(QLinearGradient* self);

QRadialGradient* QRadialGradient_new();
QRadialGradient* QRadialGradient_new_center_radius_focalPoint(QPointF* center, double radius, QPointF* focalPoint);
QRadialGradient* QRadialGradient_new_cx_cy_radius_fx_fy(double cx, double cy, double radius, double fx, double fy);
QRadialGradient* QRadialGradient_new_center_radius(QPointF* center, double radius);
QRadialGradient* QRadialGradient_new_cx_cy_radius(double cx, double cy, double radius);
QRadialGradient* QRadialGradient_new_center_centerRadius_focalPoint_focalRadius(QPointF* center, double centerRadius, QPointF* focalPoint, double focalRadius);
QRadialGradient* QRadialGradient_new_cx_cy_centerRadius_fx_fy_focalRadius(double cx, double cy, double centerRadius, double fx, double fy, double focalRadius);
QRadialGradient* QRadialGradient_new_from(QRadialGradient* from);

void QRadialGradient_virtbase(QRadialGradient* src, QGradient** outptr_QGradient);
QPointF* QRadialGradient_center(const QRadialGradient* self);
void QRadialGradient_setCenter_center(QRadialGradient* self, QPointF* center);
void QRadialGradient_setCenter_x_y(QRadialGradient* self, double x, double y);
QPointF* QRadialGradient_focalPoint(const QRadialGradient* self);
void QRadialGradient_setFocalPoint_focalPoint(QRadialGradient* self, QPointF* focalPoint);
void QRadialGradient_setFocalPoint_x_y(QRadialGradient* self, double x, double y);
double QRadialGradient_radius(const QRadialGradient* self);
void QRadialGradient_setRadius(QRadialGradient* self, double radius);
double QRadialGradient_centerRadius(const QRadialGradient* self);
void QRadialGradient_setCenterRadius(QRadialGradient* self, double radius);
double QRadialGradient_focalRadius(const QRadialGradient* self);
void QRadialGradient_setFocalRadius(QRadialGradient* self, double radius);

void QRadialGradient_delete(QRadialGradient* self);

QConicalGradient* QConicalGradient_new();
QConicalGradient* QConicalGradient_new_center_startAngle(QPointF* center, double startAngle);
QConicalGradient* QConicalGradient_new_cx_cy_startAngle(double cx, double cy, double startAngle);
QConicalGradient* QConicalGradient_new_from(QConicalGradient* from);

void QConicalGradient_virtbase(QConicalGradient* src, QGradient** outptr_QGradient);
QPointF* QConicalGradient_center(const QConicalGradient* self);
void QConicalGradient_setCenter_center(QConicalGradient* self, QPointF* center);
void QConicalGradient_setCenter_x_y(QConicalGradient* self, double x, double y);
double QConicalGradient_angle(const QConicalGradient* self);
void QConicalGradient_setAngle(QConicalGradient* self, double angle);

void QConicalGradient_delete(QConicalGradient* self);

QGradient__QGradientData* QGradient__QGradientData_new(QGradient__QGradientData* from);

void QGradient__QGradientData_operatorAssign(QGradient__QGradientData* self, QGradient__QGradientData* from);

void QGradient__QGradientData_delete(QGradient__QGradientData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
