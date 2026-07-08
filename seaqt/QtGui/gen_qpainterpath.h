#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAINTERPATH_H
#define SEAQT_QTGUI_GEN_QPAINTERPATH_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFont;
class QPainterPath;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPainterPath__Element)
typedef QPainterPath::Element QPainterPath__Element;
#else
class QPainterPath__Element;
#endif
class QPainterPathStroker;
class QPen;
class QPointF;
class QRectF;
class QRegion;
#else
typedef struct QFont QFont;
typedef struct QPainterPath QPainterPath;
typedef struct QPainterPath__Element QPainterPath__Element;
typedef struct QPainterPathStroker QPainterPathStroker;
typedef struct QPen QPen;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
#endif

QPainterPath* QPainterPath_new();
QPainterPath* QPainterPath_new_startPoint(QPointF* startPoint);
QPainterPath* QPainterPath_new_from(QPainterPath* from);

void QPainterPath_operatorAssign(QPainterPath* self, QPainterPath* from);
void QPainterPath_swap(QPainterPath* self, QPainterPath* other);
void QPainterPath_clear(QPainterPath* self);
void QPainterPath_reserve(QPainterPath* self, int size);
int QPainterPath_capacity(const QPainterPath* self);
void QPainterPath_closeSubpath(QPainterPath* self);
void QPainterPath_moveTo_p(QPainterPath* self, QPointF* p);
void QPainterPath_moveTo_x_y(QPainterPath* self, double x, double y);
void QPainterPath_lineTo_p(QPainterPath* self, QPointF* p);
void QPainterPath_lineTo_x_y(QPainterPath* self, double x, double y);
void QPainterPath_arcMoveTo_rect_angle(QPainterPath* self, QRectF* rect, double angle);
void QPainterPath_arcMoveTo_x_y_w_h_angle(QPainterPath* self, double x, double y, double w, double h, double angle);
void QPainterPath_arcTo_rect_startAngle_arcLength(QPainterPath* self, QRectF* rect, double startAngle, double arcLength);
void QPainterPath_arcTo_x_y_w_h_startAngle_arcLength(QPainterPath* self, double x, double y, double w, double h, double startAngle, double arcLength);
void QPainterPath_cubicTo_ctrlPt1_ctrlPt2_endPt(QPainterPath* self, QPointF* ctrlPt1, QPointF* ctrlPt2, QPointF* endPt);
void QPainterPath_cubicTo_ctrlPt1x_ctrlPt1y_ctrlPt2x_ctrlPt2y_endPtx_endPty(QPainterPath* self, double ctrlPt1x, double ctrlPt1y, double ctrlPt2x, double ctrlPt2y, double endPtx, double endPty);
void QPainterPath_quadTo_ctrlPt_endPt(QPainterPath* self, QPointF* ctrlPt, QPointF* endPt);
void QPainterPath_quadTo_ctrlPtx_ctrlPty_endPtx_endPty(QPainterPath* self, double ctrlPtx, double ctrlPty, double endPtx, double endPty);
QPointF* QPainterPath_currentPosition(const QPainterPath* self);
void QPainterPath_addRect_rect(QPainterPath* self, QRectF* rect);
void QPainterPath_addRect_x_y_w_h(QPainterPath* self, double x, double y, double w, double h);
void QPainterPath_addEllipse_rect(QPainterPath* self, QRectF* rect);
void QPainterPath_addEllipse_x_y_w_h(QPainterPath* self, double x, double y, double w, double h);
void QPainterPath_addEllipse_center_rx_ry(QPainterPath* self, QPointF* center, double rx, double ry);
void QPainterPath_addText_point_f_text(QPainterPath* self, QPointF* point, QFont* f, struct seaqt_string text);
void QPainterPath_addText_x_y_f_text(QPainterPath* self, double x, double y, QFont* f, struct seaqt_string text);
void QPainterPath_addPath(QPainterPath* self, QPainterPath* path);
void QPainterPath_addRegion(QPainterPath* self, QRegion* region);
void QPainterPath_addRoundedRect_rect_xRadius_yRadius(QPainterPath* self, QRectF* rect, double xRadius, double yRadius);
void QPainterPath_addRoundedRect_x_y_w_h_xRadius_yRadius(QPainterPath* self, double x, double y, double w, double h, double xRadius, double yRadius);
void QPainterPath_connectPath(QPainterPath* self, QPainterPath* path);
bool QPainterPath_contains_pt(const QPainterPath* self, QPointF* pt);
bool QPainterPath_contains_rect(const QPainterPath* self, QRectF* rect);
bool QPainterPath_intersects_rect(const QPainterPath* self, QRectF* rect);
void QPainterPath_translate_dx_dy(QPainterPath* self, double dx, double dy);
void QPainterPath_translate_offset(QPainterPath* self, QPointF* offset);
QPainterPath* QPainterPath_translated_dx_dy(const QPainterPath* self, double dx, double dy);
QPainterPath* QPainterPath_translated_offset(const QPainterPath* self, QPointF* offset);
QRectF* QPainterPath_boundingRect(const QPainterPath* self);
QRectF* QPainterPath_controlPointRect(const QPainterPath* self);
int QPainterPath_fillRule(const QPainterPath* self);
void QPainterPath_setFillRule(QPainterPath* self, int fillRule);
bool QPainterPath_isEmpty(const QPainterPath* self);
QPainterPath* QPainterPath_toReversed(const QPainterPath* self);
int QPainterPath_elementCount(const QPainterPath* self);
QPainterPath__Element* QPainterPath_elementAt(const QPainterPath* self, int i);
void QPainterPath_setElementPositionAt(QPainterPath* self, int i, double x, double y);
bool QPainterPath_isCachingEnabled(const QPainterPath* self);
void QPainterPath_setCachingEnabled(QPainterPath* self, bool enabled);
double QPainterPath_length(const QPainterPath* self);
double QPainterPath_percentAtLength(const QPainterPath* self, double len);
QPointF* QPainterPath_pointAtPercent(const QPainterPath* self, double t);
double QPainterPath_angleAtPercent(const QPainterPath* self, double t);
double QPainterPath_slopeAtPercent(const QPainterPath* self, double t);
QPainterPath* QPainterPath_trimmed_fromFraction_toFraction(const QPainterPath* self, double fromFraction, double toFraction);
bool QPainterPath_intersects_p(const QPainterPath* self, QPainterPath* p);
bool QPainterPath_contains_p(const QPainterPath* self, QPainterPath* p);
QPainterPath* QPainterPath_united(const QPainterPath* self, QPainterPath* r);
QPainterPath* QPainterPath_intersected(const QPainterPath* self, QPainterPath* r);
QPainterPath* QPainterPath_subtracted(const QPainterPath* self, QPainterPath* r);
QPainterPath* QPainterPath_simplified(const QPainterPath* self);
bool QPainterPath_operatorEqual(const QPainterPath* self, QPainterPath* other);
bool QPainterPath_operatorNotEqual(const QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorBitwiseAnd(const QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorBitwiseOr(const QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorPlus(const QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorMinus(const QPainterPath* self, QPainterPath* other);
void QPainterPath_operatorBitwiseAndAssign(QPainterPath* self, QPainterPath* other);
void QPainterPath_operatorBitwiseOrAssign(QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorPlusAssign(QPainterPath* self, QPainterPath* other);
QPainterPath* QPainterPath_operatorMinusAssign(QPainterPath* self, QPainterPath* other);
void QPainterPath_addRoundedRect_rect_xRadius_yRadius_mode(QPainterPath* self, QRectF* rect, double xRadius, double yRadius, int mode);
void QPainterPath_addRoundedRect_x_y_w_h_xRadius_yRadius_mode(QPainterPath* self, double x, double y, double w, double h, double xRadius, double yRadius, int mode);
QPainterPath* QPainterPath_trimmed_fromFraction_toFraction_offset(const QPainterPath* self, double fromFraction, double toFraction, double offset);

void QPainterPath_delete(QPainterPath* self);

QPainterPathStroker* QPainterPathStroker_new();
QPainterPathStroker* QPainterPathStroker_new_pen(QPen* pen);

void QPainterPathStroker_setWidth(QPainterPathStroker* self, double width);
double QPainterPathStroker_width(const QPainterPathStroker* self);
void QPainterPathStroker_setCapStyle(QPainterPathStroker* self, int style);
int QPainterPathStroker_capStyle(const QPainterPathStroker* self);
void QPainterPathStroker_setJoinStyle(QPainterPathStroker* self, int style);
int QPainterPathStroker_joinStyle(const QPainterPathStroker* self);
void QPainterPathStroker_setMiterLimit(QPainterPathStroker* self, double length);
double QPainterPathStroker_miterLimit(const QPainterPathStroker* self);
void QPainterPathStroker_setCurveThreshold(QPainterPathStroker* self, double threshold);
double QPainterPathStroker_curveThreshold(const QPainterPathStroker* self);
void QPainterPathStroker_setDashPattern_Qt_PenStyle(QPainterPathStroker* self, int dashPattern);
void QPainterPathStroker_setDashPattern_QListOfqreal(QPainterPathStroker* self, struct seaqt_array /* of double */  dashPattern);
struct seaqt_array /* of double */  QPainterPathStroker_dashPattern(const QPainterPathStroker* self);
void QPainterPathStroker_setDashOffset(QPainterPathStroker* self, double offset);
double QPainterPathStroker_dashOffset(const QPainterPathStroker* self);
QPainterPath* QPainterPathStroker_createStroke(const QPainterPathStroker* self, QPainterPath* path);

void QPainterPathStroker_delete(QPainterPathStroker* self);

QPainterPath__Element* QPainterPath__Element_new();
QPainterPath__Element* QPainterPath__Element_new_from(QPainterPath__Element* from);

double QPainterPath__Element_x(const QPainterPath__Element* self);
void QPainterPath__Element_setX(QPainterPath__Element* self, double x);
double QPainterPath__Element_y(const QPainterPath__Element* self);
void QPainterPath__Element_setY(QPainterPath__Element* self, double y);
int QPainterPath__Element_type(const QPainterPath__Element* self);
void QPainterPath__Element_setType(QPainterPath__Element* self, int type);
bool QPainterPath__Element_isMoveTo(const QPainterPath__Element* self);
bool QPainterPath__Element_isLineTo(const QPainterPath__Element* self);
bool QPainterPath__Element_isCurveTo(const QPainterPath__Element* self);
QPointF* QPainterPath__Element_ToQPointF(const QPainterPath__Element* self);
bool QPainterPath__Element_operatorEqual(const QPainterPath__Element* self, QPainterPath__Element* e);
bool QPainterPath__Element_operatorNotEqual(const QPainterPath__Element* self, QPainterPath__Element* e);

void QPainterPath__Element_delete(QPainterPath__Element* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
