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
QTextDocumentFragment* QTextDocumentFragment_new_document(QTextDocument* document);
QTextDocumentFragment* QTextDocumentFragment_new_range(QTextCursor* range);
QTextDocumentFragment* QTextDocumentFragment_new_from(QTextDocumentFragment* from);

void QTextDocumentFragment_operatorAssign(QTextDocumentFragment* self, QTextDocumentFragment* from);
bool QTextDocumentFragment_isEmpty(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toPlainText(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toRawText(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toHtml(const QTextDocumentFragment* self);
struct seaqt_string QTextDocumentFragment_toMarkdown(const QTextDocumentFragment* self);
QTextDocumentFragment* QTextDocumentFragment_fromPlainText(struct seaqt_string plainText);
QTextDocumentFragment* QTextDocumentFragment_fromHtml_html(struct seaqt_string html);
QTextDocumentFragment* QTextDocumentFragment_fromMarkdown_markdown(struct seaqt_string markdown);
struct seaqt_string QTextDocumentFragment_toMarkdown_features(const QTextDocumentFragment* self, int features);
QTextDocumentFragment* QTextDocumentFragment_fromHtml_html_resourceProvider(struct seaqt_string html, QTextDocument* resourceProvider);
QTextDocumentFragment* QTextDocumentFragment_fromMarkdown_markdown_features(struct seaqt_string markdown, int features);

void QTextDocumentFragment_delete(QTextDocumentFragment* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
