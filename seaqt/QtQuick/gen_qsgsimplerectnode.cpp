#include <QColor>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleRectNode>
#include <qsgsimplerectnode.h>
#include "gen_qsgsimplerectnode.h"

#ifdef __cplusplus
extern "C" {
#endif

bool miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked(const QSGSimpleRectNode*, intptr_t);
void miqt_exec_callback_QSGSimpleRectNode_preprocess(QSGSimpleRectNode*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGSimpleRectNode final : public QSGSimpleRectNode {
public:

	VirtualQSGSimpleRectNode(const QRectF& rect, const QColor& color): QSGSimpleRectNode(rect, color) {};
	VirtualQSGSimpleRectNode(): QSGSimpleRectNode() {};

	virtual ~VirtualQSGSimpleRectNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGSimpleRectNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGSimpleRectNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGSimpleRectNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGSimpleRectNode_virtualbase_preprocess(void* self);

};

QSGSimpleRectNode* QSGSimpleRectNode_new(QRectF* rect, QColor* color) {
	return new VirtualQSGSimpleRectNode(*rect, *color);
}

QSGSimpleRectNode* QSGSimpleRectNode_new2() {
	return new VirtualQSGSimpleRectNode();
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

bool QSGSimpleRectNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGSimpleRectNode* self_cast = dynamic_cast<VirtualQSGSimpleRectNode*>( (QSGSimpleRectNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGSimpleRectNode*)(self) )->QSGSimpleRectNode::isSubtreeBlocked();

}

bool QSGSimpleRectNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGSimpleRectNode* self_cast = dynamic_cast<VirtualQSGSimpleRectNode*>( (QSGSimpleRectNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGSimpleRectNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGSimpleRectNode*)(self) )->QSGSimpleRectNode::preprocess();

}

void QSGSimpleRectNode_delete(QSGSimpleRectNode* self) {
	delete self;
}

