#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTENT_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIACONTENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMediaContent;
class QMediaPlaylist;
class QMediaResource;
class QNetworkRequest;
class QUrl;
#else
typedef struct QMediaContent QMediaContent;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMediaResource QMediaResource;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QUrl QUrl;
#endif

QMediaContent* QMediaContent_new();
QMediaContent* QMediaContent_new_contentUrl(QUrl* contentUrl);
QMediaContent* QMediaContent_new_contentRequest(QNetworkRequest* contentRequest);
QMediaContent* QMediaContent_new_contentResource(QMediaResource* contentResource);
QMediaContent* QMediaContent_new_resources(struct seaqt_array /* of QMediaResource* */  resources);
QMediaContent* QMediaContent_new_from(QMediaContent* from);
QMediaContent* QMediaContent_new_playlist(QMediaPlaylist* playlist);
QMediaContent* QMediaContent_new_playlist_contentUrl(QMediaPlaylist* playlist, QUrl* contentUrl);
QMediaContent* QMediaContent_new_playlist_contentUrl_takeOwnership(QMediaPlaylist* playlist, QUrl* contentUrl, bool takeOwnership);

void QMediaContent_operatorAssign(QMediaContent* self, QMediaContent* from);
bool QMediaContent_operatorEqual(const QMediaContent* self, QMediaContent* other);
bool QMediaContent_operatorNotEqual(const QMediaContent* self, QMediaContent* other);
bool QMediaContent_isNull(const QMediaContent* self);
QNetworkRequest* QMediaContent_request(const QMediaContent* self);
QUrl* QMediaContent_canonicalUrl(const QMediaContent* self);
QNetworkRequest* QMediaContent_canonicalRequest(const QMediaContent* self);
QMediaResource* QMediaContent_canonicalResource(const QMediaContent* self);
struct seaqt_array /* of QMediaResource* */  QMediaContent_resources(const QMediaContent* self);
QMediaPlaylist* QMediaContent_playlist(const QMediaContent* self);

void QMediaContent_delete(QMediaContent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
