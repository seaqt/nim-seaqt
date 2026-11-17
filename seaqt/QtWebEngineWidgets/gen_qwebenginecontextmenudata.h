#pragma once
#ifndef SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINECONTEXTMENUDATA_H
#define SEAQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINECONTEXTMENUDATA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QPoint;
class QUrl;
class QWebEngineContextMenuData;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QPoint QPoint;
typedef struct QUrl QUrl;
typedef struct QWebEngineContextMenuData QWebEngineContextMenuData;
#endif

QWebEngineContextMenuData* QWebEngineContextMenuData_new();
QWebEngineContextMenuData* QWebEngineContextMenuData_new_from(QWebEngineContextMenuData* from);

void QWebEngineContextMenuData_operatorAssign(QWebEngineContextMenuData* self, QWebEngineContextMenuData* from);
bool QWebEngineContextMenuData_isValid(const QWebEngineContextMenuData* self);
QPoint* QWebEngineContextMenuData_position(const QWebEngineContextMenuData* self);
struct seaqt_string QWebEngineContextMenuData_selectedText(const QWebEngineContextMenuData* self);
struct seaqt_string QWebEngineContextMenuData_linkText(const QWebEngineContextMenuData* self);
QUrl* QWebEngineContextMenuData_linkUrl(const QWebEngineContextMenuData* self);
QUrl* QWebEngineContextMenuData_mediaUrl(const QWebEngineContextMenuData* self);
int QWebEngineContextMenuData_mediaType(const QWebEngineContextMenuData* self);
bool QWebEngineContextMenuData_isContentEditable(const QWebEngineContextMenuData* self);
struct seaqt_string QWebEngineContextMenuData_misspelledWord(const QWebEngineContextMenuData* self);
struct seaqt_array /* of struct seaqt_string */  QWebEngineContextMenuData_spellCheckerSuggestions(const QWebEngineContextMenuData* self);
int QWebEngineContextMenuData_mediaFlags(const QWebEngineContextMenuData* self);
int QWebEngineContextMenuData_editFlags(const QWebEngineContextMenuData* self);

const QMetaObject* QWebEngineContextMenuData_staticMetaObject();
void QWebEngineContextMenuData_delete(QWebEngineContextMenuData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
