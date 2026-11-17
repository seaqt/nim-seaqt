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
class QMutex;
class QMutexLocker;
class QRecursiveMutex;
#else
typedef struct QBasicMutex QBasicMutex;
typedef struct QMutex QMutex;
typedef struct QMutexLocker QMutexLocker;
typedef struct QRecursiveMutex QRecursiveMutex;
#endif

QBasicMutex* QBasicMutex_new();

void QBasicMutex_lock(QBasicMutex* self);
void QBasicMutex_unlock(QBasicMutex* self);
bool QBasicMutex_tryLock(QBasicMutex* self);
bool QBasicMutex_try_lock(QBasicMutex* self);
bool QBasicMutex_isRecursive(QBasicMutex* self);
bool QBasicMutex_isRecursive_const(const QBasicMutex* self);

void QBasicMutex_delete(QBasicMutex* self);

QMutex* QMutex_new();
QMutex* QMutex_new_mode(int mode);

void QMutex_virtbase(QMutex* src, QBasicMutex** outptr_QBasicMutex);
void QMutex_lock(QMutex* self);
bool QMutex_tryLock(QMutex* self);
void QMutex_unlock(QMutex* self);
bool QMutex_try_lock(QMutex* self);
bool QMutex_isRecursive(const QMutex* self);
bool QMutex_tryLock_timeout(QMutex* self, int timeout);

void QMutex_delete(QMutex* self);

QRecursiveMutex* QRecursiveMutex_new();

void QRecursiveMutex_delete(QRecursiveMutex* self);

QMutexLocker* QMutexLocker_new_QBasicMutex(QBasicMutex* m);
QMutexLocker* QMutexLocker_new_QRecursiveMutex(QRecursiveMutex* m);

void QMutexLocker_unlock(QMutexLocker* self);
void QMutexLocker_relock(QMutexLocker* self);
QMutex* QMutexLocker_mutex(const QMutexLocker* self);

void QMutexLocker_delete(QMutexLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
