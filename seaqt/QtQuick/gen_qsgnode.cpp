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
class VirtualQSGNode final : public QSGNode {
	const QSGNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGNode_VTable* QSGNode_vtbl(const VirtualQSGNode* self);
	friend void* QSGNode_vdata(const VirtualQSGNode* self);
	friend void QSGNode_setVdata(VirtualQSGNode* self, void* vdata);

	VirtualQSGNode(const QSGNode_VTable* vtbl, void* vdata): QSGNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGNode_virtualbase_isSubtreeBlocked(const VirtualQSGNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGNode_virtualbase_preprocess(VirtualQSGNode* self);

};

VirtualQSGNode* QSGNode_new(const QSGNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGNode(vtbl, vdata);
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

bool QSGNode_virtualbase_isSubtreeBlocked(const VirtualQSGNode* self) {

	return self->QSGNode::isSubtreeBlocked();
}

void QSGNode_virtualbase_preprocess(VirtualQSGNode* self) {

	self->QSGNode::preprocess();
}

const QSGNode_VTable* QSGNode_vtbl(const VirtualQSGNode* self) { return self->vtbl; }
void* QSGNode_vdata(const VirtualQSGNode* self) { return self->vdata; }
void QSGNode_setVdata(VirtualQSGNode* self, void* vdata) { self->vdata = vdata; }

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
	const QSGGeometryNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGGeometryNode_VTable* QSGGeometryNode_vtbl(const VirtualQSGGeometryNode* self);
	friend void* QSGGeometryNode_vdata(const VirtualQSGGeometryNode* self);
	friend void QSGGeometryNode_setVdata(VirtualQSGGeometryNode* self, void* vdata);

	VirtualQSGGeometryNode(const QSGGeometryNode_VTable* vtbl, void* vdata): QSGGeometryNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGGeometryNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGGeometryNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const VirtualQSGGeometryNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGGeometryNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGGeometryNode_virtualbase_preprocess(VirtualQSGGeometryNode* self);

};

VirtualQSGGeometryNode* QSGGeometryNode_new(const QSGGeometryNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGGeometryNode(vtbl, vdata);
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

bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const VirtualQSGGeometryNode* self) {

	return self->QSGGeometryNode::isSubtreeBlocked();
}

void QSGGeometryNode_virtualbase_preprocess(VirtualQSGGeometryNode* self) {

	self->QSGGeometryNode::preprocess();
}

const QSGGeometryNode_VTable* QSGGeometryNode_vtbl(const VirtualQSGGeometryNode* self) { return self->vtbl; }
void* QSGGeometryNode_vdata(const VirtualQSGGeometryNode* self) { return self->vdata; }
void QSGGeometryNode_setVdata(VirtualQSGGeometryNode* self, void* vdata) { self->vdata = vdata; }

void QSGGeometryNode_delete(QSGGeometryNode* self) {
	delete self;
}

class VirtualQSGClipNode final : public QSGClipNode {
	const QSGClipNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGClipNode_VTable* QSGClipNode_vtbl(const VirtualQSGClipNode* self);
	friend void* QSGClipNode_vdata(const VirtualQSGClipNode* self);
	friend void QSGClipNode_setVdata(VirtualQSGClipNode* self, void* vdata);

