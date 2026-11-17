#include <QCborError>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qcborcommon.h>
#include "gen_qcborcommon.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

int QCborError_c(const QCborError* self) {
	QCborError::Code c_ret = self->c;
	return static_cast<int>(c_ret);
}

void QCborError_setC(QCborError* self, int c) {
	self->c = static_cast<QCborError::Code>(c);
}

int QCborError_ToQCborError__Code(const QCborError* self) {
	QCborError::Code _ret = self->operator QCborError::Code();
	return static_cast<int>(_ret);
}

struct seaqt_string QCborError_toString(const QCborError* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QCborError_staticMetaObject() { return &QCborError::staticMetaObject; }
void QCborError_delete(QCborError* self) {
	delete self;
}

