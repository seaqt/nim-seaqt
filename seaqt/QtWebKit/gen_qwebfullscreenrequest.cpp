#include <QUrl>
#include <QWebElement>
#include <QWebFullScreenRequest>
#include <qwebfullscreenrequest.h>
#include "gen_qwebfullscreenrequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebFullScreenRequest* QWebFullScreenRequest_new() {
	return new (std::nothrow) QWebFullScreenRequest();
}

QWebFullScreenRequest* QWebFullScreenRequest_new2(QWebFullScreenRequest* param1) {
	return new (std::nothrow) QWebFullScreenRequest(*param1);
}

void QWebFullScreenRequest_accept(QWebFullScreenRequest* self) {
	self->accept();
}

void QWebFullScreenRequest_reject(QWebFullScreenRequest* self) {
	self->reject();
}

bool QWebFullScreenRequest_toggleOn(const QWebFullScreenRequest* self) {
	return self->toggleOn();
}

QUrl* QWebFullScreenRequest_origin(const QWebFullScreenRequest* self) {
	return new QUrl(self->origin());
}

QWebElement* QWebFullScreenRequest_element(const QWebFullScreenRequest* self) {
	const QWebElement& _ret = self->element();
	// Cast returned reference into pointer
	return const_cast<QWebElement*>(&_ret);
}

void QWebFullScreenRequest_delete(QWebFullScreenRequest* self) {
	delete self;
}

