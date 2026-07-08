#pragma once
#ifndef SEAQT_QTCORE_GEN_QMUTEX_H
#define SEAQT_QTCORE_GEN_QMUTEX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBasicMutex;
class QDeadlineTimer;
class QMutex;
class QRecursiveMutex;
#else
typedef struct QBasicMutex QBasicMutex;
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QMutex QMutex;
typedef struct QRecursiveMutex QRecursiveMutex;
#endif

QBasicMutex* QBasicMutex_new();

void QBasicMutex_lock(QBasicMutex* self);
void QBasicMutex_unlock(QBasicMutex* self);
bool QBasicMutex_tryLock(QBasicMutex* self);
bool QBasicMutex_try_lock(QBasicMutex* self);

void QBasicMutex_delete(QBasicMutex* self);

QMutex* QMutex_new();

void QMutex_virtbase(QMutex* src, QBasicMutex** outptr_QBasicMutex);
bool QMutex_try_lock(QMutex* self);
bool QMutex_tryLock_int(QMutex* self, int timeout);
bool QMutex_tryLock_QDeadlineTimer(QMutex* self, QDeadlineTimer* timeout);

void QMutex_delete(QMutex* self);

QRecursiveMutex* QRecursiveMutex_new();

void QRecursiveMutex_lock(QRecursiveMutex* self);
bool QRecursiveMutex_tryLock_timeout(QRecursiveMutex* self, int timeout);
bool QRecursiveMutex_tryLock(QRecursiveMutex* self);
void QRecursiveMutex_unlock(QRecursiveMutex* self);
bool QRecursiveMutex_try_lock(QRecursiveMutex* self);
bool QRecursiveMutex_tryLock_timer(QRecursiveMutex* self, QDeadlineTimer* timer);

void QRecursiveMutex_delete(QRecursiveMutex* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
