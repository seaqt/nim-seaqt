#pragma once
#ifndef SEAQT_QTGUI_GEN_QSURFACE_H
#define SEAQT_QTGUI_GEN_QSURFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSize;
class QSurface;
class QSurfaceFormat;
#else
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
#endif

int QSurface_surfaceClass(const QSurface* self);
QSurfaceFormat* QSurface_format(const QSurface* self);
int QSurface_surfaceType(const QSurface* self);
bool QSurface_supportsOpenGL(const QSurface* self);
QSize* QSurface_size(const QSurface* self);
const QMetaObject* QSurface_staticMetaObject();
void QSurface_delete(QSurface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
