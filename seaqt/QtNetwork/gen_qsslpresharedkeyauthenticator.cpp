#include <QByteArray>
#include <QSslPreSharedKeyAuthenticator>
#include <qsslpresharedkeyauthenticator.h>
#include "gen_qsslpresharedkeyauthenticator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSslPreSharedKeyAuthenticator* QSslPreSharedKeyAuthenticator_new() {
	return new (std::nothrow) QSslPreSharedKeyAuthenticator();
}

QSslPreSharedKeyAuthenticator* QSslPreSharedKeyAuthenticator_new_from(QSslPreSharedKeyAuthenticator* from) {
	return new (std::nothrow) QSslPreSharedKeyAuthenticator(*from);
}

void QSslPreSharedKeyAuthenticator_operatorAssign(QSslPreSharedKeyAuthenticator* self, QSslPreSharedKeyAuthenticator* from) {
	self->operator=(*from);
}

void QSslPreSharedKeyAuthenticator_swap(QSslPreSharedKeyAuthenticator* self, QSslPreSharedKeyAuthenticator* other) {
	self->swap(*other);
}

struct seaqt_string QSslPreSharedKeyAuthenticator_identityHint(const QSslPreSharedKeyAuthenticator* self) {
	QByteArray _qb = self->identityHint();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSslPreSharedKeyAuthenticator_setIdentity(QSslPreSharedKeyAuthenticator* self, struct seaqt_string identity) {
	QByteArray identity_QByteArray(identity.data, identity.len);
	self->setIdentity(identity_QByteArray);
}

struct seaqt_string QSslPreSharedKeyAuthenticator_identity(const QSslPreSharedKeyAuthenticator* self) {
	QByteArray _qb = self->identity();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QSslPreSharedKeyAuthenticator_maximumIdentityLength(const QSslPreSharedKeyAuthenticator* self) {
	return self->maximumIdentityLength();
}

void QSslPreSharedKeyAuthenticator_setPreSharedKey(QSslPreSharedKeyAuthenticator* self, struct seaqt_string preSharedKey) {
	QByteArray preSharedKey_QByteArray(preSharedKey.data, preSharedKey.len);
	self->setPreSharedKey(preSharedKey_QByteArray);
}

struct seaqt_string QSslPreSharedKeyAuthenticator_preSharedKey(const QSslPreSharedKeyAuthenticator* self) {
	QByteArray _qb = self->preSharedKey();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QSslPreSharedKeyAuthenticator_maximumPreSharedKeyLength(const QSslPreSharedKeyAuthenticator* self) {
	return self->maximumPreSharedKeyLength();
}

void QSslPreSharedKeyAuthenticator_delete(QSslPreSharedKeyAuthenticator* self) {
	delete self;
}

