#pragma once
#ifndef SEAQT_QTCORE_GEN_QDEADLINETIMER_H
#define SEAQT_QTCORE_GEN_QDEADLINETIMER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDeadlineTimer;
#else
typedef struct QDeadlineTimer QDeadlineTimer;
#endif

QDeadlineTimer* QDeadlineTimer_new();
QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer_ForeverConstant(int param1);
QDeadlineTimer* QDeadlineTimer_new_qint64(long long msecs);
QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer(QDeadlineTimer* from);
QDeadlineTimer* QDeadlineTimer_new_Qt_TimerType(int type_);
QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer_ForeverConstant_Qt_TimerType(int param1, int type_);
QDeadlineTimer* QDeadlineTimer_new_qint64_Qt_TimerType(long long msecs, int type);

void QDeadlineTimer_swap(QDeadlineTimer* self, QDeadlineTimer* other);
bool QDeadlineTimer_isForever(const QDeadlineTimer* self);
bool QDeadlineTimer_hasExpired(const QDeadlineTimer* self);
int QDeadlineTimer_timerType(const QDeadlineTimer* self);
void QDeadlineTimer_setTimerType(QDeadlineTimer* self, int type);
long long QDeadlineTimer_remainingTime(const QDeadlineTimer* self);
long long QDeadlineTimer_remainingTimeNSecs(const QDeadlineTimer* self);
void QDeadlineTimer_setRemainingTime_msecs(QDeadlineTimer* self, long long msecs);
void QDeadlineTimer_setPreciseRemainingTime_secs(QDeadlineTimer* self, long long secs);
long long QDeadlineTimer_deadline(const QDeadlineTimer* self);
long long QDeadlineTimer_deadlineNSecs(const QDeadlineTimer* self);
void QDeadlineTimer_setDeadline_msecs(QDeadlineTimer* self, long long msecs);
void QDeadlineTimer_setPreciseDeadline_secs(QDeadlineTimer* self, long long secs);
QDeadlineTimer* QDeadlineTimer_addNSecs(QDeadlineTimer* dt, long long nsecs);
QDeadlineTimer* QDeadlineTimer_current();
QDeadlineTimer* QDeadlineTimer_operatorPlusAssign(QDeadlineTimer* self, long long msecs);
QDeadlineTimer* QDeadlineTimer_operatorMinusAssign(QDeadlineTimer* self, long long msecs);
void QDeadlineTimer_operatorAssign(QDeadlineTimer* self, QDeadlineTimer* from);
void QDeadlineTimer_setRemainingTime_msecs_type(QDeadlineTimer* self, long long msecs, int type);
void QDeadlineTimer_setPreciseRemainingTime_secs_nsecs(QDeadlineTimer* self, long long secs, long long nsecs);
void QDeadlineTimer_setPreciseRemainingTime_secs_nsecs_type(QDeadlineTimer* self, long long secs, long long nsecs, int type);
void QDeadlineTimer_setDeadline_msecs_timerType(QDeadlineTimer* self, long long msecs, int timerType);
void QDeadlineTimer_setPreciseDeadline_secs_nsecs(QDeadlineTimer* self, long long secs, long long nsecs);
void QDeadlineTimer_setPreciseDeadline_secs_nsecs_type(QDeadlineTimer* self, long long secs, long long nsecs, int type);
QDeadlineTimer* QDeadlineTimer_current_timerType(int timerType);

void QDeadlineTimer_delete(QDeadlineTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
