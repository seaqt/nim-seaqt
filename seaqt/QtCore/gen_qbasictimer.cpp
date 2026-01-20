#include <QBasicTimer>
#include <QObject>
#include <qbasictimer.h>
#include "gen_qbasictimer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QBasicTimer* QBasicTimer_new_QBasicTimer(QBasicTimer* param1) {
	return new (std::nothrow) QBasicTimer(*param1);
}

QBasicTimer* QBasicTimer_new() {
	return new (std::nothrow) QBasicTimer();
}

void QBasicTimer_operatorAssign(QBasicTimer* self, QBasicTimer* param1) {
	self->operator=(*param1);
}

void QBasicTimer_swap(QBasicTimer* self, QBasicTimer* other) {
	self->swap(*other);
}

bool QBasicTimer_isActive(const QBasicTimer* self) {
	return self->isActive();
}

int QBasicTimer_timerId(const QBasicTimer* self) {
	return self->timerId();
}

void QBasicTimer_start_msec_obj(QBasicTimer* self, int msec, QObject* obj) {
	self->start(static_cast<int>(msec), obj);
}

void QBasicTimer_start_msec_timerType_obj(QBasicTimer* self, int msec, int timerType, QObject* obj) {
	self->start(static_cast<int>(msec), static_cast<Qt::TimerType>(timerType), obj);
}

void QBasicTimer_stop(QBasicTimer* self) {
	self->stop();
}

void QBasicTimer_delete(QBasicTimer* self) {
	delete self;
}

