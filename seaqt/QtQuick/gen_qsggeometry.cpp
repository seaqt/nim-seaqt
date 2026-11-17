#include <QRectF>
#include <QSGGeometry>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__Attribute
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__AttributeSet
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__ColoredPoint2D
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__Point2D
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__TexturedPoint2D
#include <qsggeometry.h>
#include "gen_qsggeometry.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSGGeometry* QSGGeometry_new(QSGGeometry__AttributeSet* attribs, int vertexCount) {
	return new (std::nothrow) QSGGeometry(*attribs, static_cast<int>(vertexCount));
}

QSGGeometry* QSGGeometry_new2(QSGGeometry__AttributeSet* attribs, int vertexCount, int indexCount) {
	return new (std::nothrow) QSGGeometry(*attribs, static_cast<int>(vertexCount), static_cast<int>(indexCount));
}

QSGGeometry* QSGGeometry_new3(QSGGeometry__AttributeSet* attribs, int vertexCount, int indexCount, int indexType) {
	return new (std::nothrow) QSGGeometry(*attribs, static_cast<int>(vertexCount), static_cast<int>(indexCount), static_cast<int>(indexType));
}

QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_Point2D() {
	const QSGGeometry::AttributeSet& _ret = QSGGeometry::defaultAttributes_Point2D();
	// Cast returned reference into pointer
	return const_cast<QSGGeometry::AttributeSet*>(&_ret);
}

QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_TexturedPoint2D() {
	const QSGGeometry::AttributeSet& _ret = QSGGeometry::defaultAttributes_TexturedPoint2D();
	// Cast returned reference into pointer
	return const_cast<QSGGeometry::AttributeSet*>(&_ret);
}

QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_ColoredPoint2D() {
	const QSGGeometry::AttributeSet& _ret = QSGGeometry::defaultAttributes_ColoredPoint2D();
	// Cast returned reference into pointer
	return const_cast<QSGGeometry::AttributeSet*>(&_ret);
}

void QSGGeometry_setDrawingMode(QSGGeometry* self, unsigned int mode) {
	self->setDrawingMode(static_cast<unsigned int>(mode));
}

unsigned int QSGGeometry_drawingMode(const QSGGeometry* self) {
	return self->drawingMode();
}

void QSGGeometry_allocate(QSGGeometry* self, int vertexCount) {
	self->allocate(static_cast<int>(vertexCount));
}

int QSGGeometry_vertexCount(const QSGGeometry* self) {
	return self->vertexCount();
}

void* QSGGeometry_vertexData(QSGGeometry* self) {
	return self->vertexData();
}

QSGGeometry__Point2D* QSGGeometry_vertexDataAsPoint2D(QSGGeometry* self) {
	return self->vertexDataAsPoint2D();
}

QSGGeometry__TexturedPoint2D* QSGGeometry_vertexDataAsTexturedPoint2D(QSGGeometry* self) {
	return self->vertexDataAsTexturedPoint2D();
}

QSGGeometry__ColoredPoint2D* QSGGeometry_vertexDataAsColoredPoint2D(QSGGeometry* self) {
	return self->vertexDataAsColoredPoint2D();
}

const void* QSGGeometry_vertexData2(const QSGGeometry* self) {
	return (const void*) self->vertexData();
}

QSGGeometry__Point2D* QSGGeometry_vertexDataAsPoint2D2(const QSGGeometry* self) {
	return (QSGGeometry__Point2D*) self->vertexDataAsPoint2D();
}

QSGGeometry__TexturedPoint2D* QSGGeometry_vertexDataAsTexturedPoint2D2(const QSGGeometry* self) {
	return (QSGGeometry__TexturedPoint2D*) self->vertexDataAsTexturedPoint2D();
}

QSGGeometry__ColoredPoint2D* QSGGeometry_vertexDataAsColoredPoint2D2(const QSGGeometry* self) {
	return (QSGGeometry__ColoredPoint2D*) self->vertexDataAsColoredPoint2D();
}

int QSGGeometry_indexType(const QSGGeometry* self) {
	return self->indexType();
}

int QSGGeometry_indexCount(const QSGGeometry* self) {
	return self->indexCount();
}

void* QSGGeometry_indexData(QSGGeometry* self) {
	return self->indexData();
}