	VirtualQSGClipNode(const QSGClipNode_VTable* vtbl, void* vdata): QSGClipNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGClipNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGClipNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGClipNode_virtualbase_isSubtreeBlocked(const VirtualQSGClipNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGClipNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGClipNode_virtualbase_preprocess(VirtualQSGClipNode* self);

};

VirtualQSGClipNode* QSGClipNode_new(const QSGClipNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGClipNode(vtbl, vdata);
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

bool QSGClipNode_virtualbase_isSubtreeBlocked(const VirtualQSGClipNode* self) {

	return self->QSGClipNode::isSubtreeBlocked();
}

void QSGClipNode_virtualbase_preprocess(VirtualQSGClipNode* self) {

	self->QSGClipNode::preprocess();
}

const QSGClipNode_VTable* QSGClipNode_vtbl(const VirtualQSGClipNode* self) { return self->vtbl; }
void* QSGClipNode_vdata(const VirtualQSGClipNode* self) { return self->vdata; }
void QSGClipNode_setVdata(VirtualQSGClipNode* self, void* vdata) { self->vdata = vdata; }

void QSGClipNode_delete(QSGClipNode* self) {
	delete self;
}

class VirtualQSGTransformNode final : public QSGTransformNode {
	const QSGTransformNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGTransformNode_VTable* QSGTransformNode_vtbl(const VirtualQSGTransformNode* self);
	friend void* QSGTransformNode_vdata(const VirtualQSGTransformNode* self);
	friend void QSGTransformNode_setVdata(VirtualQSGTransformNode* self, void* vdata);

	VirtualQSGTransformNode(const QSGTransformNode_VTable* vtbl, void* vdata): QSGTransformNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGTransformNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGTransformNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGTransformNode_virtualbase_isSubtreeBlocked(const VirtualQSGTransformNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGTransformNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGTransformNode_virtualbase_preprocess(VirtualQSGTransformNode* self);

};

VirtualQSGTransformNode* QSGTransformNode_new(const QSGTransformNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGTransformNode(vtbl, vdata);
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

bool QSGTransformNode_virtualbase_isSubtreeBlocked(const VirtualQSGTransformNode* self) {

	return self->QSGTransformNode::isSubtreeBlocked();
}

void QSGTransformNode_virtualbase_preprocess(VirtualQSGTransformNode* self) {

	self->QSGTransformNode::preprocess();
}

const QSGTransformNode_VTable* QSGTransformNode_vtbl(const VirtualQSGTransformNode* self) { return self->vtbl; }
void* QSGTransformNode_vdata(const VirtualQSGTransformNode* self) { return self->vdata; }
void QSGTransformNode_setVdata(VirtualQSGTransformNode* self, void* vdata) { self->vdata = vdata; }

void QSGTransformNode_delete(QSGTransformNode* self) {
	delete self;
}

class VirtualQSGRootNode final : public QSGRootNode {
	const QSGRootNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGRootNode_VTable* QSGRootNode_vtbl(const VirtualQSGRootNode* self);
	friend void* QSGRootNode_vdata(const VirtualQSGRootNode* self);
	friend void QSGRootNode_setVdata(VirtualQSGRootNode* self, void* vdata);

	VirtualQSGRootNode(const QSGRootNode_VTable* vtbl, void* vdata): QSGRootNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGRootNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGRootNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGRootNode_virtualbase_isSubtreeBlocked(const VirtualQSGRootNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGRootNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGRootNode_virtualbase_preprocess(VirtualQSGRootNode* self);

};

VirtualQSGRootNode* QSGRootNode_new(const QSGRootNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGRootNode(vtbl, vdata);
}

void QSGRootNode_virtbase(QSGRootNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

bool QSGRootNode_virtualbase_isSubtreeBlocked(const VirtualQSGRootNode* self) {

	return self->QSGRootNode::isSubtreeBlocked();
}

void QSGRootNode_virtualbase_preprocess(VirtualQSGRootNode* self) {

	self->QSGRootNode::preprocess();
}

const QSGRootNode_VTable* QSGRootNode_vtbl(const VirtualQSGRootNode* self) { return self->vtbl; }
void* QSGRootNode_vdata(const VirtualQSGRootNode* self) { return self->vdata; }
void QSGRootNode_setVdata(VirtualQSGRootNode* self, void* vdata) { self->vdata = vdata; }

void QSGRootNode_delete(QSGRootNode* self) {
	delete self;
}

class VirtualQSGOpacityNode final : public QSGOpacityNode {
	const QSGOpacityNode_VTable* vtbl;
	void* vdata;
public:
	friend const QSGOpacityNode_VTable* QSGOpacityNode_vtbl(const VirtualQSGOpacityNode* self);
	friend void* QSGOpacityNode_vdata(const VirtualQSGOpacityNode* self);
	friend void QSGOpacityNode_setVdata(VirtualQSGOpacityNode* self, void* vdata);

	VirtualQSGOpacityNode(const QSGOpacityNode_VTable* vtbl, void* vdata): QSGOpacityNode(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGOpacityNode() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGOpacityNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(this);

		return callback_return_value;
	}

	friend bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const VirtualQSGOpacityNode* self);

	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGOpacityNode::preprocess();
			return;
		}


		vtbl->preprocess(this);

	}

	friend void QSGOpacityNode_virtualbase_preprocess(VirtualQSGOpacityNode* self);

};

VirtualQSGOpacityNode* QSGOpacityNode_new(const QSGOpacityNode_VTable* vtbl, void* vdata) {
	return new VirtualQSGOpacityNode(vtbl, vdata);
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

bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const VirtualQSGOpacityNode* self) {

	return self->QSGOpacityNode::isSubtreeBlocked();
}

void QSGOpacityNode_virtualbase_preprocess(VirtualQSGOpacityNode* self) {

	self->QSGOpacityNode::preprocess();
}

const QSGOpacityNode_VTable* QSGOpacityNode_vtbl(const VirtualQSGOpacityNode* self) { return self->vtbl; }
void* QSGOpacityNode_vdata(const VirtualQSGOpacityNode* self) { return self->vdata; }
void QSGOpacityNode_setVdata(VirtualQSGOpacityNode* self, void* vdata) { self->vdata = vdata; }

void QSGOpacityNode_delete(QSGOpacityNode* self) {
	delete self;
}

void QSGNodeVisitor_delete(QSGNodeVisitor* self) {
	delete self;
}

