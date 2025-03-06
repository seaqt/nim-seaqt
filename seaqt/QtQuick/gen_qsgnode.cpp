#include <QMatrix4x4>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGClipNode>
#include <QSGGeometry>
#include <QSGGeometryNode>
#include <QSGMaterial>
#include <QSGNode>
#include <QSGNodeVisitor>
#include <QSGOpacityNode>
#include <QSGRootNode>
#include <QSGTransformNode>
#include <qsgnode.h>
#include "gen_qsgnode.h"

#ifdef __cplusplus
extern "C" {
#endif

bool miqt_exec_callback_QSGNode_isSubtreeBlocked(const QSGNode*, intptr_t);
void miqt_exec_callback_QSGNode_preprocess(QSGNode*, intptr_t);
bool miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked(const QSGGeometryNode*, intptr_t);
void miqt_exec_callback_QSGGeometryNode_preprocess(QSGGeometryNode*, intptr_t);
bool miqt_exec_callback_QSGClipNode_isSubtreeBlocked(const QSGClipNode*, intptr_t);
void miqt_exec_callback_QSGClipNode_preprocess(QSGClipNode*, intptr_t);
bool miqt_exec_callback_QSGTransformNode_isSubtreeBlocked(const QSGTransformNode*, intptr_t);
void miqt_exec_callback_QSGTransformNode_preprocess(QSGTransformNode*, intptr_t);
bool miqt_exec_callback_QSGRootNode_isSubtreeBlocked(const QSGRootNode*, intptr_t);
void miqt_exec_callback_QSGRootNode_preprocess(QSGRootNode*, intptr_t);
bool miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked(const QSGOpacityNode*, intptr_t);
void miqt_exec_callback_QSGOpacityNode_preprocess(QSGOpacityNode*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGNode final : public QSGNode {
public:

	VirtualQSGNode(): QSGNode() {};

	virtual ~VirtualQSGNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGNode_virtualbase_preprocess(void* self);

};

QSGNode* QSGNode_new() {
	return new VirtualQSGNode();
}

QSGNode* QSGNode_parent(const QSGNode* self) {
	return self->parent();
}

void QSGNode_removeChildNode(QSGNode* self, QSGNode* node) {
	self->removeChildNode(node);
}

void QSGNode_removeAllChildNodes(QSGNode* self) {
	self->removeAllChildNodes();
}

void QSGNode_prependChildNode(QSGNode* self, QSGNode* node) {
	self->prependChildNode(node);
}

void QSGNode_appendChildNode(QSGNode* self, QSGNode* node) {
	self->appendChildNode(node);
}

void QSGNode_insertChildNodeBefore(QSGNode* self, QSGNode* node, QSGNode* before) {
	self->insertChildNodeBefore(node, before);
}

void QSGNode_insertChildNodeAfter(QSGNode* self, QSGNode* node, QSGNode* after) {
	self->insertChildNodeAfter(node, after);
}

void QSGNode_reparentChildNodesTo(QSGNode* self, QSGNode* newParent) {
	self->reparentChildNodesTo(newParent);
}

int QSGNode_childCount(const QSGNode* self) {
	return self->childCount();
}

QSGNode* QSGNode_childAtIndex(const QSGNode* self, int i) {
	return self->childAtIndex(static_cast<int>(i));
}

QSGNode* QSGNode_firstChild(const QSGNode* self) {
	return self->firstChild();
}

QSGNode* QSGNode_lastChild(const QSGNode* self) {
	return self->lastChild();
}

QSGNode* QSGNode_nextSibling(const QSGNode* self) {
	return self->nextSibling();
}

QSGNode* QSGNode_previousSibling(const QSGNode* self) {
	return self->previousSibling();
}

int QSGNode_type(const QSGNode* self) {
	QSGNode::NodeType _ret = self->type();
	return static_cast<int>(_ret);
}

void QSGNode_clearDirty(QSGNode* self) {
	self->clearDirty();
}

void QSGNode_markDirty(QSGNode* self, int bits) {
	self->markDirty(static_cast<QSGNode::DirtyState>(bits));
}

int QSGNode_dirtyState(const QSGNode* self) {
	QSGNode::DirtyState _ret = self->dirtyState();
	return static_cast<int>(_ret);
}

bool QSGNode_isSubtreeBlocked(const QSGNode* self) {
	return self->isSubtreeBlocked();
}

int QSGNode_flags(const QSGNode* self) {
	QSGNode::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGNode_setFlag(QSGNode* self, int param1) {
	self->setFlag(static_cast<QSGNode::Flag>(param1));
}

void QSGNode_setFlags(QSGNode* self, int param1) {
	self->setFlags(static_cast<QSGNode::Flags>(param1));
}

void QSGNode_preprocess(QSGNode* self) {
	self->preprocess();
}

void QSGNode_setFlag2(QSGNode* self, int param1, bool param2) {
	self->setFlag(static_cast<QSGNode::Flag>(param1), param2);
}

void QSGNode_setFlags2(QSGNode* self, int param1, bool param2) {
	self->setFlags(static_cast<QSGNode::Flags>(param1), param2);
}

bool QSGNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGNode* self_cast = dynamic_cast<VirtualQSGNode*>( (QSGNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGNode*)(self) )->QSGNode::isSubtreeBlocked();

}

bool QSGNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGNode* self_cast = dynamic_cast<VirtualQSGNode*>( (QSGNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGNode*)(self) )->QSGNode::preprocess();

}

void QSGNode_delete(QSGNode* self) {
	delete self;
}

void QSGBasicGeometryNode_virtbase(QSGBasicGeometryNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGBasicGeometryNode_setGeometry(QSGBasicGeometryNode* self, QSGGeometry* geometry) {
	self->setGeometry(geometry);
}

QSGGeometry* QSGBasicGeometryNode_geometry(const QSGBasicGeometryNode* self) {
	return (QSGGeometry*) self->geometry();
}

QSGGeometry* QSGBasicGeometryNode_geometry2(QSGBasicGeometryNode* self) {
	return self->geometry();
}

QMatrix4x4* QSGBasicGeometryNode_matrix(const QSGBasicGeometryNode* self) {
	return (QMatrix4x4*) self->matrix();
}

QSGClipNode* QSGBasicGeometryNode_clipList(const QSGBasicGeometryNode* self) {
	return (QSGClipNode*) self->clipList();
}

void QSGBasicGeometryNode_setRendererMatrix(QSGBasicGeometryNode* self, QMatrix4x4* m) {
	self->setRendererMatrix(m);
}

void QSGBasicGeometryNode_setRendererClipList(QSGBasicGeometryNode* self, QSGClipNode* c) {
	self->setRendererClipList(c);
}

void QSGBasicGeometryNode_delete(QSGBasicGeometryNode* self) {
	delete self;
}

class VirtualQSGGeometryNode final : public QSGGeometryNode {
public:

	VirtualQSGGeometryNode(): QSGGeometryNode() {};

	virtual ~VirtualQSGGeometryNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGGeometryNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGGeometryNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGGeometryNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGGeometryNode_virtualbase_preprocess(void* self);

};

QSGGeometryNode* QSGGeometryNode_new() {
	return new VirtualQSGGeometryNode();
}

void QSGGeometryNode_virtbase(QSGGeometryNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode) {
	*outptr_QSGBasicGeometryNode = static_cast<QSGBasicGeometryNode*>(src);
}

void QSGGeometryNode_setMaterial(QSGGeometryNode* self, QSGMaterial* material) {
	self->setMaterial(material);
}

QSGMaterial* QSGGeometryNode_material(const QSGGeometryNode* self) {
	return self->material();
}

void QSGGeometryNode_setOpaqueMaterial(QSGGeometryNode* self, QSGMaterial* material) {
	self->setOpaqueMaterial(material);
}

QSGMaterial* QSGGeometryNode_opaqueMaterial(const QSGGeometryNode* self) {
	return self->opaqueMaterial();
}

QSGMaterial* QSGGeometryNode_activeMaterial(const QSGGeometryNode* self) {
	return self->activeMaterial();
}

void QSGGeometryNode_setRenderOrder(QSGGeometryNode* self, int order) {
	self->setRenderOrder(static_cast<int>(order));
}

int QSGGeometryNode_renderOrder(const QSGGeometryNode* self) {
	return self->renderOrder();
}

void QSGGeometryNode_setInheritedOpacity(QSGGeometryNode* self, double opacity) {
	self->setInheritedOpacity(static_cast<qreal>(opacity));
}

double QSGGeometryNode_inheritedOpacity(const QSGGeometryNode* self) {
	qreal _ret = self->inheritedOpacity();
	return static_cast<double>(_ret);
}

bool QSGGeometryNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGGeometryNode* self_cast = dynamic_cast<VirtualQSGGeometryNode*>( (QSGGeometryNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGGeometryNode*)(self) )->QSGGeometryNode::isSubtreeBlocked();

}

bool QSGGeometryNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGGeometryNode* self_cast = dynamic_cast<VirtualQSGGeometryNode*>( (QSGGeometryNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGGeometryNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGGeometryNode*)(self) )->QSGGeometryNode::preprocess();

}

