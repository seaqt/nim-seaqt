#include <QMetaObject>
#include <QUrl>
#include <QWebEngineQuotaRequest>
#include <qwebenginequotarequest.h>
#include "gen_qwebenginequotarequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineQuotaRequest* QWebEngineQuotaRequest_new() {
	return new (std::nothrow) QWebEngineQuotaRequest();
}

QWebEngineQuotaRequest* QWebEngineQuotaRequest_new2(QWebEngineQuotaRequest* param1) {
	return new (std::nothrow) QWebEngineQuotaRequest(*param1);
}

void QWebEngineQuotaRequest_accept(QWebEngineQuotaRequest* self) {
	self->accept();
}

void QWebEngineQuotaRequest_reject(QWebEngineQuotaRequest* self) {
	self->reject();
}

QUrl* QWebEngineQuotaRequest_origin(const QWebEngineQuotaRequest* self) {
	return new QUrl(self->origin());
}

long long QWebEngineQuotaRequest_requestedSize(const QWebEngineQuotaRequest* self) {
	qint64 _ret = self->requestedSize();
	return static_cast<long long>(_ret);
}

bool QWebEngineQuotaRequest_operatorEqual(const QWebEngineQuotaRequest* self, QWebEngineQuotaRequest* that) {
	return (*self == *that);
}

bool QWebEngineQuotaRequest_operatorNotEqual(const QWebEngineQuotaRequest* self, QWebEngineQuotaRequest* that) {
	return (*self != *that);
}

const QMetaObject* QWebEngineQuotaRequest_staticMetaObject() { return &QWebEngineQuotaRequest::staticMetaObject; }
void QWebEngineQuotaRequest_delete(QWebEngineQuotaRequest* self) {
	delete self;
}

