#include <QChar>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextBoundaryFinder>
#include <qtextboundaryfinder.h>
#include "gen_qtextboundaryfinder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QTextBoundaryFinder* QTextBoundaryFinder_new() {
	return new (std::nothrow) QTextBoundaryFinder();
}

QTextBoundaryFinder* QTextBoundaryFinder_new_from(QTextBoundaryFinder* from) {
	return new (std::nothrow) QTextBoundaryFinder(*from);
}

QTextBoundaryFinder* QTextBoundaryFinder_new_type_string(int type, struct seaqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	return new (std::nothrow) QTextBoundaryFinder(static_cast<QTextBoundaryFinder::BoundaryType>(type), string_QString);
}

QTextBoundaryFinder* QTextBoundaryFinder_new_type_chars_length(int type, QChar* chars, int length) {
	return new (std::nothrow) QTextBoundaryFinder(static_cast<QTextBoundaryFinder::BoundaryType>(type), chars, static_cast<int>(length));
}

QTextBoundaryFinder* QTextBoundaryFinder_new_type_chars_length_buffer(int type, QChar* chars, int length, unsigned char* buffer) {
	return new (std::nothrow) QTextBoundaryFinder(static_cast<QTextBoundaryFinder::BoundaryType>(type), chars, static_cast<int>(length), static_cast<unsigned char*>(buffer));
}

QTextBoundaryFinder* QTextBoundaryFinder_new_type_chars_length_buffer_bufferSize(int type, QChar* chars, int length, unsigned char* buffer, int bufferSize) {
	return new (std::nothrow) QTextBoundaryFinder(static_cast<QTextBoundaryFinder::BoundaryType>(type), chars, static_cast<int>(length), static_cast<unsigned char*>(buffer), static_cast<int>(bufferSize));
}

void QTextBoundaryFinder_operatorAssign(QTextBoundaryFinder* self, QTextBoundaryFinder* from) {
	self->operator=(*from);
}

bool QTextBoundaryFinder_isValid(const QTextBoundaryFinder* self) {
	return self->isValid();
}

int QTextBoundaryFinder_type(const QTextBoundaryFinder* self) {
	QTextBoundaryFinder::BoundaryType _ret = self->type();
	return static_cast<int>(_ret);
}

struct seaqt_string QTextBoundaryFinder_string(const QTextBoundaryFinder* self) {
	QString _ret = self->string();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextBoundaryFinder_toStart(QTextBoundaryFinder* self) {
	self->toStart();
}

void QTextBoundaryFinder_toEnd(QTextBoundaryFinder* self) {
	self->toEnd();
}

int QTextBoundaryFinder_position(const QTextBoundaryFinder* self) {
	return self->position();
}

void QTextBoundaryFinder_setPosition(QTextBoundaryFinder* self, int position) {
	self->setPosition(static_cast<int>(position));
}

int QTextBoundaryFinder_toNextBoundary(QTextBoundaryFinder* self) {
	return self->toNextBoundary();
}

int QTextBoundaryFinder_toPreviousBoundary(QTextBoundaryFinder* self) {
	return self->toPreviousBoundary();
}

bool QTextBoundaryFinder_isAtBoundary(const QTextBoundaryFinder* self) {
	return self->isAtBoundary();
}

int QTextBoundaryFinder_boundaryReasons(const QTextBoundaryFinder* self) {
	QTextBoundaryFinder::BoundaryReasons _ret = self->boundaryReasons();
	return static_cast<int>(_ret);
}

void QTextBoundaryFinder_delete(QTextBoundaryFinder* self) {
	delete self;
}

