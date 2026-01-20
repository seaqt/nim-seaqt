#include <QDateTime>
#include <QHstsPolicy>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qhstspolicy.h>
#include "gen_qhstspolicy.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QHstsPolicy* QHstsPolicy_new() {
	return new (std::nothrow) QHstsPolicy();
}

QHstsPolicy* QHstsPolicy_new_expiry_flags_host(QDateTime* expiry, int flags, struct seaqt_string host) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	return new (std::nothrow) QHstsPolicy(*expiry, static_cast<QHstsPolicy::PolicyFlags>(flags), host_QString);
}

QHstsPolicy* QHstsPolicy_new_from(QHstsPolicy* from) {
	return new (std::nothrow) QHstsPolicy(*from);
}

QHstsPolicy* QHstsPolicy_new_expiry_flags_host_mode(QDateTime* expiry, int flags, struct seaqt_string host, int mode) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	return new (std::nothrow) QHstsPolicy(*expiry, static_cast<QHstsPolicy::PolicyFlags>(flags), host_QString, static_cast<QUrl::ParsingMode>(mode));
}

void QHstsPolicy_operatorAssign(QHstsPolicy* self, QHstsPolicy* from) {
	self->operator=(*from);
}

void QHstsPolicy_swap(QHstsPolicy* self, QHstsPolicy* other) {
	self->swap(*other);
}

void QHstsPolicy_setHost_host(QHstsPolicy* self, struct seaqt_string host) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	self->setHost(host_QString);
}

struct seaqt_string QHstsPolicy_host(const QHstsPolicy* self) {
	QString _ret = self->host();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QHstsPolicy_setExpiry(QHstsPolicy* self, QDateTime* expiry) {
	self->setExpiry(*expiry);
}

QDateTime* QHstsPolicy_expiry(const QHstsPolicy* self) {
	return new QDateTime(self->expiry());
}

void QHstsPolicy_setIncludesSubDomains(QHstsPolicy* self, bool include) {
	self->setIncludesSubDomains(include);
}

bool QHstsPolicy_includesSubDomains(const QHstsPolicy* self) {
	return self->includesSubDomains();
}

bool QHstsPolicy_isExpired(const QHstsPolicy* self) {
	return self->isExpired();
}

void QHstsPolicy_setHost_host_mode(QHstsPolicy* self, struct seaqt_string host, int mode) {
	QString host_QString = QString::fromUtf8(host.data, host.len);
	self->setHost(host_QString, static_cast<QUrl::ParsingMode>(mode));
}

struct seaqt_string QHstsPolicy_host_options(const QHstsPolicy* self, unsigned int options) {
	QString _ret = self->host(static_cast<QUrl::ComponentFormattingOptions>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QHstsPolicy_delete(QHstsPolicy* self) {
	delete self;
}

