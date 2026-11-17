#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAGESIZE_H
#define SEAQT_QTGUI_GEN_QPAGESIZE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPageSize;
class QRect;
class QRectF;
class QSize;
class QSizeF;
#else
typedef struct QPageSize QPageSize;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
#endif

QPageSize* QPageSize_new();
QPageSize* QPageSize_new_pageSizeId(int pageSizeId);
QPageSize* QPageSize_new_pointSize(QSize* pointSize);
QPageSize* QPageSize_new_size_units(QSizeF* size, int units);
QPageSize* QPageSize_new_from(QPageSize* from);
QPageSize* QPageSize_new_pointSize_name(QSize* pointSize, struct seaqt_string name);
QPageSize* QPageSize_new_pointSize_name_matchPolicy(QSize* pointSize, struct seaqt_string name, int matchPolicy);
QPageSize* QPageSize_new_size_units_name(QSizeF* size, int units, struct seaqt_string name);
QPageSize* QPageSize_new_size_units_name_matchPolicy(QSizeF* size, int units, struct seaqt_string name, int matchPolicy);

void QPageSize_operatorAssign(QPageSize* self, QPageSize* from);
void QPageSize_swap(QPageSize* self, QPageSize* other);
bool QPageSize_isEquivalentTo(const QPageSize* self, QPageSize* other);
bool QPageSize_isValid(const QPageSize* self);
struct seaqt_string QPageSize_key(const QPageSize* self);
struct seaqt_string QPageSize_name(const QPageSize* self);
int QPageSize_id(const QPageSize* self);
int QPageSize_windowsId(const QPageSize* self);
QSizeF* QPageSize_definitionSize(const QPageSize* self);
int QPageSize_definitionUnits(const QPageSize* self);
QSizeF* QPageSize_size_units(const QPageSize* self, int units);
QSize* QPageSize_sizePoints(const QPageSize* self);
QSize* QPageSize_sizePixels_resolution(const QPageSize* self, int resolution);
QRectF* QPageSize_rect(const QPageSize* self, int units);
QRect* QPageSize_rectPoints(const QPageSize* self);
QRect* QPageSize_rectPixels(const QPageSize* self, int resolution);
struct seaqt_string QPageSize_key_pageSizeId(int pageSizeId);
struct seaqt_string QPageSize_name_pageSizeId(int pageSizeId);
int QPageSize_id_pointSize(QSize* pointSize);
int QPageSize_id_size_units(QSizeF* size, int units);
int QPageSize_id_windowsId(int windowsId);
int QPageSize_windowsId_pageSizeId(int pageSizeId);
QSizeF* QPageSize_definitionSize_pageSizeId(int pageSizeId);
int QPageSize_definitionUnits_pageSizeId(int pageSizeId);
QSizeF* QPageSize_size_pageSizeId_units(int pageSizeId, int units);
QSize* QPageSize_sizePoints_pageSizeId(int pageSizeId);
QSize* QPageSize_sizePixels_pageSizeId_resolution(int pageSizeId, int resolution);
int QPageSize_id_pointSize_matchPolicy(QSize* pointSize, int matchPolicy);
int QPageSize_id_size_units_matchPolicy(QSizeF* size, int units, int matchPolicy);

void QPageSize_delete(QPageSize* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