void QSGGeometryNode_delete(QSGGeometryNode* self) {
	delete self;
}

class VirtualQSGClipNode final : public QSGClipNode {
public:

	VirtualQSGClipNode(): QSGClipNode() {};

	virtual ~VirtualQSGClipNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGClipNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGClipNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGClipNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGClipNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGClipNode_virtualbase_preprocess(void* self);

};

QSGClipNode* QSGClipNode_new() {
	return new VirtualQSGClipNode();
}

void QSGClipNode_virtbase(QSGClipNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode) {
	*outptr_QSGBasicGeometryNode = static_cast<QSGBasicGeometryNode*>(src);
}

void QSGClipNode_setIsRectangular(QSGClipNode* self, bool rectHint) {
	self->setIsRectangular(rectHint);
}

bool QSGClipNode_isRectangular(const QSGClipNode* self) {
	return self->isRectangular();
}

void QSGClipNode_setClipRect(QSGClipNode* self, QRectF* clipRect) {
	self->setClipRect(*clipRect);
}

QRectF* QSGClipNode_clipRect(const QSGClipNode* self) {
	return new QRectF(self->clipRect());
}

bool QSGClipNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGClipNode* self_cast = dynamic_cast<VirtualQSGClipNode*>( (QSGClipNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGClipNode*)(self) )->QSGClipNode::isSubtreeBlocked();

}

