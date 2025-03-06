#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometry>
#include <QSGGeometryNode>
#include <QSGImageNode>
#include <QSGNode>
#include <QSGTexture>
#include <qsgimagenode.h>
#include "gen_qsgimagenode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QSGImageNode_virtbase(QSGImageNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGImageNode_setRect(QSGImageNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGImageNode_setRect2(QSGImageNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGImageNode_rect(const QSGImageNode* self) {
	return new QRectF(self->rect());
}

void QSGImageNode_setSourceRect(QSGImageNode* self, QRectF* r) {
	self->setSourceRect(*r);
}

void QSGImageNode_setSourceRect2(QSGImageNode* self, double x, double y, double w, double h) {
	self->setSourceRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGImageNode_sourceRect(const QSGImageNode* self) {
	return new QRectF(self->sourceRect());
}

void QSGImageNode_setTexture(QSGImageNode* self, QSGTexture* texture) {
	self->setTexture(texture);
}

QSGTexture* QSGImageNode_texture(const QSGImageNode* self) {
	return self->texture();
}

void QSGImageNode_setFiltering(QSGImageNode* self, int filtering) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filtering));
}

int QSGImageNode_filtering(const QSGImageNode* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGImageNode_setMipmapFiltering(QSGImageNode* self, int filtering) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filtering));
}

int QSGImageNode_mipmapFiltering(const QSGImageNode* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGImageNode_setTextureCoordinatesTransform(QSGImageNode* self, int mode) {
	self->setTextureCoordinatesTransform(static_cast<QSGImageNode::TextureCoordinatesTransformMode>(mode));
}

int QSGImageNode_textureCoordinatesTransform(const QSGImageNode* self) {
	QSGImageNode::TextureCoordinatesTransformMode _ret = self->textureCoordinatesTransform();
	return static_cast<int>(_ret);
}

void QSGImageNode_setOwnsTexture(QSGImageNode* self, bool owns) {
	self->setOwnsTexture(owns);
}

bool QSGImageNode_ownsTexture(const QSGImageNode* self) {
	return self->ownsTexture();
}

void QSGImageNode_rebuildGeometry(QSGGeometry* g, QSGTexture* texture, QRectF* rect, QRectF* sourceRect, int texCoordMode) {
	QSGImageNode::rebuildGeometry(g, texture, *rect, *sourceRect, static_cast<QSGImageNode::TextureCoordinatesTransformMode>(texCoordMode));
}

void QSGImageNode_delete(QSGImageNode* self) {
	delete self;
}

