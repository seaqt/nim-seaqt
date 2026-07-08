#pragma once
#ifndef SEAQT_QTGUI_GEN_QREGION_H
#define SEAQT_QTGUI_GEN_QREGION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBitmap;
class QPoint;
class QRect;
class QRegion;
class QVariant;
#else
typedef struct QBitmap QBitmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QVariant QVariant;
#endif

QRegion* QRegion_new();
QRegion* QRegion_new_x_y_w_h(int x, int y, int w, int h);
QRegion* QRegion_new_r(QRect* r);
QRegion* QRegion_new_from(QRegion* from);
QRegion* QRegion_new_bitmap(QBitmap* bitmap);
QRegion* QRegion_new_x_y_w_h_t(int x, int y, int w, int h, int t);
QRegion* QRegion_new_r_t(QRect* r, int t);

void QRegion_operatorAssign(QRegion* self, QRegion* from);
void QRegion_swap(QRegion* self, QRegion* other);
bool QRegion_isEmpty(const QRegion* self);
bool QRegion_isNull(const QRegion* self);
QRect* QRegion_begin(const QRegion* self);
QRect* QRegion_cbegin(const QRegion* self);
QRect* QRegion_end(const QRegion* self);
QRect* QRegion_cend(const QRegion* self);
bool QRegion_contains_p(const QRegion* self, QPoint* p);
bool QRegion_contains_r(const QRegion* self, QRect* r);
void QRegion_translate_dx_dy(QRegion* self, int dx, int dy);
void QRegion_translate_p(QRegion* self, QPoint* p);
QRegion* QRegion_translated_dx_dy(const QRegion* self, int dx, int dy);
QRegion* QRegion_translated_p(const QRegion* self, QPoint* p);
QRegion* QRegion_united_QRegion(const QRegion* self, QRegion* r);
QRegion* QRegion_united_QRect(const QRegion* self, QRect* r);
QRegion* QRegion_intersected_QRegion(const QRegion* self, QRegion* r);
QRegion* QRegion_intersected_QRect(const QRegion* self, QRect* r);
QRegion* QRegion_subtracted(const QRegion* self, QRegion* r);
QRegion* QRegion_xored(const QRegion* self, QRegion* r);
bool QRegion_intersects_QRegion(const QRegion* self, QRegion* r);
bool QRegion_intersects_QRect(const QRegion* self, QRect* r);
QRect* QRegion_boundingRect(const QRegion* self);
struct seaqt_array /* of QRect* */  QRegion_rects(const QRegion* self);
void QRegion_setRects(QRegion* self, QRect* rect, int num);
int QRegion_rectCount(const QRegion* self);
QRegion* QRegion_operatorBitwiseOr(const QRegion* self, QRegion* r);
QRegion* QRegion_operatorPlus_QRegion(const QRegion* self, QRegion* r);
QRegion* QRegion_operatorPlus_QRect(const QRegion* self, QRect* r);
QRegion* QRegion_operatorBitwiseAnd_QRegion(const QRegion* self, QRegion* r);
QRegion* QRegion_operatorBitwiseAnd_QRect(const QRegion* self, QRect* r);
QRegion* QRegion_operatorMinus(const QRegion* self, QRegion* r);
QRegion* QRegion_operatorBitwiseNot(const QRegion* self, QRegion* r);
void QRegion_operatorBitwiseOrAssign(QRegion* self, QRegion* r);
QRegion* QRegion_operatorPlusAssign_QRegion(QRegion* self, QRegion* r);
QRegion* QRegion_operatorPlusAssign_QRect(QRegion* self, QRect* r);
void QRegion_operatorBitwiseAndAssign_QRegion(QRegion* self, QRegion* r);
void QRegion_operatorBitwiseAndAssign_QRect(QRegion* self, QRect* r);
QRegion* QRegion_operatorMinusAssign(QRegion* self, QRegion* r);
void QRegion_operatorBitwiseNotAssign(QRegion* self, QRegion* r);
bool QRegion_operatorEqual(const QRegion* self, QRegion* r);
bool QRegion_operatorNotEqual(const QRegion* self, QRegion* r);
QVariant* QRegion_ToQVariant(const QRegion* self);

void QRegion_delete(QRegion* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