unsigned int* QSGGeometry_indexDataAsUInt(QSGGeometry* self) {
	uint* _ret = self->indexDataAsUInt();
	return static_cast<unsigned int*>(_ret);
}

unsigned short* QSGGeometry_indexDataAsUShort(QSGGeometry* self) {
	quint16* _ret = self->indexDataAsUShort();
	return static_cast<unsigned short*>(_ret);
}

int QSGGeometry_sizeOfIndex(const QSGGeometry* self) {
	return self->sizeOfIndex();
}

const void* QSGGeometry_indexData2(const QSGGeometry* self) {
	return (const void*) self->indexData();
}

const unsigned int* QSGGeometry_indexDataAsUInt2(const QSGGeometry* self) {
	const uint* _ret = self->indexDataAsUInt();
	return static_cast<const unsigned int*>(_ret);
}

const unsigned short* QSGGeometry_indexDataAsUShort2(const QSGGeometry* self) {
	const quint16* _ret = self->indexDataAsUShort();
	return static_cast<const unsigned short*>(_ret);
}

int QSGGeometry_attributeCount(const QSGGeometry* self) {
	return self->attributeCount();
}

QSGGeometry__Attribute* QSGGeometry_attributes(const QSGGeometry* self) {
	return (QSGGeometry__Attribute*) self->attributes();
}

int QSGGeometry_sizeOfVertex(const QSGGeometry* self) {
	return self->sizeOfVertex();
}

void QSGGeometry_updateRectGeometry(QSGGeometry* g, QRectF* rect) {
	QSGGeometry::updateRectGeometry(g, *rect);
}

void QSGGeometry_updateTexturedRectGeometry(QSGGeometry* g, QRectF* rect, QRectF* sourceRect) {
	QSGGeometry::updateTexturedRectGeometry(g, *rect, *sourceRect);
}

void QSGGeometry_updateColoredRectGeometry(QSGGeometry* g, QRectF* rect) {
	QSGGeometry::updateColoredRectGeometry(g, *rect);
}

void QSGGeometry_setIndexDataPattern(QSGGeometry* self, int p) {
	self->setIndexDataPattern(static_cast<QSGGeometry::DataPattern>(p));
}

int QSGGeometry_indexDataPattern(const QSGGeometry* self) {
	QSGGeometry::DataPattern _ret = self->indexDataPattern();
	return static_cast<int>(_ret);
}

void QSGGeometry_setVertexDataPattern(QSGGeometry* self, int p) {
	self->setVertexDataPattern(static_cast<QSGGeometry::DataPattern>(p));
}

int QSGGeometry_vertexDataPattern(const QSGGeometry* self) {
	QSGGeometry::DataPattern _ret = self->vertexDataPattern();
	return static_cast<int>(_ret);
}

void QSGGeometry_markIndexDataDirty(QSGGeometry* self) {
	self->markIndexDataDirty();
}

void QSGGeometry_markVertexDataDirty(QSGGeometry* self) {
	self->markVertexDataDirty();
}

float QSGGeometry_lineWidth(const QSGGeometry* self) {
	return self->lineWidth();
}

void QSGGeometry_setLineWidth(QSGGeometry* self, float w) {
	self->setLineWidth(static_cast<float>(w));
}

void QSGGeometry_allocate2(QSGGeometry* self, int vertexCount, int indexCount) {
	self->allocate(static_cast<int>(vertexCount), static_cast<int>(indexCount));
}

void QSGGeometry_delete(QSGGeometry* self) {
	delete self;
}

int QSGGeometry__Attribute_position(const QSGGeometry__Attribute* self) {
	return self->position;
}

void QSGGeometry__Attribute_setPosition(QSGGeometry__Attribute* self, int position) {
	self->position = static_cast<int>(position);
}

int QSGGeometry__Attribute_tupleSize(const QSGGeometry__Attribute* self) {
	return self->tupleSize;
}

void QSGGeometry__Attribute_setTupleSize(QSGGeometry__Attribute* self, int tupleSize) {
	self->tupleSize = static_cast<int>(tupleSize);
}

int QSGGeometry__Attribute_type(const QSGGeometry__Attribute* self) {
	return self->type;
}

