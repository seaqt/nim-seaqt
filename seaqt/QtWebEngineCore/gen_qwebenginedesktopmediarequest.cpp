#include <QAbstractListModel>
#include <QMetaObject>
#include <QModelIndex>
#include <QWebEngineDesktopMediaRequest>
#include <qwebenginedesktopmediarequest.h>
#include "gen_qwebenginedesktopmediarequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineDesktopMediaRequest* QWebEngineDesktopMediaRequest_new(QWebEngineDesktopMediaRequest* from) {
	return new (std::nothrow) QWebEngineDesktopMediaRequest(*from);
}

void QWebEngineDesktopMediaRequest_operatorAssign(QWebEngineDesktopMediaRequest* self, QWebEngineDesktopMediaRequest* from) {
	self->operator=(*from);
}

void QWebEngineDesktopMediaRequest_swap(QWebEngineDesktopMediaRequest* self, QWebEngineDesktopMediaRequest* other) {
	self->swap(*other);
}

QAbstractListModel* QWebEngineDesktopMediaRequest_screensModel(const QWebEngineDesktopMediaRequest* self) {
	return self->screensModel();
}

QAbstractListModel* QWebEngineDesktopMediaRequest_windowsModel(const QWebEngineDesktopMediaRequest* self) {
	return self->windowsModel();
}

void QWebEngineDesktopMediaRequest_selectScreen(const QWebEngineDesktopMediaRequest* self, QModelIndex* index) {
	self->selectScreen(*index);
}

void QWebEngineDesktopMediaRequest_selectWindow(const QWebEngineDesktopMediaRequest* self, QModelIndex* index) {
	self->selectWindow(*index);
}

void QWebEngineDesktopMediaRequest_cancel(const QWebEngineDesktopMediaRequest* self) {
	self->cancel();
}

const QMetaObject* QWebEngineDesktopMediaRequest_staticMetaObject() { return &QWebEngineDesktopMediaRequest::staticMetaObject; }
void QWebEngineDesktopMediaRequest_delete(QWebEngineDesktopMediaRequest* self) {
	delete self;
}

