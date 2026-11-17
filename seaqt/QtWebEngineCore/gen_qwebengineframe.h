#pragma once
#ifndef SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEFRAME_H
#define SEAQT_QTWEBENGINECORE_GEN_QWEBENGINEFRAME_H

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
class QSizeF;
class QUrl;
class QWebEngineFrame;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QSizeF QSizeF;
typedef struct QUrl QUrl;
typedef struct QWebEngineFrame QWebEngineFrame;
#endif

QWebEngineFrame* QWebEngineFrame_new();
QWebEngineFrame* QWebEngineFrame_new_from(QWebEngineFrame* from);

void QWebEngineFrame_operatorAssign(QWebEngineFrame* self, QWebEngineFrame* from);
bool QWebEngineFrame_isValid(const QWebEngineFrame* self);
struct seaqt_string QWebEngineFrame_name(const QWebEngineFrame* self);
struct seaqt_string QWebEngineFrame_htmlName(const QWebEngineFrame* self);
struct seaqt_array /* of QWebEngineFrame* */  QWebEngineFrame_children(const QWebEngineFrame* self);
QUrl* QWebEngineFrame_url(const QWebEngineFrame* self);
QSizeF* QWebEngineFrame_size(const QWebEngineFrame* self);
bool QWebEngineFrame_isMainFrame(const QWebEngineFrame* self);
void QWebEngineFrame_runJavaScript_script(QWebEngineFrame* self, struct seaqt_string script);
void QWebEngineFrame_printToPdf_filePath(QWebEngineFrame* self, struct seaqt_string filePath);
void QWebEngineFrame_runJavaScript_script_worldId(QWebEngineFrame* self, struct seaqt_string script, unsigned int worldId);

const QMetaObject* QWebEngineFrame_staticMetaObject();
void QWebEngineFrame_delete(QWebEngineFrame* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
