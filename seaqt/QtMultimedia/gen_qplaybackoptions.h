#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QPLAYBACKOPTIONS_H
#define SEAQT_QTMULTIMEDIA_GEN_QPLAYBACKOPTIONS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QPlaybackOptions;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QPlaybackOptions QPlaybackOptions;
#endif

QPlaybackOptions* QPlaybackOptions_new();
QPlaybackOptions* QPlaybackOptions_new_from(QPlaybackOptions* from);

void QPlaybackOptions_operatorAssign(QPlaybackOptions* self, QPlaybackOptions* from);
void QPlaybackOptions_swap(QPlaybackOptions* self, QPlaybackOptions* other);
void QPlaybackOptions_resetNetworkTimeout(QPlaybackOptions* self);
int QPlaybackOptions_playbackIntent(const QPlaybackOptions* self);
void QPlaybackOptions_setPlaybackIntent(QPlaybackOptions* self, int intent);
void QPlaybackOptions_resetPlaybackIntent(QPlaybackOptions* self);
ptrdiff_t QPlaybackOptions_probeSize(const QPlaybackOptions* self);
void QPlaybackOptions_setProbeSize(QPlaybackOptions* self, ptrdiff_t probeSizeBytes);
void QPlaybackOptions_resetProbeSize(QPlaybackOptions* self);

const QMetaObject* QPlaybackOptions_staticMetaObject();
void QPlaybackOptions_delete(QPlaybackOptions* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
