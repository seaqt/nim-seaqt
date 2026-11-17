#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGGEOMETRY_H
#define SEAQT_QTQUICK_GEN_QSGGEOMETRY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRectF;
class QSGGeometry;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__Attribute)
typedef QSGGeometry::Attribute QSGGeometry__Attribute;
#else
class QSGGeometry__Attribute;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__AttributeSet)
typedef QSGGeometry::AttributeSet QSGGeometry__AttributeSet;
#else
class QSGGeometry__AttributeSet;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__ColoredPoint2D)
typedef QSGGeometry::ColoredPoint2D QSGGeometry__ColoredPoint2D;
#else
class QSGGeometry__ColoredPoint2D;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__Point2D)
typedef QSGGeometry::Point2D QSGGeometry__Point2D;
#else
class QSGGeometry__Point2D;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGGeometry__TexturedPoint2D)
typedef QSGGeometry::TexturedPoint2D QSGGeometry__TexturedPoint2D;
#else
class QSGGeometry__TexturedPoint2D;
#endif
#else
typedef struct QRectF QRectF;
typedef struct QSGGeometry QSGGeometry;
typedef struct QSGGeometry__Attribute QSGGeometry__Attribute;
typedef struct QSGGeometry__AttributeSet QSGGeometry__AttributeSet;
typedef struct QSGGeometry__ColoredPoint2D QSGGeometry__ColoredPoint2D;
typedef struct QSGGeometry__Point2D QSGGeometry__Point2D;
typedef struct QSGGeometry__TexturedPoint2D QSGGeometry__TexturedPoint2D;
#endif

QSGGeometry* QSGGeometry_new(QSGGeometry__AttributeSet* attribs, int vertexCount);
QSGGeometry* QSGGeometry_new2(QSGGeometry__AttributeSet* attribs, int vertexCount, int indexCount);
QSGGeometry* QSGGeometry_new3(QSGGeometry__AttributeSet* attribs, int vertexCount, int indexCount, int indexType);

QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_Point2D();
QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_TexturedPoint2D();
QSGGeometry__AttributeSet* QSGGeometry_defaultAttributes_ColoredPoint2D();
void QSGGeometry_setDrawingMode(QSGGeometry* self, unsigned int mode);
unsigned int QSGGeometry_drawingMode(const QSGGeometry* self);
void QSGGeometry_allocate(QSGGeometry* self, int vertexCount);
int QSGGeometry_vertexCount(const QSGGeometry* self);
void* QSGGeometry_vertexData(QSGGeometry* self);
QSGGeometry__Point2D* QSGGeometry_vertexDataAsPoint2D(QSGGeometry* self);
QSGGeometry__TexturedPoint2D* QSGGeometry_vertexDataAsTexturedPoint2D(QSGGeometry* self);
QSGGeometry__ColoredPoint2D* QSGGeometry_vertexDataAsColoredPoint2D(QSGGeometry* self);
const void* QSGGeometry_vertexData2(const QSGGeometry* self);
QSGGeometry__Point2D* QSGGeometry_vertexDataAsPoint2D2(const QSGGeometry* self);
QSGGeometry__TexturedPoint2D* QSGGeometry_vertexDataAsTexturedPoint2D2(const QSGGeometry* self);
QSGGeometry__ColoredPoint2D* QSGGeometry_vertexDataAsColoredPoint2D2(const QSGGeometry* self);
int QSGGeometry_indexType(const QSGGeometry* self);
int QSGGeometry_indexCount(const QSGGeometry* self);
void* QSGGeometry_indexData(QSGGeometry* self);
unsigned int* QSGGeometry_indexDataAsUInt(QSGGeometry* self);
unsigned short* QSGGeometry_indexDataAsUShort(QSGGeometry* self);
int QSGGeometry_sizeOfIndex(const QSGGeometry* self);
const void* QSGGeometry_indexData2(const QSGGeometry* self);
const unsigned int* QSGGeometry_indexDataAsUInt2(const QSGGeometry* self);
const unsigned short* QSGGeometry_indexDataAsUShort2(const QSGGeometry* self);
int QSGGeometry_attributeCount(const QSGGeometry* self);
QSGGeometry__Attribute* QSGGeometry_attributes(const QSGGeometry* self);
int QSGGeometry_sizeOfVertex(const QSGGeometry* self);
void QSGGeometry_updateRectGeometry(QSGGeometry* g, QRectF* rect);
void QSGGeometry_updateTexturedRectGeometry(QSGGeometry* g, QRectF* rect, QRectF* sourceRect);
void QSGGeometry_updateColoredRectGeometry(QSGGeometry* g, QRectF* rect);
void QSGGeometry_setIndexDataPattern(QSGGeometry* self, int p);
int QSGGeometry_indexDataPattern(const QSGGeometry* self);
void QSGGeometry_setVertexDataPattern(QSGGeometry* self, int p);
int QSGGeometry_vertexDataPattern(const QSGGeometry* self);
void QSGGeometry_markIndexDataDirty(QSGGeometry* self);
void QSGGeometry_markVertexDataDirty(QSGGeometry* self);
float QSGGeometry_lineWidth(const QSGGeometry* self);
void QSGGeometry_setLineWidth(QSGGeometry* self, float w);
void QSGGeometry_allocate2(QSGGeometry* self, int vertexCount, int indexCount);

