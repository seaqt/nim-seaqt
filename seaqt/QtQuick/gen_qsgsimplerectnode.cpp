#include <QColor>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleRectNode>
#include <qsgsimplerectnode.h>
#include "gen_qsgsimplerectnode.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGSimpleRectNode final : public QSGSimpleRectNode {
	const QSGSimpleRectNode_VTable* vtbl;
public:
	friend void* QSGSimpleRectNode_vdata(VirtualQSGSimpleRectNode* self);
	friend VirtualQSGSimpleRectNode* vdata_QSGSimpleRectNode(void* vdata);

	VirtualQSGSimpleRectNode(const QSGSimpleRectNode_VTable* vtbl, const QRectF& rect, const QColor& color): QSGSimpleRectNode(rect, color), vtbl(vtbl) {}
	VirtualQSGSimpleRectNode(const QSGSimpleRectNode_VTable* vtbl): QSGSimpleRectNode(), vtbl(vtbl) {}

	virtual ~VirtualQSGSimpleRectNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGSimpleRectNode::isSubtreeBlocked();
		}

		bool callback_return_value = vtbl->isSubtreeBlocked(this);
		return callback_return_value;
	}

	friend bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleRectNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGSimpleRectNode::preprocess();
			return;
		}

		vtbl->preprocess(this);
	}

	friend void QSGSimpleRectNode_virtualbase_preprocess(VirtualQSGSimpleRectNode* self);

};

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new_rect_color(const QSGSimpleRectNode_VTable* vtbl, size_t vdata, QRectF* rect, QColor* color) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGSimpleRectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGSimpleRectNode(vtbl, *rect, *color) : nullptr;
}

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new(const QSGSimpleRectNode_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGSimpleRectNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGSimpleRectNode(vtbl) : nullptr;
}

void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGSimpleRectNode_setRect_rect(QSGSimpleRectNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGSimpleRectNode_setRect_x_y_w_h(QSGSimpleRectNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGSimpleRectNode_rect(const QSGSimpleRectNode* self) {
	return new QRectF(self->rect());
}

void QSGSimpleRectNode_setColor(QSGSimpleRectNode* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGSimpleRectNode_color(const QSGSimpleRectNode* self) {
	return new QColor(self->color());
}

void* QSGSimpleRectNode_vdata(VirtualQSGSimpleRectNode* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGSimpleRectNode>()); }
VirtualQSGSimpleRectNode* vdata_QSGSimpleRectNode(void* vdata) { return reinterpret_cast<VirtualQSGSimpleRectNode*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGSimpleRectNode>()); }

bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleRectNode* self) {

	return self->QSGSimpleRectNode::isSubtreeBlocked();
}

void QSGSimpleRectNode_virtualbase_preprocess(VirtualQSGSimpleRectNode* self) {

	self->QSGSimpleRectNode::preprocess();
}

void QSGSimpleRectNode_delete(QSGSimpleRectNode* self) {
	delete self;
}

