#include <QMetaObject>
#include <QPdfDestination>
#include <QPdfSearchResult>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVector>
#include <qpdfsearchresult.h>
#include "gen_qpdfsearchresult.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPdfSearchResult* QPdfSearchResult_new() {
	return new (std::nothrow) QPdfSearchResult();
}

QPdfSearchResult* QPdfSearchResult_new_from(QPdfSearchResult* from) {
	return new (std::nothrow) QPdfSearchResult(*from);
}

void QPdfSearchResult_virtbase(QPdfSearchResult* src, QPdfDestination** outptr_QPdfDestination) {
	*outptr_QPdfDestination = static_cast<QPdfDestination*>(src);
}

struct seaqt_string QPdfSearchResult_contextBefore(const QPdfSearchResult* self) {
	QString _ret = self->contextBefore();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfSearchResult_contextAfter(const QPdfSearchResult* self) {
	QString _ret = self->contextAfter();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QRectF* */  QPdfSearchResult_rectangles(const QPdfSearchResult* self) {
	QVector<QRectF> _ret = self->rectangles();
	// Convert QList<> from C++ memory to manually-managed C memory
	QRectF** _arr = static_cast<QRectF**>(malloc(sizeof(QRectF*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QRectF(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QPdfSearchResult_operatorAssign(QPdfSearchResult* self, QPdfSearchResult* from) {
	self->operator=(*from);
}

const QMetaObject* QPdfSearchResult_staticMetaObject() { return &QPdfSearchResult::staticMetaObject; }
void QPdfSearchResult_delete(QPdfSearchResult* self) {
	delete self;
}

