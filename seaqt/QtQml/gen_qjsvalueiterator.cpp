#include <QJSValue>
#include <QJSValueIterator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qjsvalueiterator.h>
#include "gen_qjsvalueiterator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

bool QJSValueIterator_hasNext(const QJSValueIterator* self) {
	return self->hasNext();
}

bool QJSValueIterator_next(QJSValueIterator* self) {
	return self->next();
}

struct seaqt_string QJSValueIterator_name(const QJSValueIterator* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QJSValue* QJSValueIterator_value(const QJSValueIterator* self) {
	return new QJSValue(self->value());
}

void QJSValueIterator_delete(QJSValueIterator* self) {
	delete self;
}

