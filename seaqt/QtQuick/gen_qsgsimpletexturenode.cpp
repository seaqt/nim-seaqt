#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleTextureNode>
#include <QSGTexture>
#include <qsgsimpletexturenode.h>
#include "gen_qsgsimpletexturenode.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGSimpleTextureNode final : public QSGSimpleTextureNode {
	const QSGSimpleTextureNode_VTable* vtbl;
public:
	friend void* QSGSimpleTextureNode_vdata(VirtualQSGSimpleTextureNode* self);
	friend VirtualQSGSimpleTextureNode* vdata_QSGSimpleTextureNode(void* vdata);

	VirtualQSGSimpleTextureNode(const QSGSimpleTextureNode_VTable* vtbl): QSGSimpleTextureNode(), vtbl(vtbl) {}

	virtual ~VirtualQSGSimpleTextureNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQSGSimpleTextureNode* QSGSimpleTextureNode_new(const QSGSimpleTextureNode_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGSimpleTextureNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGSimpleTextureNode(vtbl) : nullptr;
}

void QSGSimpleTextureNode_virtbase(QSGSimpleTextureNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGSimpleTextureNode_setRect_rect(QSGSimpleTextureNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGSimpleTextureNode_setRect_x_y_w_h(QSGSimpleTextureNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGSimpleTextureNode_rect(const QSGSimpleTextureNode* self) {
	return new QRectF(self->rect());
}

void QSGSimpleTextureNode_setSourceRect_r(QSGSimpleTextureNode* self, QRectF* r) {
	self->setSourceRect(*r);
}

void QSGSimpleTextureNode_setSourceRect_x_y_w_h(QSGSimpleTextureNode* self, double x, double y, double w, double h) {
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

void* QSGSimpleTextureNode_vdata(VirtualQSGSimpleTextureNode* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGSimpleTextureNode>()); }
VirtualQSGSimpleTextureNode* vdata_QSGSimpleTextureNode(void* vdata) { return reinterpret_cast<VirtualQSGSimpleTextureNode*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGSimpleTextureNode>()); }

bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleTextureNode* self) {

	return self->QSGSimpleTextureNode::isSubtreeBlocked();
}

void QSGSimpleTextureNode_virtualbase_preprocess(VirtualQSGSimpleTextureNode* self) {

	self->QSGSimpleTextureNode::preprocess();
}

void QSGSimpleTextureNode_delete(QSGSimpleTextureNode* self) {
	delete self;
}