void QSGGeometry__Attribute_setType(QSGGeometry__Attribute* self, int type) {
	self->type = static_cast<int>(type);
}

unsigned int QSGGeometry__Attribute_isVertexCoordinate(const QSGGeometry__Attribute* self) {
	uint isVertexCoordinate_ret = self->isVertexCoordinate;
	return static_cast<unsigned int>(isVertexCoordinate_ret);
}

void QSGGeometry__Attribute_setIsVertexCoordinate(QSGGeometry__Attribute* self, unsigned int isVertexCoordinate) {
	self->isVertexCoordinate = static_cast<uint>(isVertexCoordinate);
}

int QSGGeometry__Attribute_attributeType(const QSGGeometry__Attribute* self) {
	QSGGeometry::AttributeType attributeType_ret = self->attributeType;
	return static_cast<int>(attributeType_ret);
}

void QSGGeometry__Attribute_setAttributeType(QSGGeometry__Attribute* self, int attributeType) {
	self->attributeType = static_cast<QSGGeometry::AttributeType>(attributeType);
}

unsigned int QSGGeometry__Attribute_reserved(const QSGGeometry__Attribute* self) {
	uint reserved_ret = self->reserved;
	return static_cast<unsigned int>(reserved_ret);
}

void QSGGeometry__Attribute_setReserved(QSGGeometry__Attribute* self, unsigned int reserved) {
	self->reserved = static_cast<uint>(reserved);
}

QSGGeometry__Attribute* QSGGeometry__Attribute_create(int pos, int tupleSize, int primitiveType) {
	return new QSGGeometry::Attribute(QSGGeometry::Attribute::create(static_cast<int>(pos), static_cast<int>(tupleSize), static_cast<int>(primitiveType)));
}

QSGGeometry__Attribute* QSGGeometry__Attribute_createWithAttributeType(int pos, int tupleSize, int primitiveType, int attributeType) {
	return new QSGGeometry::Attribute(QSGGeometry::Attribute::createWithAttributeType(static_cast<int>(pos), static_cast<int>(tupleSize), static_cast<int>(primitiveType), static_cast<QSGGeometry::AttributeType>(attributeType)));
}

QSGGeometry__Attribute* QSGGeometry__Attribute_create2(int pos, int tupleSize, int primitiveType, bool isPosition) {
	return new QSGGeometry::Attribute(QSGGeometry::Attribute::create(static_cast<int>(pos), static_cast<int>(tupleSize), static_cast<int>(primitiveType), isPosition));
}

void QSGGeometry__Attribute_delete(QSGGeometry__Attribute* self) {
	delete self;
}

int QSGGeometry__AttributeSet_count(const QSGGeometry__AttributeSet* self) {
	return self->count;
}

void QSGGeometry__AttributeSet_setCount(QSGGeometry__AttributeSet* self, int count) {
	self->count = static_cast<int>(count);
}

int QSGGeometry__AttributeSet_stride(const QSGGeometry__AttributeSet* self) {
	return self->stride;
}

void QSGGeometry__AttributeSet_setStride(QSGGeometry__AttributeSet* self, int stride) {
	self->stride = static_cast<int>(stride);
}

QSGGeometry__Attribute* QSGGeometry__AttributeSet_attributes(const QSGGeometry__AttributeSet* self) {
	return (QSGGeometry__Attribute*) self->attributes;
}

void QSGGeometry__AttributeSet_setAttributes(QSGGeometry__AttributeSet* self, QSGGeometry__Attribute* attributes) {
	self->attributes = attributes;
}

void QSGGeometry__AttributeSet_delete(QSGGeometry__AttributeSet* self) {
	delete self;
}

float QSGGeometry__Point2D_x(const QSGGeometry__Point2D* self) {
	return self->x;
}

void QSGGeometry__Point2D_setX(QSGGeometry__Point2D* self, float x) {
	self->x = static_cast<float>(x);
}

float QSGGeometry__Point2D_y(const QSGGeometry__Point2D* self) {
	return self->y;
}

void QSGGeometry__Point2D_setY(QSGGeometry__Point2D* self, float y) {
	self->y = static_cast<float>(y);
}

void QSGGeometry__Point2D_set(QSGGeometry__Point2D* self, float nx, float ny) {
	self->set(static_cast<float>(nx), static_cast<float>(ny));
}

