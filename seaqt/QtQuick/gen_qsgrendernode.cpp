#include <QMatrix4x4>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QSGClipNode>
#include <QSGNode>
#include <QSGRenderNode>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGRenderNode__RenderState
#include <qsgrendernode.h>
#include "gen_qsgrendernode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGRenderNode final : public QSGRenderNode {
	struct QSGRenderNode_VTable* vtbl;
public:

	VirtualQSGRenderNode(struct QSGRenderNode_VTable* vtbl): QSGRenderNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGRenderNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSGRenderNode::StateFlags changedStates() const override {
		if (vtbl->changedStates == 0) {
			return QSGRenderNode::changedStates();
		}


		int callback_return_value = vtbl->changedStates(vtbl, this);

		return static_cast<QSGRenderNode::StateFlags>(callback_return_value);
	}

	friend int QSGRenderNode_virtualbase_changedStates(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void render(const QSGRenderNode::RenderState* state) override {
		if (vtbl->render == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QSGRenderNode__RenderState* sigval1 = (QSGRenderNode__RenderState*) state;

		vtbl->render(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QSGRenderNode::releaseResources();
			return;
		}


		vtbl->releaseResources(vtbl, this);

	}

	friend void QSGRenderNode_virtualbase_releaseResources(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSGRenderNode::RenderingFlags flags() const override {
		if (vtbl->flags == 0) {
			return QSGRenderNode::flags();
		}


		int callback_return_value = vtbl->flags(vtbl, this);

		return static_cast<QSGRenderNode::RenderingFlags>(callback_return_value);
	}

	friend int QSGRenderNode_virtualbase_flags(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QRectF rect() const override {
		if (vtbl->rect == 0) {
			return QSGRenderNode::rect();
		}


		QRectF* callback_return_value = vtbl->rect(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QSGRenderNode_virtualbase_rect(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGRenderNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGRenderNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGRenderNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGRenderNode_virtualbase_preprocess(void* self);

};

QSGRenderNode* QSGRenderNode_new(struct QSGRenderNode_VTable* vtbl) {
	return new VirtualQSGRenderNode(vtbl);
}

void QSGRenderNode_virtbase(QSGRenderNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

int QSGRenderNode_changedStates(const QSGRenderNode* self) {
	QSGRenderNode::StateFlags _ret = self->changedStates();
	return static_cast<int>(_ret);
}

void QSGRenderNode_render(QSGRenderNode* self, QSGRenderNode__RenderState* state) {
	self->render(state);
}

void QSGRenderNode_releaseResources(QSGRenderNode* self) {
	self->releaseResources();
}

int QSGRenderNode_flags(const QSGRenderNode* self) {
	QSGRenderNode::RenderingFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QRectF* QSGRenderNode_rect(const QSGRenderNode* self) {
	return new QRectF(self->rect());
}

QMatrix4x4* QSGRenderNode_matrix(const QSGRenderNode* self) {
	return (QMatrix4x4*) self->matrix();
}

QSGClipNode* QSGRenderNode_clipList(const QSGRenderNode* self) {
	return (QSGClipNode*) self->clipList();
}

double QSGRenderNode_inheritedOpacity(const QSGRenderNode* self) {
	qreal _ret = self->inheritedOpacity();
	return static_cast<double>(_ret);
}

int QSGRenderNode_virtualbase_changedStates(const void* self) {

	VirtualQSGRenderNode::StateFlags _ret = ( (const VirtualQSGRenderNode*)(self) )->QSGRenderNode::changedStates();
	return static_cast<int>(_ret);

}

void QSGRenderNode_virtualbase_releaseResources(void* self) {

	( (VirtualQSGRenderNode*)(self) )->QSGRenderNode::releaseResources();

}

int QSGRenderNode_virtualbase_flags(const void* self) {

	VirtualQSGRenderNode::RenderingFlags _ret = ( (const VirtualQSGRenderNode*)(self) )->QSGRenderNode::flags();
	return static_cast<int>(_ret);

}

QRectF* QSGRenderNode_virtualbase_rect(const void* self) {

	return new QRectF(( (const VirtualQSGRenderNode*)(self) )->QSGRenderNode::rect());

}

bool QSGRenderNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGRenderNode*)(self) )->QSGRenderNode::isSubtreeBlocked();

}

void QSGRenderNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGRenderNode*)(self) )->QSGRenderNode::preprocess();

}

void QSGRenderNode_delete(QSGRenderNode* self) {
	delete self;
}

QMatrix4x4* QSGRenderNode__RenderState_projectionMatrix(const QSGRenderNode__RenderState* self) {
	return (QMatrix4x4*) self->projectionMatrix();
}

QRect* QSGRenderNode__RenderState_scissorRect(const QSGRenderNode__RenderState* self) {
	return new QRect(self->scissorRect());
}

bool QSGRenderNode__RenderState_scissorEnabled(const QSGRenderNode__RenderState* self) {
	return self->scissorEnabled();
}

int QSGRenderNode__RenderState_stencilValue(const QSGRenderNode__RenderState* self) {
	return self->stencilValue();
}

bool QSGRenderNode__RenderState_stencilEnabled(const QSGRenderNode__RenderState* self) {
	return self->stencilEnabled();
}

QRegion* QSGRenderNode__RenderState_clipRegion(const QSGRenderNode__RenderState* self) {
	return (QRegion*) self->clipRegion();
}

void* QSGRenderNode__RenderState_get(const QSGRenderNode__RenderState* self, const char* state) {
	return self->get(state);
}

void QSGRenderNode__RenderState_operatorAssign(QSGRenderNode__RenderState* self, QSGRenderNode__RenderState* param1) {
	self->operator=(*param1);
}

void QSGRenderNode__RenderState_delete(QSGRenderNode__RenderState* self) {
	delete self;
}

