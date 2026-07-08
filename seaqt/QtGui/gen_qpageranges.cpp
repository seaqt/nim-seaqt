#include <QList>
#include <QPageRanges>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPageRanges__Range
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qpageranges.h>
#include "gen_qpageranges.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPageRanges* QPageRanges_new() {
	return new (std::nothrow) QPageRanges();
}

QPageRanges* QPageRanges_new_from(QPageRanges* from) {
	return new (std::nothrow) QPageRanges(*from);
}

void QPageRanges_operatorAssign(QPageRanges* self, QPageRanges* from) {
	self->operator=(*from);
}

void QPageRanges_swap(QPageRanges* self, QPageRanges* other) {
	self->swap(*other);
}

void QPageRanges_addPage(QPageRanges* self, int pageNumber) {
	self->addPage(static_cast<int>(pageNumber));
}

void QPageRanges_addRange(QPageRanges* self, int from, int to) {
	self->addRange(static_cast<int>(from), static_cast<int>(to));
}

struct seaqt_array /* of QPageRanges__Range* */  QPageRanges_toRangeList(const QPageRanges* self) {
	QList<QPageRanges::Range> _ret = self->toRangeList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QPageRanges__Range** _arr = static_cast<QPageRanges__Range**>(malloc(sizeof(QPageRanges__Range*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QPageRanges::Range(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QPageRanges_clear(QPageRanges* self) {
	self->clear();
}

struct seaqt_string QPageRanges_toString(const QPageRanges* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPageRanges* QPageRanges_fromString(struct seaqt_string ranges) {
	QString ranges_QString = QString::fromUtf8(ranges.data, ranges.len);
	return new QPageRanges(QPageRanges::fromString(ranges_QString));
}

bool QPageRanges_contains(const QPageRanges* self, int pageNumber) {
	return self->contains(static_cast<int>(pageNumber));
}

bool QPageRanges_isEmpty(const QPageRanges* self) {
	return self->isEmpty();
}

int QPageRanges_firstPage(const QPageRanges* self) {
	return self->firstPage();
}

int QPageRanges_lastPage(const QPageRanges* self) {
	return self->lastPage();
}

void QPageRanges_detach(QPageRanges* self) {
	self->detach();
}

void QPageRanges_delete(QPageRanges* self) {
	delete self;
}

QPageRanges__Range* QPageRanges__Range_new() {
	return new (std::nothrow) QPageRanges__Range();
}

QPageRanges__Range* QPageRanges__Range_new_from(QPageRanges__Range* from) {
	return new (std::nothrow) QPageRanges__Range(*from);
}

int QPageRanges__Range_from(const QPageRanges__Range* self) {
	return self->from;
}

void QPageRanges__Range_setFrom(QPageRanges__Range* self, int from) {
	self->from = static_cast<int>(from);
}

int QPageRanges__Range_to(const QPageRanges__Range* self) {
	return self->to;
}

void QPageRanges__Range_setTo(QPageRanges__Range* self, int to) {
	self->to = static_cast<int>(to);
}

bool QPageRanges__Range_contains(const QPageRanges__Range* self, int pageNumber) {
	return self->contains(static_cast<int>(pageNumber));
}

void QPageRanges__Range_delete(QPageRanges__Range* self) {
	delete self;
}

