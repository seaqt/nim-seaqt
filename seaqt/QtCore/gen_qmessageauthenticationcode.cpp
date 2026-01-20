#include <QByteArray>
#include <QIODevice>
#include <QMessageAuthenticationCode>
#include <qmessageauthenticationcode.h>
#include "gen_qmessageauthenticationcode.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QMessageAuthenticationCode* QMessageAuthenticationCode_new(int method) {
	return new (std::nothrow) QMessageAuthenticationCode(static_cast<QCryptographicHash::Algorithm>(method));
}

QMessageAuthenticationCode* QMessageAuthenticationCode_new2(int method, struct seaqt_string key) {
	QByteArray key_QByteArray(key.data, key.len);
	return new (std::nothrow) QMessageAuthenticationCode(static_cast<QCryptographicHash::Algorithm>(method), key_QByteArray);
}

void QMessageAuthenticationCode_reset(QMessageAuthenticationCode* self) {
	self->reset();
}

void QMessageAuthenticationCode_setKey(QMessageAuthenticationCode* self, struct seaqt_string key) {
	QByteArray key_QByteArray(key.data, key.len);
	self->setKey(key_QByteArray);
}

void QMessageAuthenticationCode_addData(QMessageAuthenticationCode* self, const char* data, int length) {
	self->addData(data, static_cast<int>(length));
}

void QMessageAuthenticationCode_addDataWithData(QMessageAuthenticationCode* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->addData(data_QByteArray);
}

bool QMessageAuthenticationCode_addDataWithDevice(QMessageAuthenticationCode* self, QIODevice* device) {
	return self->addData(device);
}

struct seaqt_string QMessageAuthenticationCode_result(const QMessageAuthenticationCode* self) {
	QByteArray _qb = self->result();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMessageAuthenticationCode_hash(struct seaqt_string message, struct seaqt_string key, int method) {
	QByteArray message_QByteArray(message.data, message.len);
	QByteArray key_QByteArray(key.data, key.len);
	QByteArray _qb = QMessageAuthenticationCode::hash(message_QByteArray, key_QByteArray, static_cast<QCryptographicHash::Algorithm>(method));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QMessageAuthenticationCode_delete(QMessageAuthenticationCode* self) {
	delete self;
}

