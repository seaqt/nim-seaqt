#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIATIMERANGE_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIATIMERANGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaTimeInterval;
class QMediaTimeRange;
#else
typedef struct QMediaTimeInterval QMediaTimeInterval;
typedef struct QMediaTimeRange QMediaTimeRange;
#endif

QMediaTimeInterval* QMediaTimeInterval_new();
QMediaTimeInterval* QMediaTimeInterval_new_start_end(long long start, long long end);
QMediaTimeInterval* QMediaTimeInterval_new_from(QMediaTimeInterval* from);

void QMediaTimeInterval_operatorAssign(QMediaTimeInterval* self, QMediaTimeInterval* from);
long long QMediaTimeInterval_start(const QMediaTimeInterval* self);
long long QMediaTimeInterval_end(const QMediaTimeInterval* self);
bool QMediaTimeInterval_contains(const QMediaTimeInterval* self, long long time);
bool QMediaTimeInterval_isNormal(const QMediaTimeInterval* self);
QMediaTimeInterval* QMediaTimeInterval_normalized(const QMediaTimeInterval* self);
QMediaTimeInterval* QMediaTimeInterval_translated(const QMediaTimeInterval* self, long long offset);

void QMediaTimeInterval_delete(QMediaTimeInterval* self);

QMediaTimeRange* QMediaTimeRange_new();
QMediaTimeRange* QMediaTimeRange_new_qint64_qint64(long long start, long long end);
QMediaTimeRange* QMediaTimeRange_new_QMediaTimeInterval(QMediaTimeInterval* param1);
QMediaTimeRange* QMediaTimeRange_new_QMediaTimeRange(QMediaTimeRange* from);

void QMediaTimeRange_operatorAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* from);
void QMediaTimeRange_operatorAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1);
long long QMediaTimeRange_earliestTime(const QMediaTimeRange* self);
long long QMediaTimeRange_latestTime(const QMediaTimeRange* self);
struct seaqt_array /* of QMediaTimeInterval* */  QMediaTimeRange_intervals(const QMediaTimeRange* self);
bool QMediaTimeRange_isEmpty(const QMediaTimeRange* self);
bool QMediaTimeRange_isContinuous(const QMediaTimeRange* self);
bool QMediaTimeRange_contains(const QMediaTimeRange* self, long long time);
void QMediaTimeRange_addInterval_start_end(QMediaTimeRange* self, long long start, long long end);
void QMediaTimeRange_addInterval_interval(QMediaTimeRange* self, QMediaTimeInterval* interval);
void QMediaTimeRange_addTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
void QMediaTimeRange_removeInterval_start_end(QMediaTimeRange* self, long long start, long long end);
void QMediaTimeRange_removeInterval_interval(QMediaTimeRange* self, QMediaTimeInterval* interval);
void QMediaTimeRange_removeTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
QMediaTimeRange* QMediaTimeRange_operatorPlusAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
QMediaTimeRange* QMediaTimeRange_operatorPlusAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1);
QMediaTimeRange* QMediaTimeRange_operatorMinusAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
QMediaTimeRange* QMediaTimeRange_operatorMinusAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1);
void QMediaTimeRange_clear(QMediaTimeRange* self);

void QMediaTimeRange_delete(QMediaTimeRange* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
