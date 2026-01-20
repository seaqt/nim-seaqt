#pragma once
#ifndef SEAQT_QTCORE_GEN_QBASICTIMER_H
#define SEAQT_QTCORE_GEN_QBASICTIMER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBasicTimer;
class QObject;
#else
typedef struct QBasicTimer QBasicTimer;
typedef struct QObject QObject;
#endif

QBasicTimer* QBasicTimer_new_QBasicTimer(QBasicTimer* param1);
QBasicTimer* QBasicTimer_new();

void QBasicTimer_operatorAssign(QBasicTimer* self, QBasicTimer* param1);
void QBasicTimer_swap(QBasicTimer* self, QBasicTimer* other);
bool QBasicTimer_isActive(const QBasicTimer* self);
int QBasicTimer_timerId(const QBasicTimer* self);
void QBasicTimer_start_msec_obj(QBasicTimer* self, int msec, QObject* obj);
void QBasicTimer_start_msec_timerType_obj(QBasicTimer* self, int msec, int timerType, QObject* obj);
void QBasicTimer_stop(QBasicTimer* self);

void QBasicTimer_delete(QBasicTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
