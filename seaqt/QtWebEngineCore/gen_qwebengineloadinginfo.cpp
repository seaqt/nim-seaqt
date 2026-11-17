#include <QMetaObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineLoadingInfo>
#include <qwebengineloadinginfo.h>
#include "gen_qwebengineloadinginfo.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineLoadingInfo* QWebEngineLoadingInfo_new(QWebEngineLoadingInfo* from) {
	return new (std::nothrow) QWebEngineLoadingInfo(*from);
}

void QWebEngineLoadingInfo_operatorAssign(QWebEngineLoadingInfo* self, QWebEngineLoadingInfo* from) {
	self->operator=(*from);
}

QUrl* QWebEngineLoadingInfo_url(const QWebEngineLoadingInfo* self) {
	return new QUrl(self->url());
}

bool QWebEngineLoadingInfo_isErrorPage(const QWebEngineLoadingInfo* self) {
	return self->isErrorPage();
}

int QWebEngineLoadingInfo_status(const QWebEngineLoadingInfo* self) {
	QWebEngineLoadingInfo::LoadStatus _ret = self->status();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebEngineLoadingInfo_errorString(const QWebEngineLoadingInfo* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QWebEngineLoadingInfo_errorDomain(const QWebEngineLoadingInfo* self) {
	QWebEngineLoadingInfo::ErrorDomain _ret = self->errorDomain();
	return static_cast<int>(_ret);
}

int QWebEngineLoadingInfo_errorCode(const QWebEngineLoadingInfo* self) {
	return self->errorCode();
}

const QMetaObject* QWebEngineLoadingInfo_staticMetaObject() { return &QWebEngineLoadingInfo::staticMetaObject; }
void QWebEngineLoadingInfo_delete(QWebEngineLoadingInfo* self) {
	delete self;
}