bool QSGClipNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGClipNode* self_cast = dynamic_cast<VirtualQSGClipNode*>( (QSGClipNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGClipNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGClipNode*)(self) )->QSGClipNode::preprocess();

}

void QSGClipNode_delete(QSGClipNode* self) {
	delete self;
}

class VirtualQSGTransformNode final : public QSGTransformNode {
public:

	VirtualQSGTransformNode(): QSGTransformNode() {};

	virtual ~VirtualQSGTransformNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGTransformNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGTransformNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGTransformNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGTransformNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGTransformNode_virtualbase_preprocess(void* self);

};

QSGTransformNode* QSGTransformNode_new() {
	return new VirtualQSGTransformNode();
}

void QSGTransformNode_virtbase(QSGTransformNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGTransformNode_setMatrix(QSGTransformNode* self, QMatrix4x4* matrix) {
	self->setMatrix(*matrix);
}

QMatrix4x4* QSGTransformNode_matrix(const QSGTransformNode* self) {
	const QMatrix4x4& _ret = self->matrix();
	// Cast returned reference into pointer
	return const_cast<QMatrix4x4*>(&_ret);
}

void QSGTransformNode_setCombinedMatrix(QSGTransformNode* self, QMatrix4x4* matrix) {
	self->setCombinedMatrix(*matrix);
}

QMatrix4x4* QSGTransformNode_combinedMatrix(const QSGTransformNode* self) {
	const QMatrix4x4& _ret = self->combinedMatrix();
	// Cast returned reference into pointer
	return const_cast<QMatrix4x4*>(&_ret);
}

bool QSGTransformNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGTransformNode* self_cast = dynamic_cast<VirtualQSGTransformNode*>( (QSGTransformNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGTransformNode*)(self) )->QSGTransformNode::isSubtreeBlocked();

}