void QSGGeometry__Point2D_delete(QSGGeometry__Point2D* self) {
	delete self;
}

float QSGGeometry__TexturedPoint2D_x(const QSGGeometry__TexturedPoint2D* self) {
	return self->x;
}

void QSGGeometry__TexturedPoint2D_setX(QSGGeometry__TexturedPoint2D* self, float x) {
	self->x = static_cast<float>(x);
}

float QSGGeometry__TexturedPoint2D_y(const QSGGeometry__TexturedPoint2D* self) {
	return self->y;
}

void QSGGeometry__TexturedPoint2D_setY(QSGGeometry__TexturedPoint2D* self, float y) {
	self->y = static_cast<float>(y);
}

float QSGGeometry__TexturedPoint2D_tx(const QSGGeometry__TexturedPoint2D* self) {
	return self->tx;
}

void QSGGeometry__TexturedPoint2D_setTx(QSGGeometry__TexturedPoint2D* self, float tx) {
	self->tx = static_cast<float>(tx);
}

float QSGGeometry__TexturedPoint2D_ty(const QSGGeometry__TexturedPoint2D* self) {
	return self->ty;
}

void QSGGeometry__TexturedPoint2D_setTy(QSGGeometry__TexturedPoint2D* self, float ty) {
	self->ty = static_cast<float>(ty);
}

void QSGGeometry__TexturedPoint2D_set(QSGGeometry__TexturedPoint2D* self, float nx, float ny, float ntx, float nty) {
	self->set(static_cast<float>(nx), static_cast<float>(ny), static_cast<float>(ntx), static_cast<float>(nty));
}

void QSGGeometry__TexturedPoint2D_delete(QSGGeometry__TexturedPoint2D* self) {
	delete self;
}

float QSGGeometry__ColoredPoint2D_x(const QSGGeometry__ColoredPoint2D* self) {
	return self->x;
}

void QSGGeometry__ColoredPoint2D_setX(QSGGeometry__ColoredPoint2D* self, float x) {
	self->x = static_cast<float>(x);
}

float QSGGeometry__ColoredPoint2D_y(const QSGGeometry__ColoredPoint2D* self) {
	return self->y;
}

void QSGGeometry__ColoredPoint2D_setY(QSGGeometry__ColoredPoint2D* self, float y) {
	self->y = static_cast<float>(y);
}

unsigned char QSGGeometry__ColoredPoint2D_r(const QSGGeometry__ColoredPoint2D* self) {
	return self->r;
}

void QSGGeometry__ColoredPoint2D_setR(QSGGeometry__ColoredPoint2D* self, unsigned char r) {
	self->r = static_cast<unsigned char>(r);
}

unsigned char QSGGeometry__ColoredPoint2D_g(const QSGGeometry__ColoredPoint2D* self) {
	return self->g;
}

void QSGGeometry__ColoredPoint2D_setG(QSGGeometry__ColoredPoint2D* self, unsigned char g) {
	self->g = static_cast<unsigned char>(g);
}

unsigned char QSGGeometry__ColoredPoint2D_b(const QSGGeometry__ColoredPoint2D* self) {
	return self->b;
}

void QSGGeometry__ColoredPoint2D_setB(QSGGeometry__ColoredPoint2D* self, unsigned char b) {
	self->b = static_cast<unsigned char>(b);
}

unsigned char QSGGeometry__ColoredPoint2D_a(const QSGGeometry__ColoredPoint2D* self) {
	return self->a;
}

void QSGGeometry__ColoredPoint2D_setA(QSGGeometry__ColoredPoint2D* self, unsigned char a) {
	self->a = static_cast<unsigned char>(a);
}

void QSGGeometry__ColoredPoint2D_set(QSGGeometry__ColoredPoint2D* self, float nx, float ny, unsigned char nr, unsigned char ng, unsigned char nb, unsigned char na) {
	self->set(static_cast<float>(nx), static_cast<float>(ny), static_cast<uchar>(nr), static_cast<uchar>(ng), static_cast<uchar>(nb), static_cast<uchar>(na));
}

void QSGGeometry__ColoredPoint2D_delete(QSGGeometry__ColoredPoint2D* self) {
	delete self;
}

