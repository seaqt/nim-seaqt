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

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGNode final : public QSGNode {
	struct QSGNode_VTable* vtbl;
public:

	VirtualQSGNode(struct QSGNode_VTable* vtbl): QSGNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGNode_virtualbase_preprocess(void* self);

};

QSGNode* QSGNode_new(struct QSGNode_VTable* vtbl) {
	return new VirtualQSGNode(vtbl);
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

bool QSGNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGNode*)(self) )->QSGNode::isSubtreeBlocked();

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
	struct QSGGeometryNode_VTable* vtbl;
public:

	VirtualQSGGeometryNode(struct QSGGeometryNode_VTable* vtbl): QSGGeometryNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGGeometryNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGGeometryNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGGeometryNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGGeometryNode_virtualbase_preprocess(void* self);

};

QSGGeometryNode* QSGGeometryNode_new(struct QSGGeometryNode_VTable* vtbl) {
	return new VirtualQSGGeometryNode(vtbl);
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

bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGGeometryNode*)(self) )->QSGGeometryNode::isSubtreeBlocked();

}

void QSGGeometryNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGGeometryNode*)(self) )->QSGGeometryNode::preprocess();

}

void QSGGeometryNode_delete(QSGGeometryNode* self) {
	delete self;
}

class VirtualQSGClipNode final : public QSGClipNode {
	struct QSGClipNode_VTable* vtbl;
public:

	VirtualQSGClipNode(struct QSGClipNode_VTable* vtbl): QSGClipNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGClipNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGClipNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGClipNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGClipNode_virtualbase_preprocess(void* self);

};

QSGClipNode* QSGClipNode_new(struct QSGClipNode_VTable* vtbl) {
	return new VirtualQSGClipNode(vtbl);
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

bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGClipNode*)(self) )->QSGClipNode::isSubtreeBlocked();

}

void QSGClipNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGClipNode*)(self) )->QSGClipNode::preprocess();

}

void QSGClipNode_delete(QSGClipNode* self) {
	delete self;
}

class VirtualQSGTransformNode final : public QSGTransformNode {
	struct QSGTransformNode_VTable* vtbl;
public:

	VirtualQSGTransformNode(struct QSGTransformNode_VTable* vtbl): QSGTransformNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGTransformNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGTransformNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGTransformNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGTransformNode_virtualbase_preprocess(void* self);

};

QSGTransformNode* QSGTransformNode_new(struct QSGTransformNode_VTable* vtbl) {
	return new VirtualQSGTransformNode(vtbl);
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

bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGTransformNode*)(self) )->QSGTransformNode::isSubtreeBlocked();

}

void QSGTransformNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGTransformNode*)(self) )->QSGTransformNode::preprocess();

}

void QSGTransformNode_delete(QSGTransformNode* self) {
	delete self;
}

class VirtualQSGRootNode final : public QSGRootNode {
	struct QSGRootNode_VTable* vtbl;
public:

	VirtualQSGRootNode(struct QSGRootNode_VTable* vtbl): QSGRootNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGRootNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGRootNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGRootNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGRootNode_virtualbase_preprocess(void* self);

};

QSGRootNode* QSGRootNode_new(struct QSGRootNode_VTable* vtbl) {
	return new VirtualQSGRootNode(vtbl);
}

void QSGRootNode_virtbase(QSGRootNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGRootNode*)(self) )->QSGRootNode::isSubtreeBlocked();

}

void QSGRootNode_virtualbase_preprocess(void* self) {

	( (VirtualQSGRootNode*)(self) )->QSGRootNode::preprocess();

}

void QSGRootNode_delete(QSGRootNode* self) {
	delete self;
}

class VirtualQSGOpacityNode final : public QSGOpacityNode {
	struct QSGOpacityNode_VTable* vtbl;
public:

	VirtualQSGOpacityNode(struct QSGOpacityNode_VTable* vtbl): QSGOpacityNode(), vtbl(vtbl) {};

	virtual ~VirtualQSGOpacityNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGOpacityNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	friend bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGOpacityNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	friend void QSGOpacityNode_virtualbase_preprocess(void* self);

};

QSGOpacityNode* QSGOpacityNode_new(struct QSGOpacityNode_VTable* vtbl) {
	return new VirtualQSGOpacityNode(vtbl);
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

bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self) {

	return ( (const VirtualQSGOpacityNode*)(self) )->QSGOpacityNode::isSubtreeBlocked();

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

