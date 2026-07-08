#include <QDeadlineTimer>
#include <qdeadlinetimer.h>
#include "gen_qdeadlinetimer.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDeadlineTimer* QDeadlineTimer_new() {
	return new (std::nothrow) QDeadlineTimer();
}

QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer_ForeverConstant(int param1) {
	return new (std::nothrow) QDeadlineTimer(static_cast<QDeadlineTimer::ForeverConstant>(param1));
}

QDeadlineTimer* QDeadlineTimer_new_qint64(long long msecs) {
	return new (std::nothrow) QDeadlineTimer(static_cast<qint64>(msecs));
}

QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer(QDeadlineTimer* from) {
	return new (std::nothrow) QDeadlineTimer(*from);
}

QDeadlineTimer* QDeadlineTimer_new_Qt_TimerType(int type_) {
	return new (std::nothrow) QDeadlineTimer(static_cast<Qt::TimerType>(type_));
}

QDeadlineTimer* QDeadlineTimer_new_QDeadlineTimer_ForeverConstant_Qt_TimerType(int param1, int type_) {
	return new (std::nothrow) QDeadlineTimer(static_cast<QDeadlineTimer::ForeverConstant>(param1), static_cast<Qt::TimerType>(type_));
}

QDeadlineTimer* QDeadlineTimer_new_qint64_Qt_TimerType(long long msecs, int type) {
	return new (std::nothrow) QDeadlineTimer(static_cast<qint64>(msecs), static_cast<Qt::TimerType>(type));
}

void QDeadlineTimer_swap(QDeadlineTimer* self, QDeadlineTimer* other) {
	self->swap(*other);
}

bool QDeadlineTimer_isForever(const QDeadlineTimer* self) {
	return self->isForever();
}

bool QDeadlineTimer_hasExpired(const QDeadlineTimer* self) {
	return self->hasExpired();
}

int QDeadlineTimer_timerType(const QDeadlineTimer* self) {
	Qt::TimerType _ret = self->timerType();
	return static_cast<int>(_ret);
}

void QDeadlineTimer_setTimerType(QDeadlineTimer* self, int type) {
	self->setTimerType(static_cast<Qt::TimerType>(type));
}

long long QDeadlineTimer_remainingTime(const QDeadlineTimer* self) {
	qint64 _ret = self->remainingTime();
	return static_cast<long long>(_ret);
}

long long QDeadlineTimer_remainingTimeNSecs(const QDeadlineTimer* self) {
	qint64 _ret = self->remainingTimeNSecs();
	return static_cast<long long>(_ret);
}

void QDeadlineTimer_setRemainingTime_msecs(QDeadlineTimer* self, long long msecs) {
	self->setRemainingTime(static_cast<qint64>(msecs));
}

void QDeadlineTimer_setPreciseRemainingTime_secs(QDeadlineTimer* self, long long secs) {
	self->setPreciseRemainingTime(static_cast<qint64>(secs));
}

long long QDeadlineTimer_deadline(const QDeadlineTimer* self) {
	qint64 _ret = self->deadline();
	return static_cast<long long>(_ret);
}

long long QDeadlineTimer_deadlineNSecs(const QDeadlineTimer* self) {
	qint64 _ret = self->deadlineNSecs();
	return static_cast<long long>(_ret);
}

void QDeadlineTimer_setDeadline_msecs(QDeadlineTimer* self, long long msecs) {
	self->setDeadline(static_cast<qint64>(msecs));
}

void QDeadlineTimer_setPreciseDeadline_secs(QDeadlineTimer* self, long long secs) {
	self->setPreciseDeadline(static_cast<qint64>(secs));
}

QDeadlineTimer* QDeadlineTimer_addNSecs(QDeadlineTimer* dt, long long nsecs) {
	return new QDeadlineTimer(QDeadlineTimer::addNSecs(*dt, static_cast<qint64>(nsecs)));
}

QDeadlineTimer* QDeadlineTimer_current() {
	return new QDeadlineTimer(QDeadlineTimer::current());
}

QDeadlineTimer* QDeadlineTimer_operatorPlusAssign(QDeadlineTimer* self, long long msecs) {
	QDeadlineTimer& _ret = self->operator+=(static_cast<qint64>(msecs));
	// Cast returned reference into pointer
	return &_ret;
}

QDeadlineTimer* QDeadlineTimer_operatorMinusAssign(QDeadlineTimer* self, long long msecs) {
	QDeadlineTimer& _ret = self->operator-=(static_cast<qint64>(msecs));
	// Cast returned reference into pointer
	return &_ret;
}

void QDeadlineTimer_operatorAssign(QDeadlineTimer* self, QDeadlineTimer* from) {
	self->operator=(*from);
}

void QDeadlineTimer_setRemainingTime_msecs_type(QDeadlineTimer* self, long long msecs, int type) {
	self->setRemainingTime(static_cast<qint64>(msecs), static_cast<Qt::TimerType>(type));
}

void QDeadlineTimer_setPreciseRemainingTime_secs_nsecs(QDeadlineTimer* self, long long secs, long long nsecs) {
	self->setPreciseRemainingTime(static_cast<qint64>(secs), static_cast<qint64>(nsecs));
}

void QDeadlineTimer_setPreciseRemainingTime_secs_nsecs_type(QDeadlineTimer* self, long long secs, long long nsecs, int type) {
	self->setPreciseRemainingTime(static_cast<qint64>(secs), static_cast<qint64>(nsecs), static_cast<Qt::TimerType>(type));
}

void QDeadlineTimer_setDeadline_msecs_timerType(QDeadlineTimer* self, long long msecs, int timerType) {
	self->setDeadline(static_cast<qint64>(msecs), static_cast<Qt::TimerType>(timerType));
}

void QDeadlineTimer_setPreciseDeadline_secs_nsecs(QDeadlineTimer* self, long long secs, long long nsecs) {
	self->setPreciseDeadline(static_cast<qint64>(secs), static_cast<qint64>(nsecs));
}

void QDeadlineTimer_setPreciseDeadline_secs_nsecs_type(QDeadlineTimer* self, long long secs, long long nsecs, int type) {
	self->setPreciseDeadline(static_cast<qint64>(secs), static_cast<qint64>(nsecs), static_cast<Qt::TimerType>(type));
}

QDeadlineTimer* QDeadlineTimer_current_timerType(int timerType) {
	return new QDeadlineTimer(QDeadlineTimer::current(static_cast<Qt::TimerType>(timerType)));
}

void QDeadlineTimer_delete(QDeadlineTimer* self) {
	delete self;
}

