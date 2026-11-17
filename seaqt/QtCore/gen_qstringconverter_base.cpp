#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStringConverter>
#include <qstringconverter_base.h>
#include "gen_qstringconverter_base.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

bool QStringConverter_isValid(const QStringConverter* self) {
	return self->isValid();
}

void QStringConverter_resetState(QStringConverter* self) {
	self->resetState();
}

bool QStringConverter_hasError(const QStringConverter* self) {
	return self->hasError();
}

const char* QStringConverter_name(const QStringConverter* self) {
	return (const char*) self->name();
}

const char* QStringConverter_nameForEncoding(int e) {
	return (const char*) QStringConverter::nameForEncoding(static_cast<QStringConverter::Encoding>(e));
}

struct seaqt_array /* of struct seaqt_string */  QStringConverter_availableCodecs() {
	QStringList _ret = QStringConverter::availableCodecs();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

