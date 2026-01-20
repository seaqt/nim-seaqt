#include <QList>
#include <QMediaContent>
#include <QMediaPlaylist>
#include <QMediaResource>
#include <QNetworkRequest>
#include <QUrl>
#include <qmediacontent.h>
#include "gen_qmediacontent.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QMediaContent* QMediaContent_new() {
	return new (std::nothrow) QMediaContent();
}

QMediaContent* QMediaContent_new_contentUrl(QUrl* contentUrl) {
	return new (std::nothrow) QMediaContent(*contentUrl);
}

QMediaContent* QMediaContent_new_contentRequest(QNetworkRequest* contentRequest) {
	return new (std::nothrow) QMediaContent(*contentRequest);
}

QMediaContent* QMediaContent_new_contentResource(QMediaResource* contentResource) {
	return new (std::nothrow) QMediaContent(*contentResource);
}

QMediaContent* QMediaContent_new_resources(struct seaqt_array /* of QMediaResource* */  resources) {
	QMediaResourceList resources_QList;
	resources_QList.reserve(resources.len);
	QMediaResource** resources_arr = static_cast<QMediaResource**>(resources.data);
	for(size_t i = 0; i < resources.len; ++i) {
		resources_QList.push_back(*(resources_arr[i]));
	}
	return new (std::nothrow) QMediaContent(resources_QList);
}

QMediaContent* QMediaContent_new_from(QMediaContent* from) {
	return new (std::nothrow) QMediaContent(*from);
}

QMediaContent* QMediaContent_new_playlist(QMediaPlaylist* playlist) {
	return new (std::nothrow) QMediaContent(playlist);
}

QMediaContent* QMediaContent_new_playlist_contentUrl(QMediaPlaylist* playlist, QUrl* contentUrl) {
	return new (std::nothrow) QMediaContent(playlist, *contentUrl);
}

QMediaContent* QMediaContent_new_playlist_contentUrl_takeOwnership(QMediaPlaylist* playlist, QUrl* contentUrl, bool takeOwnership) {
	return new (std::nothrow) QMediaContent(playlist, *contentUrl, takeOwnership);
}

void QMediaContent_operatorAssign(QMediaContent* self, QMediaContent* from) {
	self->operator=(*from);
}

bool QMediaContent_operatorEqual(const QMediaContent* self, QMediaContent* other) {
	return (*self == *other);
}

bool QMediaContent_operatorNotEqual(const QMediaContent* self, QMediaContent* other) {
	return (*self != *other);
}

bool QMediaContent_isNull(const QMediaContent* self) {
	return self->isNull();
}

QNetworkRequest* QMediaContent_request(const QMediaContent* self) {
	return new QNetworkRequest(self->request());
}

QUrl* QMediaContent_canonicalUrl(const QMediaContent* self) {
	return new QUrl(self->canonicalUrl());
}

QNetworkRequest* QMediaContent_canonicalRequest(const QMediaContent* self) {
	return new QNetworkRequest(self->canonicalRequest());
}

QMediaResource* QMediaContent_canonicalResource(const QMediaContent* self) {
	return new QMediaResource(self->canonicalResource());
}

struct seaqt_array /* of QMediaResource* */  QMediaContent_resources(const QMediaContent* self) {
	QMediaResourceList _ret = self->resources();
	// Convert QList<> from C++ memory to manually-managed C memory
	QMediaResource** _arr = static_cast<QMediaResource**>(malloc(sizeof(QMediaResource*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QMediaResource(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMediaPlaylist* QMediaContent_playlist(const QMediaContent* self) {
	return self->playlist();
}

void QMediaContent_delete(QMediaContent* self) {
	delete self;
}

