#include <QChar>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStringMatcher>
#include <qstringmatcher.h>
#include "gen_qstringmatcher.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QStringMatcher* QStringMatcher_new() {
	return new (std::nothrow) QStringMatcher();
}

QStringMatcher* QStringMatcher_new_QString(struct seaqt_string pattern) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	return new (std::nothrow) QStringMatcher(pattern_QString);
}

QStringMatcher* QStringMatcher_new_QChar_qsizetype(QChar* uc, ptrdiff_t len) {
	return new (std::nothrow) QStringMatcher(uc, (qsizetype)(len));
}

QStringMatcher* QStringMatcher_new_QStringMatcher(QStringMatcher* from) {
	return new (std::nothrow) QStringMatcher(*from);
}

QStringMatcher* QStringMatcher_new_QString_Qt_CaseSensitivity(struct seaqt_string pattern, int cs) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	return new (std::nothrow) QStringMatcher(pattern_QString, static_cast<Qt::CaseSensitivity>(cs));
}

QStringMatcher* QStringMatcher_new_QChar_qsizetype_Qt_CaseSensitivity(QChar* uc, ptrdiff_t len, int cs) {
	return new (std::nothrow) QStringMatcher(uc, (qsizetype)(len), static_cast<Qt::CaseSensitivity>(cs));
}

void QStringMatcher_operatorAssign(QStringMatcher* self, QStringMatcher* from) {
	self->operator=(*from);
}

void QStringMatcher_setPattern(QStringMatcher* self, struct seaqt_string pattern) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	self->setPattern(pattern_QString);
}

void QStringMatcher_setCaseSensitivity(QStringMatcher* self, int cs) {
	self->setCaseSensitivity(static_cast<Qt::CaseSensitivity>(cs));
}

ptrdiff_t QStringMatcher_indexIn_QString(const QStringMatcher* self, struct seaqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	qsizetype _ret = self->indexIn(str_QString);
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QStringMatcher_indexIn_QChar_qsizetype(const QStringMatcher* self, QChar* str, ptrdiff_t length) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(length));
	return static_cast<ptrdiff_t>(_ret);
}

struct seaqt_string QStringMatcher_pattern(const QStringMatcher* self) {
	QString _ret = self->pattern();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStringMatcher_caseSensitivity(const QStringMatcher* self) {
	Qt::CaseSensitivity _ret = self->caseSensitivity();
	return static_cast<int>(_ret);
}

ptrdiff_t QStringMatcher_indexIn_QString_qsizetype(const QStringMatcher* self, struct seaqt_string str, ptrdiff_t from) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	qsizetype _ret = self->indexIn(str_QString, (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QStringMatcher_indexIn_QChar_qsizetype_qsizetype(const QStringMatcher* self, QChar* str, ptrdiff_t length, ptrdiff_t from) {
	qsizetype _ret = self->indexIn(str, (qsizetype)(length), (qsizetype)(from));
	return static_cast<ptrdiff_t>(_ret);
}

void QStringMatcher_delete(QStringMatcher* self) {
	delete self;
}

