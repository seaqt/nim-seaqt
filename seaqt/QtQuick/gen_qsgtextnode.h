#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGTEXTNODE_H
#define SEAQT_QTQUICK_GEN_QSGTEXTNODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QPointF;
class QRectF;
class QSGNode;
class QSGTextNode;
class QSGTransformNode;
class QTextDocument;
class QTextLayout;
#else
typedef struct QColor QColor;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QSGNode QSGNode;
typedef struct QSGTextNode QSGTextNode;
typedef struct QSGTransformNode QSGTransformNode;
typedef struct QTextDocument QTextDocument;
typedef struct QTextLayout QTextLayout;
#endif

void QSGTextNode_virtbase(QSGTextNode* src, QSGTransformNode** outptr_QSGTransformNode);
void QSGTextNode_setColor(QSGTextNode* self, QColor* color);
QColor* QSGTextNode_color(const QSGTextNode* self);
void QSGTextNode_setTextStyle(QSGTextNode* self, uint8_t textStyle);
uint8_t QSGTextNode_textStyle(QSGTextNode* self);
void QSGTextNode_setStyleColor(QSGTextNode* self, QColor* styleColor);
QColor* QSGTextNode_styleColor(const QSGTextNode* self);
void QSGTextNode_setLinkColor(QSGTextNode* self, QColor* linkColor);
QColor* QSGTextNode_linkColor(const QSGTextNode* self);
void QSGTextNode_setSelectionColor(QSGTextNode* self, QColor* selectionColor);
QColor* QSGTextNode_selectionColor(const QSGTextNode* self);
void QSGTextNode_setSelectionTextColor(QSGTextNode* self, QColor* selectionTextColor);
QColor* QSGTextNode_selectionTextColor(const QSGTextNode* self);
void QSGTextNode_setRenderType(QSGTextNode* self, uint8_t renderType);
uint8_t QSGTextNode_renderType(const QSGTextNode* self);
void QSGTextNode_setRenderTypeQuality(QSGTextNode* self, int renderTypeQuality);
int QSGTextNode_renderTypeQuality(const QSGTextNode* self);
void QSGTextNode_setFiltering(QSGTextNode* self, int filtering);
int QSGTextNode_filtering(const QSGTextNode* self);
void QSGTextNode_clear(QSGTextNode* self);
void QSGTextNode_setViewport(QSGTextNode* self, QRectF* viewport);
QRectF* QSGTextNode_viewport(const QSGTextNode* self);
void QSGTextNode_addTextLayout_position_layout(QSGTextNode* self, QPointF* position, QTextLayout* layout);
void QSGTextNode_addTextDocument_position_document(QSGTextNode* self, QPointF* position, QTextDocument* document);
void QSGTextNode_addTextLayout_position_layout_selectionStart(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart);
void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount);
void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount, int lineStart);
void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart_lineCount(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount, int lineStart, int lineCount);
void QSGTextNode_addTextDocument_position_document_selectionStart(QSGTextNode* self, QPointF* position, QTextDocument* document, int selectionStart);
void QSGTextNode_addTextDocument_position_document_selectionStart_selectionCount(QSGTextNode* self, QPointF* position, QTextDocument* document, int selectionStart, int selectionCount);

void QSGTextNode_delete(QSGTextNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
