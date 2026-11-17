#include <QBasicMutex>
#include <QMutex>
#include <QRecursiveMutex>
#include <qmutex.h>
#include "gen_qmutex.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QBasicMutex* QBasicMutex_new() {
	return new (std::nothrow) QBasicMutex();
}

void QBasicMutex_lock(QBasicMutex* self) {
	self->lock();
}

void QBasicMutex_unlock(QBasicMutex* self) {
	self->unlock();
}

bool QBasicMutex_tryLock(QBasicMutex* self) {
	return self->tryLock();
}

bool QBasicMutex_try_lock(QBasicMutex* self) {
	return self->try_lock();
}

void QBasicMutex_delete(QBasicMutex* self) {
	delete self;
}

QMutex* QMutex_new() {
	return new (std::nothrow) QMutex();
}

void QMutex_virtbase(QMutex* src, QBasicMutex** outptr_QBasicMutex) {
	*outptr_QBasicMutex = static_cast<QBasicMutex*>(src);
}

bool QMutex_try_lock(QMutex* self) {
	return self->try_lock();
}

bool QMutex_tryLock(QMutex* self, int timeout) {
	return self->tryLock(static_cast<int>(timeout));
}

void QMutex_delete(QMutex* self) {
	delete self;
}

QRecursiveMutex* QRecursiveMutex_new() {
	return new (std::nothrow) QRecursiveMutex();
}

void QRecursiveMutex_lock(QRecursiveMutex* self) {
	self->lock();
}

bool QRecursiveMutex_tryLock(QRecursiveMutex* self) {
	return self->tryLock();
}

void QRecursiveMutex_unlock(QRecursiveMutex* self) {
	self->unlock();
}

bool QRecursiveMutex_try_lock(QRecursiveMutex* self) {
	return self->try_lock();
}

bool QRecursiveMutex_tryLock_timeout(QRecursiveMutex* self, int timeout) {
	return self->tryLock(static_cast<int>(timeout));
}

void QRecursiveMutex_delete(QRecursiveMutex* self) {
	delete self;
}

