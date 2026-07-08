#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAGELAYOUT_H
#define SEAQT_QTGUI_GEN_QPAGELAYOUT_H

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
class QPageLayout;
class QPageSize;
class QRect;
class QRectF;
#else
typedef struct QMargins QMargins;
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageSize QPageSize;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
#endif

QPageLayout* QPageLayout_new();
QPageLayout* QPageLayout_new_pageSize_orientation_margins(QPageSize* pageSize, int orientation, QMarginsF* margins);
QPageLayout* QPageLayout_new_from(QPageLayout* from);
QPageLayout* QPageLayout_new_pageSize_orientation_margins_units(QPageSize* pageSize, int orientation, QMarginsF* margins, int units);
QPageLayout* QPageLayout_new_pageSize_orientation_margins_units_minMargins(QPageSize* pageSize, int orientation, QMarginsF* margins, int units, QMarginsF* minMargins);

void QPageLayout_operatorAssign(QPageLayout* self, QPageLayout* from);
void QPageLayout_swap(QPageLayout* self, QPageLayout* other);
bool QPageLayout_isEquivalentTo(const QPageLayout* self, QPageLayout* other);
bool QPageLayout_isValid(const QPageLayout* self);
void QPageLayout_setMode(QPageLayout* self, int mode);
int QPageLayout_mode(const QPageLayout* self);
void QPageLayout_setPageSize_pageSize(QPageLayout* self, QPageSize* pageSize);
QPageSize* QPageLayout_pageSize(const QPageLayout* self);
void QPageLayout_setOrientation(QPageLayout* self, int orientation);
int QPageLayout_orientation(const QPageLayout* self);
void QPageLayout_setUnits(QPageLayout* self, int units);
int QPageLayout_units(const QPageLayout* self);
bool QPageLayout_setMargins_margins(QPageLayout* self, QMarginsF* margins);
bool QPageLayout_setLeftMargin_leftMargin(QPageLayout* self, double leftMargin);
bool QPageLayout_setRightMargin_rightMargin(QPageLayout* self, double rightMargin);
bool QPageLayout_setTopMargin_topMargin(QPageLayout* self, double topMargin);
bool QPageLayout_setBottomMargin_bottomMargin(QPageLayout* self, double bottomMargin);
QMarginsF* QPageLayout_margins(const QPageLayout* self);
QMarginsF* QPageLayout_margins_units(const QPageLayout* self, int units);
QMargins* QPageLayout_marginsPoints(const QPageLayout* self);
QMargins* QPageLayout_marginsPixels(const QPageLayout* self, int resolution);
void QPageLayout_setMinimumMargins(QPageLayout* self, QMarginsF* minMargins);
QMarginsF* QPageLayout_minimumMargins(const QPageLayout* self);
QMarginsF* QPageLayout_maximumMargins(const QPageLayout* self);
QRectF* QPageLayout_fullRect(const QPageLayout* self);
QRectF* QPageLayout_fullRect_units(const QPageLayout* self, int units);
QRect* QPageLayout_fullRectPoints(const QPageLayout* self);
QRect* QPageLayout_fullRectPixels(const QPageLayout* self, int resolution);
QRectF* QPageLayout_paintRect(const QPageLayout* self);
QRectF* QPageLayout_paintRect_units(const QPageLayout* self, int units);
QRect* QPageLayout_paintRectPoints(const QPageLayout* self);
QRect* QPageLayout_paintRectPixels(const QPageLayout* self, int resolution);
void QPageLayout_setPageSize_pageSize_minMargins(QPageLayout* self, QPageSize* pageSize, QMarginsF* minMargins);
bool QPageLayout_setMargins_margins_outOfBoundsPolicy(QPageLayout* self, QMarginsF* margins, int outOfBoundsPolicy);
bool QPageLayout_setLeftMargin_leftMargin_outOfBoundsPolicy(QPageLayout* self, double leftMargin, int outOfBoundsPolicy);
bool QPageLayout_setRightMargin_rightMargin_outOfBoundsPolicy(QPageLayout* self, double rightMargin, int outOfBoundsPolicy);
bool QPageLayout_setTopMargin_topMargin_outOfBoundsPolicy(QPageLayout* self, double topMargin, int outOfBoundsPolicy);
bool QPageLayout_setBottomMargin_bottomMargin_outOfBoundsPolicy(QPageLayout* self, double bottomMargin, int outOfBoundsPolicy);

void QPageLayout_delete(QPageLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
