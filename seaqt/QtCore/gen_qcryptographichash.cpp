#include <QByteArray>
#include <QCryptographicHash>
#include <QIODevice>
#include <QMetaObject>
#include <qcryptographichash.h>
#include "gen_qcryptographichash.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCryptographicHash* QCryptographicHash_new(int method) {
	return new (std::nothrow) QCryptographicHash(static_cast<QCryptographicHash::Algorithm>(method));
}

void QCryptographicHash_reset(QCryptographicHash* self) {
	self->reset();
}

void QCryptographicHash_addData_data_length(QCryptographicHash* self, const char* data, int length) {
	self->addData(data, static_cast<int>(length));
}

void QCryptographicHash_addData_data(QCryptographicHash* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->addData(data_QByteArray);
}

bool QCryptographicHash_addData_device(QCryptographicHash* self, QIODevice* device) {
	return self->addData(device);
}

struct seaqt_string QCryptographicHash_result(const QCryptographicHash* self) {
	QByteArray _qb = self->result();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCryptographicHash_hash(struct seaqt_string data, int method) {
	QByteArray data_QByteArray(data.data, data.len);
	QByteArray _qb = QCryptographicHash::hash(data_QByteArray, static_cast<QCryptographicHash::Algorithm>(method));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QCryptographicHash_hashLength(int method) {
	return QCryptographicHash::hashLength(static_cast<QCryptographicHash::Algorithm>(method));
}

const QMetaObject* QCryptographicHash_staticMetaObject() { return &QCryptographicHash::staticMetaObject; }
void QCryptographicHash_delete(QCryptographicHash* self) {
	delete self;
}

