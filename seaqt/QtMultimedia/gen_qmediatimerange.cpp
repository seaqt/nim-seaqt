#include <QList>
#include <QMediaTimeInterval>
#include <QMediaTimeRange>
#include <qmediatimerange.h>
#include "gen_qmediatimerange.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QMediaTimeInterval* QMediaTimeInterval_new() {
	return new (std::nothrow) QMediaTimeInterval();
}

QMediaTimeInterval* QMediaTimeInterval_new_start_end(long long start, long long end) {
	return new (std::nothrow) QMediaTimeInterval(static_cast<qint64>(start), static_cast<qint64>(end));
}

QMediaTimeInterval* QMediaTimeInterval_new_from(QMediaTimeInterval* from) {
	return new (std::nothrow) QMediaTimeInterval(*from);
}

void QMediaTimeInterval_operatorAssign(QMediaTimeInterval* self, QMediaTimeInterval* from) {
	self->operator=(*from);
}

long long QMediaTimeInterval_start(const QMediaTimeInterval* self) {
	qint64 _ret = self->start();
	return static_cast<long long>(_ret);
}

long long QMediaTimeInterval_end(const QMediaTimeInterval* self) {
	qint64 _ret = self->end();
	return static_cast<long long>(_ret);
}

bool QMediaTimeInterval_contains(const QMediaTimeInterval* self, long long time) {
	return self->contains(static_cast<qint64>(time));
}

bool QMediaTimeInterval_isNormal(const QMediaTimeInterval* self) {
	return self->isNormal();
}

QMediaTimeInterval* QMediaTimeInterval_normalized(const QMediaTimeInterval* self) {
	return new QMediaTimeInterval(self->normalized());
}

QMediaTimeInterval* QMediaTimeInterval_translated(const QMediaTimeInterval* self, long long offset) {
	return new QMediaTimeInterval(self->translated(static_cast<qint64>(offset)));
}

void QMediaTimeInterval_delete(QMediaTimeInterval* self) {
	delete self;
}

QMediaTimeRange* QMediaTimeRange_new() {
	return new (std::nothrow) QMediaTimeRange();
}

QMediaTimeRange* QMediaTimeRange_new_qint64_qint64(long long start, long long end) {
	return new (std::nothrow) QMediaTimeRange(static_cast<qint64>(start), static_cast<qint64>(end));
}

QMediaTimeRange* QMediaTimeRange_new_QMediaTimeInterval(QMediaTimeInterval* param1) {
	return new (std::nothrow) QMediaTimeRange(*param1);
}

QMediaTimeRange* QMediaTimeRange_new_QMediaTimeRange(QMediaTimeRange* from) {
	return new (std::nothrow) QMediaTimeRange(*from);
}

void QMediaTimeRange_operatorAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* from) {
	self->operator=(*from);
}

void QMediaTimeRange_operatorAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1) {
	self->operator=(*param1);
}

long long QMediaTimeRange_earliestTime(const QMediaTimeRange* self) {
	qint64 _ret = self->earliestTime();
	return static_cast<long long>(_ret);
}

long long QMediaTimeRange_latestTime(const QMediaTimeRange* self) {
	qint64 _ret = self->latestTime();
	return static_cast<long long>(_ret);
}

struct seaqt_array /* of QMediaTimeInterval* */  QMediaTimeRange_intervals(const QMediaTimeRange* self) {
	QList<QMediaTimeInterval> _ret = self->intervals();
	// Convert QList<> from C++ memory to manually-managed C memory
	QMediaTimeInterval** _arr = static_cast<QMediaTimeInterval**>(malloc(sizeof(QMediaTimeInterval*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QMediaTimeInterval(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QMediaTimeRange_isEmpty(const QMediaTimeRange* self) {
	return self->isEmpty();
}

bool QMediaTimeRange_isContinuous(const QMediaTimeRange* self) {
	return self->isContinuous();
}

bool QMediaTimeRange_contains(const QMediaTimeRange* self, long long time) {
	return self->contains(static_cast<qint64>(time));
}

void QMediaTimeRange_addInterval_start_end(QMediaTimeRange* self, long long start, long long end) {
	self->addInterval(static_cast<qint64>(start), static_cast<qint64>(end));
}

void QMediaTimeRange_addInterval_interval(QMediaTimeRange* self, QMediaTimeInterval* interval) {
	self->addInterval(*interval);
}

void QMediaTimeRange_addTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1) {
	self->addTimeRange(*param1);
}

void QMediaTimeRange_removeInterval_start_end(QMediaTimeRange* self, long long start, long long end) {
	self->removeInterval(static_cast<qint64>(start), static_cast<qint64>(end));
}

void QMediaTimeRange_removeInterval_interval(QMediaTimeRange* self, QMediaTimeInterval* interval) {
	self->removeInterval(*interval);
}

void QMediaTimeRange_removeTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1) {
	self->removeTimeRange(*param1);
}

QMediaTimeRange* QMediaTimeRange_operatorPlusAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1) {
	QMediaTimeRange& _ret = self->operator+=(*param1);
	// Cast returned reference into pointer
	return &_ret;
}

QMediaTimeRange* QMediaTimeRange_operatorPlusAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1) {
	QMediaTimeRange& _ret = self->operator+=(*param1);
	// Cast returned reference into pointer
	return &_ret;
}

QMediaTimeRange* QMediaTimeRange_operatorMinusAssign_QMediaTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1) {
	QMediaTimeRange& _ret = self->operator-=(*param1);
	// Cast returned reference into pointer
	return &_ret;
}

QMediaTimeRange* QMediaTimeRange_operatorMinusAssign_QMediaTimeInterval(QMediaTimeRange* self, QMediaTimeInterval* param1) {
	QMediaTimeRange& _ret = self->operator-=(*param1);
	// Cast returned reference into pointer
	return &_ret;
}

void QMediaTimeRange_clear(QMediaTimeRange* self) {
	self->clear();
}

void QMediaTimeRange_delete(QMediaTimeRange* self) {
	delete self;
}