void QSGGeometry_delete(QSGGeometry* self);

int QSGGeometry__Attribute_position(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setPosition(QSGGeometry__Attribute* self, int position);
int QSGGeometry__Attribute_tupleSize(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setTupleSize(QSGGeometry__Attribute* self, int tupleSize);
int QSGGeometry__Attribute_type(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setType(QSGGeometry__Attribute* self, int type);
unsigned int QSGGeometry__Attribute_isVertexCoordinate(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setIsVertexCoordinate(QSGGeometry__Attribute* self, unsigned int isVertexCoordinate);
int QSGGeometry__Attribute_attributeType(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setAttributeType(QSGGeometry__Attribute* self, int attributeType);
unsigned int QSGGeometry__Attribute_reserved(const QSGGeometry__Attribute* self);
void QSGGeometry__Attribute_setReserved(QSGGeometry__Attribute* self, unsigned int reserved);
QSGGeometry__Attribute* QSGGeometry__Attribute_create(int pos, int tupleSize, int primitiveType);
QSGGeometry__Attribute* QSGGeometry__Attribute_createWithAttributeType(int pos, int tupleSize, int primitiveType, int attributeType);
QSGGeometry__Attribute* QSGGeometry__Attribute_create2(int pos, int tupleSize, int primitiveType, bool isPosition);

void QSGGeometry__Attribute_delete(QSGGeometry__Attribute* self);

int QSGGeometry__AttributeSet_count(const QSGGeometry__AttributeSet* self);
void QSGGeometry__AttributeSet_setCount(QSGGeometry__AttributeSet* self, int count);
int QSGGeometry__AttributeSet_stride(const QSGGeometry__AttributeSet* self);
void QSGGeometry__AttributeSet_setStride(QSGGeometry__AttributeSet* self, int stride);
QSGGeometry__Attribute* QSGGeometry__AttributeSet_attributes(const QSGGeometry__AttributeSet* self);
void QSGGeometry__AttributeSet_setAttributes(QSGGeometry__AttributeSet* self, QSGGeometry__Attribute* attributes);

void QSGGeometry__AttributeSet_delete(QSGGeometry__AttributeSet* self);

float QSGGeometry__Point2D_x(const QSGGeometry__Point2D* self);
void QSGGeometry__Point2D_setX(QSGGeometry__Point2D* self, float x);
float QSGGeometry__Point2D_y(const QSGGeometry__Point2D* self);
void QSGGeometry__Point2D_setY(QSGGeometry__Point2D* self, float y);
void QSGGeometry__Point2D_set(QSGGeometry__Point2D* self, float nx, float ny);

void QSGGeometry__Point2D_delete(QSGGeometry__Point2D* self);

float QSGGeometry__TexturedPoint2D_x(const QSGGeometry__TexturedPoint2D* self);
void QSGGeometry__TexturedPoint2D_setX(QSGGeometry__TexturedPoint2D* self, float x);
float QSGGeometry__TexturedPoint2D_y(const QSGGeometry__TexturedPoint2D* self);
void QSGGeometry__TexturedPoint2D_setY(QSGGeometry__TexturedPoint2D* self, float y);
float QSGGeometry__TexturedPoint2D_tx(const QSGGeometry__TexturedPoint2D* self);
void QSGGeometry__TexturedPoint2D_setTx(QSGGeometry__TexturedPoint2D* self, float tx);
float QSGGeometry__TexturedPoint2D_ty(const QSGGeometry__TexturedPoint2D* self);
void QSGGeometry__TexturedPoint2D_setTy(QSGGeometry__TexturedPoint2D* self, float ty);
void QSGGeometry__TexturedPoint2D_set(QSGGeometry__TexturedPoint2D* self, float nx, float ny, float ntx, float nty);

void QSGGeometry__TexturedPoint2D_delete(QSGGeometry__TexturedPoint2D* self);

float QSGGeometry__ColoredPoint2D_x(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setX(QSGGeometry__ColoredPoint2D* self, float x);
float QSGGeometry__ColoredPoint2D_y(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setY(QSGGeometry__ColoredPoint2D* self, float y);
unsigned char QSGGeometry__ColoredPoint2D_r(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setR(QSGGeometry__ColoredPoint2D* self, unsigned char r);
unsigned char QSGGeometry__ColoredPoint2D_g(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setG(QSGGeometry__ColoredPoint2D* self, unsigned char g);
unsigned char QSGGeometry__ColoredPoint2D_b(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setB(QSGGeometry__ColoredPoint2D* self, unsigned char b);
unsigned char QSGGeometry__ColoredPoint2D_a(const QSGGeometry__ColoredPoint2D* self);
void QSGGeometry__ColoredPoint2D_setA(QSGGeometry__ColoredPoint2D* self, unsigned char a);
void QSGGeometry__ColoredPoint2D_set(QSGGeometry__ColoredPoint2D* self, float nx, float ny, unsigned char nr, unsigned char ng, unsigned char nb, unsigned char na);

void QSGGeometry__ColoredPoint2D_delete(QSGGeometry__ColoredPoint2D* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
