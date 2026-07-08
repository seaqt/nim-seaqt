#include <QColor>
#include <QPointF>
#include <QRectF>
#include <QSGNode>
#include <QSGTextNode>
#include <QSGTransformNode>
#include <QTextDocument>
#include <QTextLayout>
#include <qsgtextnode.h>
#include "gen_qsgtextnode.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QSGTextNode_virtbase(QSGTextNode* src, QSGTransformNode** outptr_QSGTransformNode) {
	*outptr_QSGTransformNode = static_cast<QSGTransformNode*>(src);
}

void QSGTextNode_setColor(QSGTextNode* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGTextNode_color(const QSGTextNode* self) {
	return new QColor(self->color());
}

void QSGTextNode_setTextStyle(QSGTextNode* self, uint8_t textStyle) {
	self->setTextStyle(static_cast<QSGTextNode::TextStyle>(textStyle));
}

uint8_t QSGTextNode_textStyle(QSGTextNode* self) {
	QSGTextNode::TextStyle _ret = self->textStyle();
	return static_cast<uint8_t>(_ret);
}

void QSGTextNode_setStyleColor(QSGTextNode* self, QColor* styleColor) {
	self->setStyleColor(*styleColor);
}

QColor* QSGTextNode_styleColor(const QSGTextNode* self) {
	return new QColor(self->styleColor());
}

void QSGTextNode_setLinkColor(QSGTextNode* self, QColor* linkColor) {
	self->setLinkColor(*linkColor);
}

QColor* QSGTextNode_linkColor(const QSGTextNode* self) {
	return new QColor(self->linkColor());
}

void QSGTextNode_setSelectionColor(QSGTextNode* self, QColor* selectionColor) {
	self->setSelectionColor(*selectionColor);
}

QColor* QSGTextNode_selectionColor(const QSGTextNode* self) {
	return new QColor(self->selectionColor());
}

void QSGTextNode_setSelectionTextColor(QSGTextNode* self, QColor* selectionTextColor) {
	self->setSelectionTextColor(*selectionTextColor);
}

QColor* QSGTextNode_selectionTextColor(const QSGTextNode* self) {
	return new QColor(self->selectionTextColor());
}

void QSGTextNode_setRenderType(QSGTextNode* self, uint8_t renderType) {
	self->setRenderType(static_cast<QSGTextNode::RenderType>(renderType));
}

uint8_t QSGTextNode_renderType(const QSGTextNode* self) {
	QSGTextNode::RenderType _ret = self->renderType();
	return static_cast<uint8_t>(_ret);
}

void QSGTextNode_setRenderTypeQuality(QSGTextNode* self, int renderTypeQuality) {
	self->setRenderTypeQuality(static_cast<int>(renderTypeQuality));
}

int QSGTextNode_renderTypeQuality(const QSGTextNode* self) {
	return self->renderTypeQuality();
}

void QSGTextNode_setFiltering(QSGTextNode* self, int filtering) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filtering));
}

int QSGTextNode_filtering(const QSGTextNode* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGTextNode_clear(QSGTextNode* self) {
	self->clear();
}

void QSGTextNode_setViewport(QSGTextNode* self, QRectF* viewport) {
	self->setViewport(*viewport);
}

QRectF* QSGTextNode_viewport(const QSGTextNode* self) {
	return new QRectF(self->viewport());
}

void QSGTextNode_addTextLayout_position_layout(QSGTextNode* self, QPointF* position, QTextLayout* layout) {
	self->addTextLayout(*position, layout);
}

void QSGTextNode_addTextDocument_position_document(QSGTextNode* self, QPointF* position, QTextDocument* document) {
	self->addTextDocument(*position, document);
}

void QSGTextNode_addTextLayout_position_layout_selectionStart(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart) {
	self->addTextLayout(*position, layout, static_cast<int>(selectionStart));
}

void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount) {
	self->addTextLayout(*position, layout, static_cast<int>(selectionStart), static_cast<int>(selectionCount));
}

void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount, int lineStart) {
	self->addTextLayout(*position, layout, static_cast<int>(selectionStart), static_cast<int>(selectionCount), static_cast<int>(lineStart));
}

void QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart_lineCount(QSGTextNode* self, QPointF* position, QTextLayout* layout, int selectionStart, int selectionCount, int lineStart, int lineCount) {
	self->addTextLayout(*position, layout, static_cast<int>(selectionStart), static_cast<int>(selectionCount), static_cast<int>(lineStart), static_cast<int>(lineCount));
}

void QSGTextNode_addTextDocument_position_document_selectionStart(QSGTextNode* self, QPointF* position, QTextDocument* document, int selectionStart) {
	self->addTextDocument(*position, document, static_cast<int>(selectionStart));
}

void QSGTextNode_addTextDocument_position_document_selectionStart_selectionCount(QSGTextNode* self, QPointF* position, QTextDocument* document, int selectionStart, int selectionCount) {
	self->addTextDocument(*position, document, static_cast<int>(selectionStart), static_cast<int>(selectionCount));
}

void QSGTextNode_delete(QSGTextNode* self) {
	delete self;
}