bool QSGTransformNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGTransformNode* self_cast = dynamic_cast<VirtualQSGTransformNode*>( (QSGTransformNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGTransformNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGTransformNode*)(self) )->QSGTransformNode::preprocess();

}

void QSGTransformNode_delete(QSGTransformNode* self) {
	delete self;
}

class VirtualQSGRootNode final : public QSGRootNode {
public:

	VirtualQSGRootNode(): QSGRootNode() {};

	virtual ~VirtualQSGRootNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGRootNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGRootNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGRootNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGRootNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGRootNode_virtualbase_preprocess(void* self);

};

QSGRootNode* QSGRootNode_new() {
	return new VirtualQSGRootNode();
}

void QSGRootNode_virtbase(QSGRootNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

bool QSGRootNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGRootNode* self_cast = dynamic_cast<VirtualQSGRootNode*>( (QSGRootNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGRootNode*)(self) )->QSGRootNode::isSubtreeBlocked();

}

bool QSGRootNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGRootNode* self_cast = dynamic_cast<VirtualQSGRootNode*>( (QSGRootNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGRootNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGRootNode*)(self) )->QSGRootNode::preprocess();

}

void QSGRootNode_delete(QSGRootNode* self) {
	delete self;
}

class VirtualQSGOpacityNode final : public QSGOpacityNode {
public:

	VirtualQSGOpacityNode(): QSGOpacityNode() {};

	virtual ~VirtualQSGOpacityNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGOpacityNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	friend bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGOpacityNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGOpacityNode_preprocess(this, handle__preprocess);

		
	}

	friend void QSGOpacityNode_virtualbase_preprocess(void* self);

};

QSGOpacityNode* QSGOpacityNode_new() {
	return new VirtualQSGOpacityNode();
}

void QSGOpacityNode_virtbase(QSGOpacityNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGOpacityNode_setOpacity(QSGOpacityNode* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

double QSGOpacityNode_opacity(const QSGOpacityNode* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QSGOpacityNode_setCombinedOpacity(QSGOpacityNode* self, double opacity) {
	self->setCombinedOpacity(static_cast<qreal>(opacity));
}

double QSGOpacityNode_combinedOpacity(const QSGOpacityNode* self) {
	qreal _ret = self->combinedOpacity();
	return static_cast<double>(_ret);
}

bool QSGOpacityNode_isSubtreeBlocked(const QSGOpacityNode* self) {
	return self->isSubtreeBlocked();
}

bool QSGOpacityNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	VirtualQSGOpacityNode* self_cast = dynamic_cast<VirtualQSGOpacityNode*>( (QSGOpacityNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGOpacityNode*)(self) )->QSGOpacityNode::isSubtreeBlocked();

}

bool QSGOpacityNode_override_virtual_preprocess(void* self, intptr_t slot) {
	VirtualQSGOpacityNode* self_cast = dynamic_cast<VirtualQSGOpacityNode*>( (QSGOpacityNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGOpacityNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGOpacityNode*)(self) )->QSGOpacityNode::preprocess();

}

void QSGOpacityNode_delete(QSGOpacityNode* self) {
	delete self;
}

void QSGNodeVisitor_delete(QSGNodeVisitor* self) {
	delete self;
}

