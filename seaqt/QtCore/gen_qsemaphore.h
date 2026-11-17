#pragma once
#ifndef SEAQT_QTCORE_GEN_QSEMAPHORE_H
#define SEAQT_QTCORE_GEN_QSEMAPHORE_H

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
class QSemaphore;
class QSemaphoreReleaser;
#else
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QSemaphore QSemaphore;
typedef struct QSemaphoreReleaser QSemaphoreReleaser;
#endif

QSemaphore* QSemaphore_new();
QSemaphore* QSemaphore_new_n(int n);

void QSemaphore_acquire(QSemaphore* self);
bool QSemaphore_tryAcquire(QSemaphore* self);
bool QSemaphore_tryAcquire_int_int(QSemaphore* self, int n, int timeout);
bool QSemaphore_tryAcquire_int_QDeadlineTimer(QSemaphore* self, int n, QDeadlineTimer* timeout);
void QSemaphore_release(QSemaphore* self);
int QSemaphore_available(const QSemaphore* self);
bool QSemaphore_try_acquire(QSemaphore* self);
void QSemaphore_acquire_n(QSemaphore* self, int n);
bool QSemaphore_tryAcquire_int(QSemaphore* self, int n);
void QSemaphore_release_n(QSemaphore* self, int n);

void QSemaphore_delete(QSemaphore* self);

QSemaphoreReleaser* QSemaphoreReleaser_new();
QSemaphoreReleaser* QSemaphoreReleaser_new_QSemaphore(QSemaphore* sem);
QSemaphoreReleaser* QSemaphoreReleaser_new_pQSemaphore(QSemaphore* sem);
QSemaphoreReleaser* QSemaphoreReleaser_new_QSemaphore_int(QSemaphore* sem, int n);
QSemaphoreReleaser* QSemaphoreReleaser_new_pQSemaphore_int(QSemaphore* sem, int n);

void QSemaphoreReleaser_swap(QSemaphoreReleaser* self, QSemaphoreReleaser* other);
QSemaphore* QSemaphoreReleaser_semaphore(const QSemaphoreReleaser* self);
QSemaphore* QSemaphoreReleaser_cancel(QSemaphoreReleaser* self);

void QSemaphoreReleaser_delete(QSemaphoreReleaser* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
