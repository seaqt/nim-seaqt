#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIABINDABLEINTERFACE_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIABINDABLEINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaBindableInterface;
class QMediaObject;
#else
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
#endif

QMediaObject* QMediaBindableInterface_mediaObject(const QMediaBindableInterface* self);
bool QMediaBindableInterface_setMediaObject(QMediaBindableInterface* self, QMediaObject* object);

void QMediaBindableInterface_delete(QMediaBindableInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
