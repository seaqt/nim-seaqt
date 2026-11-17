#include <QAuthenticator>
#include <QHash>
#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qauthenticator.h>
#include "gen_qauthenticator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QAuthenticator* QAuthenticator_new() {
	return new (std::nothrow) QAuthenticator();
}

QAuthenticator* QAuthenticator_new_from(QAuthenticator* from) {
	return new (std::nothrow) QAuthenticator(*from);
}

void QAuthenticator_operatorAssign(QAuthenticator* self, QAuthenticator* from) {
	self->operator=(*from);
}

bool QAuthenticator_operatorEqual(const QAuthenticator* self, QAuthenticator* other) {
	return (*self == *other);
}

bool QAuthenticator_operatorNotEqual(const QAuthenticator* self, QAuthenticator* other) {
	return (*self != *other);
}

struct seaqt_string QAuthenticator_user(const QAuthenticator* self) {
	QString _ret = self->user();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAuthenticator_setUser(QAuthenticator* self, struct seaqt_string user) {
	QString user_QString = QString::fromUtf8(user.data, user.len);
	self->setUser(user_QString);
}

struct seaqt_string QAuthenticator_password(const QAuthenticator* self) {
	QString _ret = self->password();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAuthenticator_setPassword(QAuthenticator* self, struct seaqt_string password) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString);
}

struct seaqt_string QAuthenticator_realm(const QAuthenticator* self) {
	QString _ret = self->realm();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAuthenticator_setRealm(QAuthenticator* self, struct seaqt_string realm) {
	QString realm_QString = QString::fromUtf8(realm.data, realm.len);
	self->setRealm(realm_QString);
}

QVariant* QAuthenticator_option(const QAuthenticator* self, struct seaqt_string opt) {
	QString opt_QString = QString::fromUtf8(opt.data, opt.len);
	return new QVariant(self->option(opt_QString));
}

struct seaqt_map /* of struct seaqt_string to QVariant* */  QAuthenticator_options(const QAuthenticator* self) {
	QVariantHash _ret = self->options();
	// Convert QMap<> from C++ memory to manually-managed C memory
	struct seaqt_string* _karr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		QString _hashkey_ret = _itr->first;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _hashkey_b = _hashkey_ret.toUtf8();
		struct seaqt_string _hashkey_ms;
		_hashkey_ms.len = _hashkey_b.length();
		_hashkey_ms.data = static_cast<char*>(malloc(_hashkey_ms.len));
		memcpy(_hashkey_ms.data, _hashkey_b.data(), _hashkey_ms.len);
		_karr[_ctr] = _hashkey_ms;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

void QAuthenticator_setOption(QAuthenticator* self, struct seaqt_string opt, QVariant* value) {
	QString opt_QString = QString::fromUtf8(opt.data, opt.len);
	self->setOption(opt_QString, *value);
}

bool QAuthenticator_isNull(const QAuthenticator* self) {
	return self->isNull();
}

void QAuthenticator_detach(QAuthenticator* self) {
	self->detach();
}

const QMetaObject* QAuthenticator_staticMetaObject() { return &QAuthenticator::staticMetaObject; }
void QAuthenticator_delete(QAuthenticator* self) {
	delete self;
}

