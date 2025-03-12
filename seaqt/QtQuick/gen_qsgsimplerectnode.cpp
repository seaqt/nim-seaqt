#include <QColor>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleRectNode>
#include <qsgsimplerectnode.h>
#include "gen_qsgsimplerectnode.h"
class VirtualQSGSimpleRectNode final : public QSGSimpleRectNode {
	const QSGSimpleRectNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGSimpleRectNode_VTable* QSGSimpleRectNode_vtbl(const VirtualQSGSimpleRectNode* self);
	friend void* QSGSimpleRectNode_vdata(const VirtualQSGSimpleRectNode* self);
	friend void QSGSimpleRectNode_setVdata(VirtualQSGSimpleRectNode* self, void* vdata);

	VirtualQSGSimpleRectNode(const QSGSimpleRectNode_VTable* vtbl, void* vdata, const QRectF& rect, const QColor& color): QSGSimpleRectNode(rect, color), vtbl(vtbl), vdata(vdata) {}
	VirtualQSGSimpleRectNode(const QSGSimpleRectNode_VTable* vtbl, void* vdata): QSGSimpleRectNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGSimpleRectNode() override { if(vtbl->destructor) vtbl->destructor(this); }

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

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new(const QSGSimpleRectNode_VTable* vtbl, void* vdata, QRectF* rect, QColor* color) {
	return new VirtualQSGSimpleRectNode(vtbl, vdata, *rect, *color);
}

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new2(const QSGSimpleRectNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGSimpleRectNode(vtbl, vdata);
}

void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGSimpleRectNode_setRect(QSGSimpleRectNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGSimpleRectNode_setRect2(QSGSimpleRectNode* self, double x, double y, double w, double h) {
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

bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleRectNode* self) {

	return self->QSGSimpleRectNode::isSubtreeBlocked();
}

void QSGSimpleRectNode_virtualbase_preprocess(VirtualQSGSimpleRectNode* self) {

	self->QSGSimpleRectNode::preprocess();
}

const QSGSimpleRectNode_VTable* QSGSimpleRectNode_vtbl(const VirtualQSGSimpleRectNode* self) { return self->vtbl; }
void* QSGSimpleRectNode_vdata(const VirtualQSGSimpleRectNode* self) { return self->vdata; }
void QSGSimpleRectNode_setVdata(VirtualQSGSimpleRectNode* self, void* vdata) { self->vdata = vdata; }

void QSGSimpleRectNode_delete(QSGSimpleRectNode* self) {
	delete self;
}

