#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H
#define SEAQT_QTMULTIMEDIA_GEN_QABSTRACTVIDEOBUFFER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoBuffer;
class QVideoFrameFormat;
#else
typedef struct QAbstractVideoBuffer QAbstractVideoBuffer;
typedef struct QVideoFrameFormat QVideoFrameFormat;
#endif

void QAbstractVideoBuffer_unmap(QAbstractVideoBuffer* self);
QVideoFrameFormat* QAbstractVideoBuffer_format(const QAbstractVideoBuffer* self);

void QAbstractVideoBuffer_delete(QAbstractVideoBuffer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
