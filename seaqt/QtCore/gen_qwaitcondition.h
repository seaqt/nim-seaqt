#pragma once
#ifndef SEAQT_QTCORE_GEN_QWAITCONDITION_H
#define SEAQT_QTCORE_GEN_QWAITCONDITION_H

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
class QMutex;
class QReadWriteLock;
class QWaitCondition;
#else
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QMutex QMutex;
typedef struct QReadWriteLock QReadWriteLock;
typedef struct QWaitCondition QWaitCondition;
#endif

QWaitCondition* QWaitCondition_new();

bool QWaitCondition_wait_lockedMutex(QWaitCondition* self, QMutex* lockedMutex);
bool QWaitCondition_wait_lockedMutex_time(QWaitCondition* self, QMutex* lockedMutex, unsigned long time);
bool QWaitCondition_wait_lockedReadWriteLock(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock);
bool QWaitCondition_wait_lockedReadWriteLock_time(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, unsigned long time);
void QWaitCondition_wakeOne(QWaitCondition* self);
void QWaitCondition_wakeAll(QWaitCondition* self);
void QWaitCondition_notify_one(QWaitCondition* self);
void QWaitCondition_notify_all(QWaitCondition* self);
bool QWaitCondition_wait_lockedMutex_deadline(QWaitCondition* self, QMutex* lockedMutex, QDeadlineTimer* deadline);
bool QWaitCondition_wait_lockedReadWriteLock_deadline(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, QDeadlineTimer* deadline);

void QWaitCondition_delete(QWaitCondition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
