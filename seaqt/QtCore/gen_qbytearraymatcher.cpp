#include <QByteArray>
#include <QByteArrayMatcher>
#include <QByteArrayView>
#include <QStaticByteArrayMatcherBase>
#include <qbytearraymatcher.h>
#include "gen_qbytearraymatcher.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QByteArrayMatcher* QByteArrayMatcher_new() {
	return new (std::nothrow) QByteArrayMatcher();
}

QByteArrayMatcher* QByteArrayMatcher_new2(struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	return new (std::nothrow) QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new3(struct seaqt_string pattern) {
	QByteArrayView pattern_QByteArray(pattern.data, pattern.len);
	return new (std::nothrow) QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new4(const char* pattern) {
	return new (std::nothrow) QByteArrayMatcher(pattern);
}

QByteArrayMatcher* QByteArrayMatcher_new5(QByteArrayMatcher* other) {
	return new (std::nothrow) QByteArrayMatcher(*other);
}

QByteArrayMatcher* QByteArrayMatcher_new6(const char* pattern, ptrdiff_t length) {
	return new (std::nothrow) QByteArrayMatcher(pattern, (qsizetype)(length));
}

void QByteArrayMatcher_operatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* other) {
	self->operator=(*other);
}

void QByteArrayMatcher_setPattern(QByteArrayMatcher* self, struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	self->setPattern(pattern_QByteArray);
}

ptrdiff_t QByteArrayMatcher_indexIn(const QByteArrayMatcher* self, const char* str, ptrdiff_t len) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(len));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QByteArrayMatcher_indexInWithData(const QByteArrayMatcher* self, struct seaqt_string data) {
	QByteArrayView data_QByteArray(data.data, data.len);
	qsizetype _ret = self->indexIn(data_QByteArray);
	return static_cast<ptrdiff_t>(_ret);
}

struct seaqt_string QByteArrayMatcher_pattern(const QByteArrayMatcher* self) {
	QByteArray _qb = self->pattern();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

ptrdiff_t QByteArrayMatcher_indexIn2(const QByteArrayMatcher* self, const char* str, ptrdiff_t len, ptrdiff_t from) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(len), (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QByteArrayMatcher_indexIn3(const QByteArrayMatcher* self, struct seaqt_string data, ptrdiff_t from) {
	QByteArrayView data_QByteArray(data.data, data.len);
	qsizetype _ret = self->indexIn(data_QByteArray, (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

void QByteArrayMatcher_delete(QByteArrayMatcher* self) {
	delete self;
}

