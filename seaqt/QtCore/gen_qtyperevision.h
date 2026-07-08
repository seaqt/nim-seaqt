#pragma once
#ifndef SEAQT_QTCORE_GEN_QTYPEREVISION_H
#define SEAQT_QTCORE_GEN_QTYPEREVISION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QTypeRevision;
#else
typedef struct QTypeRevision QTypeRevision;
#endif

QTypeRevision* QTypeRevision_new();
QTypeRevision* QTypeRevision_new_from(QTypeRevision* from);

QTypeRevision* QTypeRevision_zero();
bool QTypeRevision_hasMajorVersion(const QTypeRevision* self);
unsigned char QTypeRevision_majorVersion(const QTypeRevision* self);
bool QTypeRevision_hasMinorVersion(const QTypeRevision* self);
unsigned char QTypeRevision_minorVersion(const QTypeRevision* self);
bool QTypeRevision_isValid(const QTypeRevision* self);

void QTypeRevision_delete(QTypeRevision* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
