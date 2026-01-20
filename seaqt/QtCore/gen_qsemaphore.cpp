#include <QSemaphore>
#include <QSemaphoreReleaser>
#include <qsemaphore.h>
#include "gen_qsemaphore.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSemaphore* QSemaphore_new() {
	return new (std::nothrow) QSemaphore();
}

QSemaphore* QSemaphore_new_n(int n) {
	return new (std::nothrow) QSemaphore(static_cast<int>(n));
}

void QSemaphore_acquire(QSemaphore* self) {
	self->acquire();
}

bool QSemaphore_tryAcquire(QSemaphore* self) {
	return self->tryAcquire();
}

bool QSemaphore_tryAcquire_n_timeout(QSemaphore* self, int n, int timeout) {
	return self->tryAcquire(static_cast<int>(n), static_cast<int>(timeout));
}

void QSemaphore_release(QSemaphore* self) {
	self->release();
}

int QSemaphore_available(const QSemaphore* self) {
	return self->available();
}

bool QSemaphore_try_acquire(QSemaphore* self) {
	return self->try_acquire();
}

void QSemaphore_acquire_n(QSemaphore* self, int n) {
	self->acquire(static_cast<int>(n));
}

bool QSemaphore_tryAcquire_n(QSemaphore* self, int n) {
	return self->tryAcquire(static_cast<int>(n));
}

void QSemaphore_release_n(QSemaphore* self, int n) {
	self->release(static_cast<int>(n));
}

void QSemaphore_delete(QSemaphore* self) {
	delete self;
}

QSemaphoreReleaser* QSemaphoreReleaser_new() {
	return new (std::nothrow) QSemaphoreReleaser();
}

QSemaphoreReleaser* QSemaphoreReleaser_new_QSemaphore(QSemaphore* sem) {
	return new (std::nothrow) QSemaphoreReleaser(*sem);
}

QSemaphoreReleaser* QSemaphoreReleaser_new_pQSemaphore(QSemaphore* sem) {
	return new (std::nothrow) QSemaphoreReleaser(sem);
}

QSemaphoreReleaser* QSemaphoreReleaser_new_QSemaphore_int(QSemaphore* sem, int n) {
	return new (std::nothrow) QSemaphoreReleaser(*sem, static_cast<int>(n));
}

QSemaphoreReleaser* QSemaphoreReleaser_new_pQSemaphore_int(QSemaphore* sem, int n) {
	return new (std::nothrow) QSemaphoreReleaser(sem, static_cast<int>(n));
}

void QSemaphoreReleaser_swap(QSemaphoreReleaser* self, QSemaphoreReleaser* other) {
	self->swap(*other);
}

QSemaphore* QSemaphoreReleaser_semaphore(const QSemaphoreReleaser* self) {
	return self->semaphore();
}

QSemaphore* QSemaphoreReleaser_cancel(QSemaphoreReleaser* self) {
	return self->cancel();
}

void QSemaphoreReleaser_delete(QSemaphoreReleaser* self) {
	delete self;
}

