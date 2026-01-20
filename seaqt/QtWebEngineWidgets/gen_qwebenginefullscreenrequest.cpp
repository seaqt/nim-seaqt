#include <QMetaObject>
#include <QUrl>
#include <QWebEngineFullScreenRequest>
#include <qwebenginefullscreenrequest.h>
#include "gen_qwebenginefullscreenrequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineFullScreenRequest* QWebEngineFullScreenRequest_new(QWebEngineFullScreenRequest* from) {
	return new (std::nothrow) QWebEngineFullScreenRequest(*from);
}

void QWebEngineFullScreenRequest_reject(QWebEngineFullScreenRequest* self) {
	self->reject();
}

void QWebEngineFullScreenRequest_accept(QWebEngineFullScreenRequest* self) {
	self->accept();
}

bool QWebEngineFullScreenRequest_toggleOn(const QWebEngineFullScreenRequest* self) {
	return self->toggleOn();
}

QUrl* QWebEngineFullScreenRequest_origin(const QWebEngineFullScreenRequest* self) {
	const QUrl& _ret = self->origin();
	// Cast returned reference into pointer
	return const_cast<QUrl*>(&_ret);
}

const QMetaObject* QWebEngineFullScreenRequest_staticMetaObject() { return &QWebEngineFullScreenRequest::staticMetaObject; }
void QWebEngineFullScreenRequest_delete(QWebEngineFullScreenRequest* self) {
	delete self;
}

