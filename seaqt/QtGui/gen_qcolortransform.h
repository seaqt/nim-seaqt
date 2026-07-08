#pragma once
#ifndef SEAQT_QTGUI_GEN_QCOLORTRANSFORM_H
#define SEAQT_QTGUI_GEN_QCOLORTRANSFORM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QColorTransform;
class QRgba64;
#else
typedef struct QColor QColor;
typedef struct QColorTransform QColorTransform;
typedef struct QRgba64 QRgba64;
#endif

QColorTransform* QColorTransform_new();
QColorTransform* QColorTransform_new_from(QColorTransform* from);

void QColorTransform_operatorAssign(QColorTransform* self, QColorTransform* from);
void QColorTransform_swap(QColorTransform* self, QColorTransform* other);
unsigned int QColorTransform_map_argb(const QColorTransform* self, unsigned int argb);
QRgba64* QColorTransform_map_rgba64(const QColorTransform* self, QRgba64* rgba64);
QColor* QColorTransform_map_color(const QColorTransform* self, QColor* color);

void QColorTransform_delete(QColorTransform* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
