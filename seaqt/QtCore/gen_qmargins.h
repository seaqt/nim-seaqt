#pragma once
#ifndef SEAQT_QTCORE_GEN_QMARGINS_H
#define SEAQT_QTCORE_GEN_QMARGINS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMargins;
class QMarginsF;
#else
typedef struct QMargins QMargins;
typedef struct QMarginsF QMarginsF;
#endif

QMargins* QMargins_new();
QMargins* QMargins_new_left_top_right_bottom(int left, int top, int right, int bottom);
QMargins* QMargins_new_from(QMargins* from);

bool QMargins_isNull(const QMargins* self);
int QMargins_left(const QMargins* self);
int QMargins_top(const QMargins* self);
int QMargins_right(const QMargins* self);
int QMargins_bottom(const QMargins* self);
void QMargins_setLeft(QMargins* self, int left);
void QMargins_setTop(QMargins* self, int top);
void QMargins_setRight(QMargins* self, int right);
void QMargins_setBottom(QMargins* self, int bottom);
QMargins* QMargins_operatorPlusAssign_QMargins(QMargins* self, QMargins* margins);
QMargins* QMargins_operatorMinusAssign_QMargins(QMargins* self, QMargins* margins);
QMargins* QMargins_operatorPlusAssign_int(QMargins* self, int param1);
QMargins* QMargins_operatorMinusAssign_int(QMargins* self, int param1);
QMargins* QMargins_operatorMultiplyAssign_int(QMargins* self, int param1);
QMargins* QMargins_operatorDivideAssign_int(QMargins* self, int param1);
QMargins* QMargins_operatorMultiplyAssign_qreal(QMargins* self, double param1);
QMargins* QMargins_operatorDivideAssign_qreal(QMargins* self, double param1);
void QMargins_operatorAssign(QMargins* self, QMargins* from);

void QMargins_delete(QMargins* self);

QMarginsF* QMarginsF_new();
QMarginsF* QMarginsF_new_left_top_right_bottom(double left, double top, double right, double bottom);
QMarginsF* QMarginsF_new_margins(QMargins* margins);
QMarginsF* QMarginsF_new_from(QMarginsF* from);

bool QMarginsF_isNull(const QMarginsF* self);
double QMarginsF_left(const QMarginsF* self);
double QMarginsF_top(const QMarginsF* self);
double QMarginsF_right(const QMarginsF* self);
double QMarginsF_bottom(const QMarginsF* self);
void QMarginsF_setLeft(QMarginsF* self, double left);
void QMarginsF_setTop(QMarginsF* self, double top);
void QMarginsF_setRight(QMarginsF* self, double right);
void QMarginsF_setBottom(QMarginsF* self, double bottom);
QMarginsF* QMarginsF_operatorPlusAssign_margins(QMarginsF* self, QMarginsF* margins);
QMarginsF* QMarginsF_operatorMinusAssign_margins(QMarginsF* self, QMarginsF* margins);
QMarginsF* QMarginsF_operatorPlusAssign_addend(QMarginsF* self, double addend);
QMarginsF* QMarginsF_operatorMinusAssign_subtrahend(QMarginsF* self, double subtrahend);
QMarginsF* QMarginsF_operatorMultiplyAssign(QMarginsF* self, double factor);
QMarginsF* QMarginsF_operatorDivideAssign(QMarginsF* self, double divisor);
QMargins* QMarginsF_toMargins(const QMarginsF* self);
void QMarginsF_operatorAssign(QMarginsF* self, QMarginsF* from);

void QMarginsF_delete(QMarginsF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
