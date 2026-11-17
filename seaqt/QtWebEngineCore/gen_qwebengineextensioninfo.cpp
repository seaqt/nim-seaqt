#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineExtensionInfo>
#include <qwebengineextensioninfo.h>
#include "gen_qwebengineextensioninfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineExtensionInfo* QWebEngineExtensionInfo_new() {
	return new (std::nothrow) QWebEngineExtensionInfo();
}

QWebEngineExtensionInfo* QWebEngineExtensionInfo_new_from(QWebEngineExtensionInfo* from) {
	return new (std::nothrow) QWebEngineExtensionInfo(*from);
}

void QWebEngineExtensionInfo_operatorAssign(QWebEngineExtensionInfo* self, QWebEngineExtensionInfo* from) {
	self->operator=(*from);
}

void QWebEngineExtensionInfo_swap(QWebEngineExtensionInfo* self, QWebEngineExtensionInfo* other) {
	self->swap(*other);
}

struct seaqt_string QWebEngineExtensionInfo_name(const QWebEngineExtensionInfo* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineExtensionInfo_id(const QWebEngineExtensionInfo* self) {
	QString _ret = self->id();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineExtensionInfo_description(const QWebEngineExtensionInfo* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineExtensionInfo_path(const QWebEngineExtensionInfo* self) {
	QString _ret = self->path();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineExtensionInfo_error(const QWebEngineExtensionInfo* self) {
	QString _ret = self->error();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebEngineExtensionInfo_actionPopupUrl(const QWebEngineExtensionInfo* self) {
	return new QUrl(self->actionPopupUrl());
}

bool QWebEngineExtensionInfo_isEnabled(const QWebEngineExtensionInfo* self) {
	return self->isEnabled();
}

bool QWebEngineExtensionInfo_isLoaded(const QWebEngineExtensionInfo* self) {
	return self->isLoaded();
}

bool QWebEngineExtensionInfo_isInstalled(const QWebEngineExtensionInfo* self) {
	return self->isInstalled();
}

const QMetaObject* QWebEngineExtensionInfo_staticMetaObject() { return &QWebEngineExtensionInfo::staticMetaObject; }
void QWebEngineExtensionInfo_delete(QWebEngineExtensionInfo* self) {
	delete self;
}

