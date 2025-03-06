#include <QColor>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGRectangleNode>
#include <qsgrectanglenode.h>
#include "gen_qsgrectanglenode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QSGRectangleNode_virtbase(QSGRectangleNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGRectangleNode_setRect(QSGRectangleNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGRectangleNode_setRect2(QSGRectangleNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGRectangleNode_rect(const QSGRectangleNode* self) {
	return new QRectF(self->rect());
}

void QSGRectangleNode_setColor(QSGRectangleNode* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGRectangleNode_color(const QSGRectangleNode* self) {
	return new QColor(self->color());
}

void QSGRectangleNode_delete(QSGRectangleNode* self) {
	delete self;
}

