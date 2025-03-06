#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleTextureNode>
#include <QSGTexture>
#include <qsgsimpletexturenode.h>
#include "gen_qsgsimpletexturenode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGSimpleTextureNode final : public QSGSimpleTextureNode {
	struct QSGSimpleTextureNode_VTable* vtbl;
public:

	VirtualQSGSimpleTextureNode(struct QSGSimpleTextureNode_VTable* vtbl): QSGSimpleTextureNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGSimpleTextureNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGSimpleTextureNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGSimpleTextureNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGSimpleTextureNode_virtualbase_preprocess(void* self);

};

QSGSimpleTextureNode* QSGSimpleTextureNode_new(struct QSGSimpleTextureNode_VTable* vtbl) {
	return new VirtualQSGSimpleTextureNode(vtbl);
}

void QSGSimpleTextureNode_virtbase(QSGSimpleTextureNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGSimpleTextureNode_setRect(QSGSimpleTextureNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGSimpleTextureNode_setRect2(QSGSimpleTextureNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGSimpleTextureNode_rect(const QSGSimpleTextureNode* self) {
	return new QRectF(self->rect());
}

void QSGSimpleTextureNode_setSourceRect(QSGSimpleTextureNode* self, QRectF* r) {
	self->setSourceRect(*r);
}

void QSGSimpleTextureNode_setSourceRect2(QSGSimpleTextureNode* self, double x, double y, double w, double h) {
	self->setSourceRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGSimpleTextureNode_sourceRect(const QSGSimpleTextureNode* self) {
	return new QRectF(self->sourceRect());
}

void QSGSimpleTextureNode_setTexture(QSGSimpleTextureNode* self, QSGTexture* texture) {
	self->setTexture(texture);
}

QSGTexture* QSGSimpleTextureNode_texture(const QSGSimpleTextureNode* self) {
	return self->texture();
}

void QSGSimpleTextureNode_setFiltering(QSGSimpleTextureNode* self, int filtering) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filtering));
}

int QSGSimpleTextureNode_filtering(const QSGSimpleTextureNode* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGSimpleTextureNode_setTextureCoordinatesTransform(QSGSimpleTextureNode* self, int mode) {
	self->setTextureCoordinatesTransform(static_cast<QSGSimpleTextureNode::TextureCoordinatesTransformMode>(mode));
}

int QSGSimpleTextureNode_textureCoordinatesTransform(const QSGSimpleTextureNode* self) {
	QSGSimpleTextureNode::TextureCoordinatesTransformMode _ret = self->textureCoordinatesTransform();
	return static_cast<int>(_ret);
}

void QSGSimpleTextureNode_setOwnsTexture(QSGSimpleTextureNode* self, bool owns) {
	self->setOwnsTexture(owns);
}

bool QSGSimpleTextureNode_ownsTexture(const QSGSimpleTextureNode* self) {
	return self->ownsTexture();
}

bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGSimpleTextureNode*)(self) )->QSGSimpleTextureNode::isSubtreeBlocked();

}

void QSGSimpleTextureNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGSimpleTextureNode*)(self) )->QSGSimpleTextureNode::preprocess();

}

void QSGSimpleTextureNode_delete(QSGSimpleTextureNode* self) {
	delete self;
}

