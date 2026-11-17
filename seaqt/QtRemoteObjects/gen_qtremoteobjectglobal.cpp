#include <QRemoteObjectSourceLocationInfo>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qtremoteobjectglobal.h>
#include "gen_qtremoteobjectglobal.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new() {
	return new (std::nothrow) QRemoteObjectSourceLocationInfo();
}

QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new_typeName__hostUrl_(struct seaqt_string typeName_, QUrl* hostUrl_) {
	QString typeName__QString = QString::fromUtf8(typeName_.data, typeName_.len);
	return new (std::nothrow) QRemoteObjectSourceLocationInfo(typeName__QString, *hostUrl_);
}

QRemoteObjectSourceLocationInfo* QRemoteObjectSourceLocationInfo_new_from(QRemoteObjectSourceLocationInfo* from) {
	return new (std::nothrow) QRemoteObjectSourceLocationInfo(*from);
}

bool QRemoteObjectSourceLocationInfo_operatorEqual(const QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* other) {
	return (*self == *other);
}

bool QRemoteObjectSourceLocationInfo_operatorNotEqual(const QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* other) {
	return (*self != *other);
}

struct seaqt_string QRemoteObjectSourceLocationInfo_typeName(const QRemoteObjectSourceLocationInfo* self) {
	QString typeName_ret = self->typeName;
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray typeName_b = typeName_ret.toUtf8();
	struct seaqt_string typeName_ms;
	typeName_ms.len = typeName_b.length();
	typeName_ms.data = static_cast<char*>(malloc(typeName_ms.len));
	memcpy(typeName_ms.data, typeName_b.data(), typeName_ms.len);
	return typeName_ms;
}

void QRemoteObjectSourceLocationInfo_setTypeName(QRemoteObjectSourceLocationInfo* self, struct seaqt_string typeName) {
	QString typeName_QString = QString::fromUtf8(typeName.data, typeName.len);
	self->typeName = typeName_QString;
}

QUrl* QRemoteObjectSourceLocationInfo_hostUrl(const QRemoteObjectSourceLocationInfo* self) {
	return new QUrl(self->hostUrl);
}

void QRemoteObjectSourceLocationInfo_setHostUrl(QRemoteObjectSourceLocationInfo* self, QUrl* hostUrl) {
	self->hostUrl = *hostUrl;
}

void QRemoteObjectSourceLocationInfo_operatorAssign(QRemoteObjectSourceLocationInfo* self, QRemoteObjectSourceLocationInfo* from) {
	self->operator=(*from);
}

void QRemoteObjectSourceLocationInfo_delete(QRemoteObjectSourceLocationInfo* self) {
	delete self;
}

