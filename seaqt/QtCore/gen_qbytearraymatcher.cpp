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

QByteArrayMatcher* QByteArrayMatcher_new_QByteArray(struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	return new (std::nothrow) QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new_QByteArrayView(struct seaqt_string pattern) {
	QByteArrayView pattern_QByteArray(pattern.data, pattern.len);
	return new (std::nothrow) QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new_char(const char* pattern) {
	return new (std::nothrow) QByteArrayMatcher(pattern);
}

QByteArrayMatcher* QByteArrayMatcher_new_QByteArrayMatcher(QByteArrayMatcher* from) {
	return new (std::nothrow) QByteArrayMatcher(*from);
}

QByteArrayMatcher* QByteArrayMatcher_new_char_qsizetype(const char* pattern, ptrdiff_t length) {
	return new (std::nothrow) QByteArrayMatcher(pattern, (qsizetype)(length));
}

void QByteArrayMatcher_operatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* from) {
	self->operator=(*from);
}

void QByteArrayMatcher_setPattern(QByteArrayMatcher* self, struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	self->setPattern(pattern_QByteArray);
}

ptrdiff_t QByteArrayMatcher_indexIn_str_len(const QByteArrayMatcher* self, const char* str, ptrdiff_t len) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(len));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QByteArrayMatcher_indexIn_data(const QByteArrayMatcher* self, struct seaqt_string data) {
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

ptrdiff_t QByteArrayMatcher_indexIn_str_len_from(const QByteArrayMatcher* self, const char* str, ptrdiff_t len, ptrdiff_t from) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(len), (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QByteArrayMatcher_indexIn_data_from(const QByteArrayMatcher* self, struct seaqt_string data, ptrdiff_t from) {
	QByteArrayView data_QByteArray(data.data, data.len);
	qsizetype _ret = self->indexIn(data_QByteArray, (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

void QByteArrayMatcher_delete(QByteArrayMatcher* self) {
	delete self;
}

