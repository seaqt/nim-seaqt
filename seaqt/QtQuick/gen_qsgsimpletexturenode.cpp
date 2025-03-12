#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleTextureNode>
#include <QSGTexture>
#include <qsgsimpletexturenode.h>
#include "gen_qsgsimpletexturenode.h"
class VirtualQSGSimpleTextureNode final : public QSGSimpleTextureNode {
	const QSGSimpleTextureNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGSimpleTextureNode_VTable* QSGSimpleTextureNode_vtbl(const VirtualQSGSimpleTextureNode* self);
	friend void* QSGSimpleTextureNode_vdata(const VirtualQSGSimpleTextureNode* self);
	friend void QSGSimpleTextureNode_setVdata(VirtualQSGSimpleTextureNode* self, void* vdata);

	VirtualQSGSimpleTextureNode(const QSGSimpleTextureNode_VTable* vtbl, void* vdata): QSGSimpleTextureNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGSimpleTextureNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGSimpleTextureNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleTextureNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGSimpleTextureNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGSimpleTextureNode_virtualbase_preprocess(VirtualQSGSimpleTextureNode* self);

};

VirtualQSGSimpleTextureNode* QSGSimpleTextureNode_new(const QSGSimpleTextureNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGSimpleTextureNode(vtbl, vdata);
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

bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleTextureNode* self) {

	return self->QSGSimpleTextureNode::isSubtreeBlocked();
}

void QSGSimpleTextureNode_virtualbase_preprocess(VirtualQSGSimpleTextureNode* self) {

	self->QSGSimpleTextureNode::preprocess();
}

const QSGSimpleTextureNode_VTable* QSGSimpleTextureNode_vtbl(const VirtualQSGSimpleTextureNode* self) { return self->vtbl; }
void* QSGSimpleTextureNode_vdata(const VirtualQSGSimpleTextureNode* self) { return self->vdata; }
void QSGSimpleTextureNode_setVdata(VirtualQSGSimpleTextureNode* self, void* vdata) { self->vdata = vdata; }

void QSGSimpleTextureNode_delete(QSGSimpleTextureNode* self) {
	delete self;
}

