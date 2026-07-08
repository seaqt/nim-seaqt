#include <QByteArray>
#include <QByteArrayMatcher>
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

QByteArrayMatcher* QByteArrayMatcher_new_pattern(struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	return new (std::nothrow) QByteArrayMatcher(pattern_QByteArray);
}

QByteArrayMatcher* QByteArrayMatcher_new_pattern_length(const char* pattern, int length) {
	return new (std::nothrow) QByteArrayMatcher(pattern, static_cast<int>(length));
}

QByteArrayMatcher* QByteArrayMatcher_new_from(QByteArrayMatcher* from) {
	return new (std::nothrow) QByteArrayMatcher(*from);
}

void QByteArrayMatcher_operatorAssign(QByteArrayMatcher* self, QByteArrayMatcher* from) {
	self->operator=(*from);
}

void QByteArrayMatcher_setPattern(QByteArrayMatcher* self, struct seaqt_string pattern) {
	QByteArray pattern_QByteArray(pattern.data, pattern.len);
	self->setPattern(pattern_QByteArray);
}

int QByteArrayMatcher_indexIn_ba(const QByteArrayMatcher* self, struct seaqt_string ba) {
	QByteArray ba_QByteArray(ba.data, ba.len);
	return self->indexIn(ba_QByteArray);
}

int QByteArrayMatcher_indexIn_str_len(const QByteArrayMatcher* self, const char* str, int len) {
	return self->indexIn(str, static_cast<int>(len));
}

struct seaqt_string QByteArrayMatcher_pattern(const QByteArrayMatcher* self) {
	QByteArray _qb = self->pattern();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QByteArrayMatcher_indexIn_ba_from(const QByteArrayMatcher* self, struct seaqt_string ba, int from) {
	QByteArray ba_QByteArray(ba.data, ba.len);
	return self->indexIn(ba_QByteArray, static_cast<int>(from));
}

int QByteArrayMatcher_indexIn_str_len_from(const QByteArrayMatcher* self, const char* str, int len, int from) {
	return self->indexIn(str, static_cast<int>(len), static_cast<int>(from));
}

void QByteArrayMatcher_delete(QByteArrayMatcher* self) {
	delete self;
}

void QStaticByteArrayMatcherBase_delete(QStaticByteArrayMatcherBase* self) {
	delete self;
}

