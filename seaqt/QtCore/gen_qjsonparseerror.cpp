#include <QJsonParseError>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qjsonparseerror.h>
#include "gen_qjsonparseerror.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

struct seaqt_string QJsonParseError_errorString(const QJsonParseError* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QJsonParseError_error(const QJsonParseError* self) {
	QJsonParseError::ParseError error_ret = self->error;
	return static_cast<int>(error_ret);
}

void QJsonParseError_setError(QJsonParseError* self, int error) {
	self->error = static_cast<QJsonParseError::ParseError>(error);
}

void QJsonParseError_delete(QJsonParseError* self) {
	delete self;
}

