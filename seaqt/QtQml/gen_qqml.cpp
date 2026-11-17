#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlTypeNotAvailable>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qqml.h>
#include "gen_qqml.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QQmlTypeNotAvailable_virtbase(QQmlTypeNotAvailable* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlTypeNotAvailable_metaObject(const QQmlTypeNotAvailable* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlTypeNotAvailable_metacast(QQmlTypeNotAvailable* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlTypeNotAvailable_metacall(QQmlTypeNotAvailable* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlTypeNotAvailable_tr_s(const char* s) {
	QString _ret = QQmlTypeNotAvailable::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlTypeNotAvailable_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlTypeNotAvailable::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlTypeNotAvailable_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlTypeNotAvailable::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQmlTypeNotAvailable_staticMetaObject() { return &QQmlTypeNotAvailable::staticMetaObject; }
void QQmlTypeNotAvailable_delete(QQmlTypeNotAvailable* self) {
	delete self;
}

