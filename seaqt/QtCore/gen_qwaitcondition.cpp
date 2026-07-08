#include <QDeadlineTimer>
#include <QMutex>
#include <QReadWriteLock>
#include <QWaitCondition>
#include <qwaitcondition.h>
#include "gen_qwaitcondition.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWaitCondition* QWaitCondition_new() {
	return new (std::nothrow) QWaitCondition();
}

bool QWaitCondition_wait_lockedMutex(QWaitCondition* self, QMutex* lockedMutex) {
	return self->wait(lockedMutex);
}

bool QWaitCondition_wait_lockedMutex_time(QWaitCondition* self, QMutex* lockedMutex, unsigned long time) {
	return self->wait(lockedMutex, static_cast<unsigned long>(time));
}

bool QWaitCondition_wait_lockedReadWriteLock(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock) {
	return self->wait(lockedReadWriteLock);
}

bool QWaitCondition_wait_lockedReadWriteLock_time(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, unsigned long time) {
	return self->wait(lockedReadWriteLock, static_cast<unsigned long>(time));
}

void QWaitCondition_wakeOne(QWaitCondition* self) {
	self->wakeOne();
}

void QWaitCondition_wakeAll(QWaitCondition* self) {
	self->wakeAll();
}

void QWaitCondition_notify_one(QWaitCondition* self) {
	self->notify_one();
}

void QWaitCondition_notify_all(QWaitCondition* self) {
	self->notify_all();
}

bool QWaitCondition_wait_lockedMutex_deadline(QWaitCondition* self, QMutex* lockedMutex, QDeadlineTimer* deadline) {
	return self->wait(lockedMutex, *deadline);
}

bool QWaitCondition_wait_lockedReadWriteLock_deadline(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, QDeadlineTimer* deadline) {
	return self->wait(lockedReadWriteLock, *deadline);
}

void QWaitCondition_delete(QWaitCondition* self) {
	delete self;
}

