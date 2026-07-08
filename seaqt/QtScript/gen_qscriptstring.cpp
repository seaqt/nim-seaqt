#include <QScriptString>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qscriptstring.h>
#include "gen_qscriptstring.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QScriptString* QScriptString_new() {
	return new (std::nothrow) QScriptString();
}

QScriptString* QScriptString_new_from(QScriptString* from) {
	return new (std::nothrow) QScriptString(*from);
}

void QScriptString_operatorAssign(QScriptString* self, QScriptString* from) {
	self->operator=(*from);
}

bool QScriptString_isValid(const QScriptString* self) {
	return self->isValid();
}

bool QScriptString_operatorEqual(const QScriptString* self, QScriptString* other) {
	return (*self == *other);
}

bool QScriptString_operatorNotEqual(const QScriptString* self, QScriptString* other) {
	return (*self != *other);
}

unsigned int QScriptString_toArrayIndex(const QScriptString* self) {
	quint32 _ret = self->toArrayIndex();
	return static_cast<unsigned int>(_ret);
}

struct seaqt_string QScriptString_toString(const QScriptString* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptString_ToQString(const QScriptString* self) {
	QString _ret = self->operator QString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QScriptString_toArrayIndex_ok(const QScriptString* self, bool* ok) {
	quint32 _ret = self->toArrayIndex(ok);
	return static_cast<unsigned int>(_ret);
}

void QScriptString_delete(QScriptString* self) {
	delete self;
}

