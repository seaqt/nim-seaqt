#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEDESKTOPMEDIAREQUEST_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEDESKTOPMEDIAREQUEST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractListModel;
class QMetaObject;
class QModelIndex;
class QWebEngineDesktopMediaRequest;
#else
typedef struct QAbstractListModel QAbstractListModel;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QWebEngineDesktopMediaRequest QWebEngineDesktopMediaRequest;
#endif

QWebEngineDesktopMediaRequest* QWebEngineDesktopMediaRequest_new(QWebEngineDesktopMediaRequest* from);

void QWebEngineDesktopMediaRequest_operatorAssign(QWebEngineDesktopMediaRequest* self, QWebEngineDesktopMediaRequest* from);
void QWebEngineDesktopMediaRequest_swap(QWebEngineDesktopMediaRequest* self, QWebEngineDesktopMediaRequest* other);
QAbstractListModel* QWebEngineDesktopMediaRequest_screensModel(const QWebEngineDesktopMediaRequest* self);
QAbstractListModel* QWebEngineDesktopMediaRequest_windowsModel(const QWebEngineDesktopMediaRequest* self);
void QWebEngineDesktopMediaRequest_selectScreen(const QWebEngineDesktopMediaRequest* self, QModelIndex* index);
void QWebEngineDesktopMediaRequest_selectWindow(const QWebEngineDesktopMediaRequest* self, QModelIndex* index);
void QWebEngineDesktopMediaRequest_cancel(const QWebEngineDesktopMediaRequest* self);

const QMetaObject* QWebEngineDesktopMediaRequest_staticMetaObject();
void QWebEngineDesktopMediaRequest_delete(QWebEngineDesktopMediaRequest* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
