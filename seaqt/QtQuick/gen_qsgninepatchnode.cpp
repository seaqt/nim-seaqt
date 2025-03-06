#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometry>
#include <QSGGeometryNode>
#include <QSGNinePatchNode>
#include <QSGNode>
#include <QSGTexture>
#include <QVector4D>
#include <qsgninepatchnode.h>
#include "gen_qsgninepatchnode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QSGNinePatchNode_virtbase(QSGNinePatchNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGNinePatchNode_setTexture(QSGNinePatchNode* self, QSGTexture* texture) {
	self->setTexture(texture);
}

void QSGNinePatchNode_setBounds(QSGNinePatchNode* self, QRectF* bounds) {
	self->setBounds(*bounds);
}

void QSGNinePatchNode_setDevicePixelRatio(QSGNinePatchNode* self, double ratio) {
	self->setDevicePixelRatio(static_cast<qreal>(ratio));
}

void QSGNinePatchNode_setPadding(QSGNinePatchNode* self, double left, double top, double right, double bottom) {
	self->setPadding(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QSGNinePatchNode_update(QSGNinePatchNode* self) {
	self->update();
}

void QSGNinePatchNode_rebuildGeometry(QSGTexture* texture, QSGGeometry* geometry, QVector4D* padding, QRectF* bounds, double dpr) {
	QSGNinePatchNode::rebuildGeometry(texture, geometry, *padding, *bounds, static_cast<qreal>(dpr));
}

void QSGNinePatchNode_delete(QSGNinePatchNode* self) {
	delete self;
}

