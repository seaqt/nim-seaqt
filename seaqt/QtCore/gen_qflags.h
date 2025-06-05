#pragma once
#ifndef SEAQT_QTCORE_GEN_QFLAGS_H
#define SEAQT_QTCORE_GEN_QFLAGS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFlag;
class QIncompatibleFlag;
#else
typedef struct QFlag QFlag;
typedef struct QIncompatibleFlag QIncompatibleFlag;
#endif

QFlag* QFlag_new(int value);
QFlag* QFlag_new2(unsigned int value);
QFlag* QFlag_new3(short value);
QFlag* QFlag_new4(unsigned short value);

int QFlag_ToInt(const QFlag* self);
unsigned int QFlag_ToUnsignedInt(const QFlag* self);

void QFlag_delete(QFlag* self);

QIncompatibleFlag* QIncompatibleFlag_new(int i);
QIncompatibleFlag* QIncompatibleFlag_new2(QIncompatibleFlag* param1);

int QIncompatibleFlag_ToInt(const QIncompatibleFlag* self);

void QIncompatibleFlag_delete(QIncompatibleFlag* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
