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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGRenderNode final : public QSGRenderNode {
	const QSGRenderNode_VTable* vtbl;
public:
	friend void* QSGRenderNode_vdata(VirtualQSGRenderNode* self);
	friend VirtualQSGRenderNode* vdata_QSGRenderNode(void* vdata);

	VirtualQSGRenderNode(const QSGRenderNode_VTable* vtbl): QSGRenderNode(), vtbl(vtbl) {}

	virtual ~VirtualQSGRenderNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QSGRenderNode::StateFlags changedStates() const override {
		if (vtbl->changedStates == 0) {
			return QSGRenderNode::changedStates();
		}

		int callback_return_value = vtbl->changedStates(this);
		return static_cast<QSGRenderNode::StateFlags>(callback_return_value);
	}

	friend int QSGRenderNode_virtualbase_changedStates(const VirtualQSGRenderNode* self);

	virtual void prepare() override {
		if (vtbl->prepare == 0) {
			QSGRenderNode::prepare();
			return;
		}

		vtbl->prepare(this);
	}

	friend void QSGRenderNode_virtualbase_prepare(VirtualQSGRenderNode* self);

	virtual void render(const QSGRenderNode::RenderState* state) override {
		if (vtbl->render == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QSGRenderNode__RenderState* sigval1 = (QSGRenderNode__RenderState*) state;
		vtbl->render(this, sigval1);
	}

	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QSGRenderNode::releaseResources();
			return;
		}

		vtbl->releaseResources(this);
	}

	friend void QSGRenderNode_virtualbase_releaseResources(VirtualQSGRenderNode* self);

	virtual QSGRenderNode::RenderingFlags flags() const override {
		if (vtbl->flags == 0) {
			return QSGRenderNode::flags();
		}

		int callback_return_value = vtbl->flags(this);
		return static_cast<QSGRenderNode::RenderingFlags>(callback_return_value);
	}

	friend int QSGRenderNode_virtualbase_flags(const VirtualQSGRenderNode* self);

	virtual QRectF rect() const override {
		if (vtbl->rect == 0) {
			return QSGRenderNode::rect();
		}

		QRectF* callback_return_value = vtbl->rect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QRectF* QSGRenderNode_virtualbase_rect(const VirtualQSGRenderNode* self);

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGRenderNode::isSubtreeBlocked();
		}

		bool callback_return_value = vtbl->isSubtreeBlocked(this);
		return callback_return_value;
	}

	friend bool QSGRenderNode_virtualbase_isSubtreeBlocked(const VirtualQSGRenderNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGRenderNode::preprocess();
			return;
		}

		vtbl->preprocess(this);
	}

	friend void QSGRenderNode_virtualbase_preprocess(VirtualQSGRenderNode* self);

};

VirtualQSGRenderNode* QSGRenderNode_new(const QSGRenderNode_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGRenderNode>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGRenderNode(vtbl) : nullptr;
}

void QSGRenderNode_virtbase(QSGRenderNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

int QSGRenderNode_changedStates(const QSGRenderNode* self) {
	QSGRenderNode::StateFlags _ret = self->changedStates();
	return static_cast<int>(_ret);
}

void QSGRenderNode_prepare(QSGRenderNode* self) {
	self->prepare();
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

QMatrix4x4* QSGRenderNode_projectionMatrix(const QSGRenderNode* self) {
	return (QMatrix4x4*) self->projectionMatrix();
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

void* QSGRenderNode_vdata(VirtualQSGRenderNode* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGRenderNode>()); }
VirtualQSGRenderNode* vdata_QSGRenderNode(void* vdata) { return reinterpret_cast<VirtualQSGRenderNode*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGRenderNode>()); }

int QSGRenderNode_virtualbase_changedStates(const VirtualQSGRenderNode* self) {

	VirtualQSGRenderNode::StateFlags _ret = self->QSGRenderNode::changedStates();
	return static_cast<int>(_ret);
}

void QSGRenderNode_virtualbase_prepare(VirtualQSGRenderNode* self) {

	self->QSGRenderNode::prepare();
}

void QSGRenderNode_virtualbase_releaseResources(VirtualQSGRenderNode* self) {

	self->QSGRenderNode::releaseResources();
}

int QSGRenderNode_virtualbase_flags(const VirtualQSGRenderNode* self) {

	VirtualQSGRenderNode::RenderingFlags _ret = self->QSGRenderNode::flags();
	return static_cast<int>(_ret);
}

QRectF* QSGRenderNode_virtualbase_rect(const VirtualQSGRenderNode* self) {

	return new QRectF(self->QSGRenderNode::rect());
}

bool QSGRenderNode_virtualbase_isSubtreeBlocked(const VirtualQSGRenderNode* self) {

	return self->QSGRenderNode::isSubtreeBlocked();
}

void QSGRenderNode_virtualbase_preprocess(VirtualQSGRenderNode* self) {

	self->QSGRenderNode::preprocess();
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

void QSGRenderNode__RenderState_operatorAssign(QSGRenderNode__RenderState* self, QSGRenderNode__RenderState* from) {
	self->operator=(*from);
}

void QSGRenderNode__RenderState_delete(QSGRenderNode__RenderState* self) {
	delete self;
}

