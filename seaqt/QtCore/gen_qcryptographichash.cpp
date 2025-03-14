#include <QByteArray>
#include <QByteArrayView>
#include <QCryptographicHash>
#include <QIODevice>
#include <qcryptographichash.h>
#include "gen_qcryptographichash.h"
QCryptographicHash* QCryptographicHash_new(int method) {
	return new QCryptographicHash(static_cast<QCryptographicHash::Algorithm>(method));
}

void QCryptographicHash_reset(QCryptographicHash* self) {
	self->reset();
}

void QCryptographicHash_addData(QCryptographicHash* self, const char* data, ptrdiff_t length) {
	self->addData(data, (qsizetype)(length));
}

void QCryptographicHash_addDataWithData(QCryptographicHash* self, struct miqt_string data) {
	QByteArrayView data_QByteArray(data.data, data.len);
	self->addData(data_QByteArray);
}

bool QCryptographicHash_addDataWithDevice(QCryptographicHash* self, QIODevice* device) {
	return self->addData(device);
}

struct miqt_string QCryptographicHash_result(const QCryptographicHash* self) {
	QByteArray _qb = self->result();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QCryptographicHash_resultView(const QCryptographicHash* self) {
	QByteArrayView _qb = self->resultView();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QCryptographicHash_hash(struct miqt_string data, int method) {
	QByteArrayView data_QByteArray(data.data, data.len);
	QByteArray _qb = QCryptographicHash::hash(data_QByteArray, static_cast<QCryptographicHash::Algorithm>(method));
	struct miqt_string _ms;
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

