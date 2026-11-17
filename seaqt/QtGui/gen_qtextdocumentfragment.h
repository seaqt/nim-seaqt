#pragma once
#ifndef SEAQT_QTGUI_GEN_QTEXTDOCUMENTFRAGMENT_H
#define SEAQT_QTGUI_GEN_QTEXTDOCUMENTFRAGMENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QTextCursor;
class QTextDocument;
class QTextDocumentFragment;
#else
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextDocumentFragment QTextDocumentFragment;
#endif

QTextDocumentFragment* QTextDocumentFragment_new();
QTextDocumentFragment* QTextDocumentFragment_new2(QTextDocument* document);
QTextDocumentFragment* QTextDocumentFragment_new3(QTextCursor* range);
QTextDocumentFragment* QTextDocumentFragment_new4(QTextDocumentFragment* rhs);

void QTextDocumentFragment_operatorAssign(QTextDocumentFragment* self, QTextDocumentFragment* rhs);
bool QTextDocumentFragment_isEmpty(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toPlainText(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toHtml(const QTextDocumentFragment* self);
QTextDocumentFragment* QTextDocumentFragment_fromPlainText(struct seaqt_string plainText);
QTextDocumentFragment* QTextDocumentFragment_fromHtml(struct seaqt_string html);
QTextDocumentFragment* QTextDocumentFragment_fromHtml2(struct seaqt_string html, QTextDocument* resourceProvider);
struct seaqt_string QTextDocumentFragment_toHtmlWithEncoding(const QTextDocumentFragment* self, struct seaqt_string encoding);

void QTextDocumentFragment_delete(QTextDocumentFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
