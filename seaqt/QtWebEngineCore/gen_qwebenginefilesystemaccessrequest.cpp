#include <QMetaObject>
#include <QUrl>
#include <QWebEngineFileSystemAccessRequest>
#include <qwebenginefilesystemaccessrequest.h>
#include "gen_qwebenginefilesystemaccessrequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineFileSystemAccessRequest* QWebEngineFileSystemAccessRequest_new(QWebEngineFileSystemAccessRequest* from) {
	return new (std::nothrow) QWebEngineFileSystemAccessRequest(*from);
}

void QWebEngineFileSystemAccessRequest_operatorAssign(QWebEngineFileSystemAccessRequest* self, QWebEngineFileSystemAccessRequest* from) {
	self->operator=(*from);
}

void QWebEngineFileSystemAccessRequest_swap(QWebEngineFileSystemAccessRequest* self, QWebEngineFileSystemAccessRequest* other) {
	self->swap(*other);
}

void QWebEngineFileSystemAccessRequest_accept(QWebEngineFileSystemAccessRequest* self) {
	self->accept();
}

void QWebEngineFileSystemAccessRequest_reject(QWebEngineFileSystemAccessRequest* self) {
	self->reject();
}

QUrl* QWebEngineFileSystemAccessRequest_origin(const QWebEngineFileSystemAccessRequest* self) {
	return new QUrl(self->origin());
}

QUrl* QWebEngineFileSystemAccessRequest_filePath(const QWebEngineFileSystemAccessRequest* self) {
	return new QUrl(self->filePath());
}

int QWebEngineFileSystemAccessRequest_handleType(const QWebEngineFileSystemAccessRequest* self) {
	QWebEngineFileSystemAccessRequest::HandleType _ret = self->handleType();
	return static_cast<int>(_ret);
}

int QWebEngineFileSystemAccessRequest_accessFlags(const QWebEngineFileSystemAccessRequest* self) {
	QWebEngineFileSystemAccessRequest::AccessFlags _ret = self->accessFlags();
	return static_cast<int>(_ret);
}

const QMetaObject* QWebEngineFileSystemAccessRequest_staticMetaObject() { return &QWebEngineFileSystemAccessRequest::staticMetaObject; }
void QWebEngineFileSystemAccessRequest_delete(QWebEngineFileSystemAccessRequest* self) {
	delete self;
}

