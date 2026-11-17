#include <QDeadlineTimer>
#include <QReadLocker>
#include <QReadWriteLock>
#include <QWriteLocker>
#include <qreadwritelock.h>
#include "gen_qreadwritelock.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QReadWriteLock* QReadWriteLock_new() {
	return new (std::nothrow) QReadWriteLock();
}

QReadWriteLock* QReadWriteLock_new_recursionMode(int recursionMode) {
	return new (std::nothrow) QReadWriteLock(static_cast<QReadWriteLock::RecursionMode>(recursionMode));
}

void QReadWriteLock_lockForRead(QReadWriteLock* self) {
	self->lockForRead();
}

bool QReadWriteLock_tryLockForRead_int(QReadWriteLock* self, int timeout) {
	return self->tryLockForRead(static_cast<int>(timeout));
}

bool QReadWriteLock_tryLockForRead(QReadWriteLock* self) {
	return self->tryLockForRead();
}

void QReadWriteLock_lockForWrite(QReadWriteLock* self) {
	self->lockForWrite();
}

bool QReadWriteLock_tryLockForWrite_int(QReadWriteLock* self, int timeout) {
	return self->tryLockForWrite(static_cast<int>(timeout));
}

bool QReadWriteLock_tryLockForWrite(QReadWriteLock* self) {
	return self->tryLockForWrite();
}

void QReadWriteLock_unlock(QReadWriteLock* self) {
	self->unlock();
}

bool QReadWriteLock_tryLockForRead_QDeadlineTimer(QReadWriteLock* self, QDeadlineTimer* timeout) {
	return self->tryLockForRead(*timeout);
}

bool QReadWriteLock_tryLockForWrite_QDeadlineTimer(QReadWriteLock* self, QDeadlineTimer* timeout) {
	return self->tryLockForWrite(*timeout);
}

void QReadWriteLock_delete(QReadWriteLock* self) {
	delete self;
}

QReadLocker* QReadLocker_new(QReadWriteLock* readWriteLock) {
	return new (std::nothrow) QReadLocker(readWriteLock);
}

void QReadLocker_unlock(QReadLocker* self) {
	self->unlock();
}

void QReadLocker_relock(QReadLocker* self) {
	self->relock();
}

QReadWriteLock* QReadLocker_readWriteLock(const QReadLocker* self) {
	return self->readWriteLock();
}

void QReadLocker_delete(QReadLocker* self) {
	delete self;
}

QWriteLocker* QWriteLocker_new(QReadWriteLock* readWriteLock) {
	return new (std::nothrow) QWriteLocker(readWriteLock);
}

void QWriteLocker_unlock(QWriteLocker* self) {
	self->unlock();
}

void QWriteLocker_relock(QWriteLocker* self) {
	self->relock();
}

QReadWriteLock* QWriteLocker_readWriteLock(const QWriteLocker* self) {
	return self->readWriteLock();
}

void QWriteLocker_delete(QWriteLocker* self) {
	delete self;
}

