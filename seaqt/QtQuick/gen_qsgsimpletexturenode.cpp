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

bool miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked(const QSGSimpleTextureNode*, intptr_t);
void miqt_exec_callback_QSGSimpleTextureNode_preprocess(QSGSimpleTextureNode*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGSimpleTextureNode final : public QSGSimpleTextureNode {
public:

	VirtualQSGSimpleTextureNode(): QSGSimpleTextureNode() {};

	virtual ~VirtualQSGSimpleTextureNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGSimpleTextureNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGSimpleTextureNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGSimpleTextureNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGSimpleTextureNode_virtualbase_preprocess(void* self);

};

QSGSimpleTextureNode* QSGSimpleTextureNode_new() {
	return new VirtualQSGSimpleTextureNode();
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

bool QSGSimpleTextureNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGSimpleTextureNode* self_cast = dynamic_cast<VirtualQSGSimpleTextureNode*>( (QSGSimpleTextureNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGSimpleTextureNode*)(self) )->QSGSimpleTextureNode::isSubtreeBlocked();

}

bool QSGSimpleTextureNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGSimpleTextureNode* self_cast = dynamic_cast<VirtualQSGSimpleTextureNode*>( (QSGSimpleTextureNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGSimpleTextureNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGSimpleTextureNode*)(self) )->QSGSimpleTextureNode::preprocess();

}

void QSGSimpleTextureNode_delete(QSGSimpleTextureNode* self) {
	delete self;
}

