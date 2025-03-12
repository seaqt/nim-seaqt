#pragma once
#ifndef SEAQT_QTGUI_GEN_QPAINTENGINE_H
#define SEAQT_QTGUI_GEN_QPAINTENGINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBrush;
class QFont;
class QImage;
class QLine;
class QLineF;
class QPaintDevice;
class QPaintEngine;
class QPaintEngineState;
class QPainter;
class QPainterPath;
class QPen;
class QPixmap;
class QPoint;
class QPointF;
class QRect;
class QRectF;
class QRegion;
class QSize;
class QTextItem;
class QTransform;
#else
typedef struct QBrush QBrush;
typedef struct QFont QFont;
typedef struct QImage QImage;
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEngineState QPaintEngineState;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPen QPen;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QTextItem QTextItem;
typedef struct QTransform QTransform;
#endif

double QTextItem_descent(const QTextItem* self);
double QTextItem_ascent(const QTextItem* self);
double QTextItem_width(const QTextItem* self);
int QTextItem_renderFlags(const QTextItem* self);
struct miqt_string QTextItem_text(const QTextItem* self);
QFont* QTextItem_font(const QTextItem* self);

void QTextItem_delete(QTextItem* self);

typedef struct VirtualQPaintEngine VirtualQPaintEngine;
typedef struct QPaintEngine_VTable{
	void (*destructor)(VirtualQPaintEngine* self);
	bool (*begin)(VirtualQPaintEngine* self, QPaintDevice* pdev);
	bool (*end)(VirtualQPaintEngine* self);
	void (*updateState)(VirtualQPaintEngine* self, QPaintEngineState* state);
	void (*drawRects)(VirtualQPaintEngine* self, QRect* rects, int rectCount);
	void (*drawRects2)(VirtualQPaintEngine* self, QRectF* rects, int rectCount);
	void (*drawLines)(VirtualQPaintEngine* self, QLine* lines, int lineCount);
	void (*drawLines2)(VirtualQPaintEngine* self, QLineF* lines, int lineCount);
	void (*drawEllipse)(VirtualQPaintEngine* self, QRectF* r);
	void (*drawEllipseWithQRect)(VirtualQPaintEngine* self, QRect* r);
	void (*drawPath)(VirtualQPaintEngine* self, QPainterPath* path);
	void (*drawPoints)(VirtualQPaintEngine* self, QPointF* points, int pointCount);
	void (*drawPoints2)(VirtualQPaintEngine* self, QPoint* points, int pointCount);
	void (*drawPolygon)(VirtualQPaintEngine* self, QPointF* points, int pointCount, int mode);
	void (*drawPolygon2)(VirtualQPaintEngine* self, QPoint* points, int pointCount, int mode);
	void (*drawPixmap)(VirtualQPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr);
	void (*drawTextItem)(VirtualQPaintEngine* self, QPointF* p, QTextItem* textItem);
	void (*drawTiledPixmap)(VirtualQPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);
	void (*drawImage)(VirtualQPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);
	QPoint* (*coordinateOffset)(const VirtualQPaintEngine* self);
	int (*type)(const VirtualQPaintEngine* self);
	QPixmap* (*createPixmap)(VirtualQPaintEngine* self, QSize* size);
	QPixmap* (*createPixmapFromImage)(VirtualQPaintEngine* self, QImage* image, int flags);
}QPaintEngine_VTable;

const QPaintEngine_VTable* QPaintEngine_vtbl(const VirtualQPaintEngine* self);
void* QPaintEngine_vdata(const VirtualQPaintEngine* self);
void QPaintEngine_setVdata(VirtualQPaintEngine* self, void* vdata);

VirtualQPaintEngine* QPaintEngine_new(const QPaintEngine_VTable* vtbl, void* vdata);
VirtualQPaintEngine* QPaintEngine_new2(const QPaintEngine_VTable* vtbl, void* vdata, int features);

bool QPaintEngine_isActive(const QPaintEngine* self);
void QPaintEngine_setActive(QPaintEngine* self, bool newState);
bool QPaintEngine_begin(QPaintEngine* self, QPaintDevice* pdev);
bool QPaintEngine_end(QPaintEngine* self);
void QPaintEngine_updateState(QPaintEngine* self, QPaintEngineState* state);
void QPaintEngine_drawRects(QPaintEngine* self, QRect* rects, int rectCount);
void QPaintEngine_drawRects2(QPaintEngine* self, QRectF* rects, int rectCount);
void QPaintEngine_drawLines(QPaintEngine* self, QLine* lines, int lineCount);
void QPaintEngine_drawLines2(QPaintEngine* self, QLineF* lines, int lineCount);
void QPaintEngine_drawEllipse(QPaintEngine* self, QRectF* r);
void QPaintEngine_drawEllipseWithQRect(QPaintEngine* self, QRect* r);
void QPaintEngine_drawPath(QPaintEngine* self, QPainterPath* path);
void QPaintEngine_drawPoints(QPaintEngine* self, QPointF* points, int pointCount);
void QPaintEngine_drawPoints2(QPaintEngine* self, QPoint* points, int pointCount);
void QPaintEngine_drawPolygon(QPaintEngine* self, QPointF* points, int pointCount, int mode);
void QPaintEngine_drawPolygon2(QPaintEngine* self, QPoint* points, int pointCount, int mode);
void QPaintEngine_drawPixmap(QPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr);
void QPaintEngine_drawTextItem(QPaintEngine* self, QPointF* p, QTextItem* textItem);
void QPaintEngine_drawTiledPixmap(QPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);
void QPaintEngine_drawImage(QPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);
void QPaintEngine_setPaintDevice(QPaintEngine* self, QPaintDevice* device);
QPaintDevice* QPaintEngine_paintDevice(const QPaintEngine* self);
void QPaintEngine_setSystemClip(QPaintEngine* self, QRegion* baseClip);
QRegion* QPaintEngine_systemClip(const QPaintEngine* self);
void QPaintEngine_setSystemRect(QPaintEngine* self, QRect* rect);
QRect* QPaintEngine_systemRect(const QPaintEngine* self);
QPoint* QPaintEngine_coordinateOffset(const QPaintEngine* self);
int QPaintEngine_type(const QPaintEngine* self);
void QPaintEngine_fixNegRect(QPaintEngine* self, int* x, int* y, int* w, int* h);
bool QPaintEngine_testDirty(QPaintEngine* self, int df);
void QPaintEngine_setDirty(QPaintEngine* self, int df);
void QPaintEngine_clearDirty(QPaintEngine* self, int df);
bool QPaintEngine_hasFeature(const QPaintEngine* self, int feature);
QPainter* QPaintEngine_painter(const QPaintEngine* self);
void QPaintEngine_syncState(QPaintEngine* self);
bool QPaintEngine_isExtended(const QPaintEngine* self);
QPixmap* QPaintEngine_createPixmap(QPaintEngine* self, QSize* size);
QPixmap* QPaintEngine_createPixmapFromImage(QPaintEngine* self, QImage* image, int flags);

bool QPaintEngine_virtualbase_begin(VirtualQPaintEngine* self, QPaintDevice* pdev);
bool QPaintEngine_virtualbase_end(VirtualQPaintEngine* self);
void QPaintEngine_virtualbase_updateState(VirtualQPaintEngine* self, QPaintEngineState* state);
void QPaintEngine_virtualbase_drawRects(VirtualQPaintEngine* self, QRect* rects, int rectCount);
void QPaintEngine_virtualbase_drawRects2(VirtualQPaintEngine* self, QRectF* rects, int rectCount);
void QPaintEngine_virtualbase_drawLines(VirtualQPaintEngine* self, QLine* lines, int lineCount);
void QPaintEngine_virtualbase_drawLines2(VirtualQPaintEngine* self, QLineF* lines, int lineCount);
void QPaintEngine_virtualbase_drawEllipse(VirtualQPaintEngine* self, QRectF* r);
void QPaintEngine_virtualbase_drawEllipseWithQRect(VirtualQPaintEngine* self, QRect* r);
void QPaintEngine_virtualbase_drawPath(VirtualQPaintEngine* self, QPainterPath* path);
void QPaintEngine_virtualbase_drawPoints(VirtualQPaintEngine* self, QPointF* points, int pointCount);
void QPaintEngine_virtualbase_drawPoints2(VirtualQPaintEngine* self, QPoint* points, int pointCount);
void QPaintEngine_virtualbase_drawPolygon(VirtualQPaintEngine* self, QPointF* points, int pointCount, int mode);
void QPaintEngine_virtualbase_drawPolygon2(VirtualQPaintEngine* self, QPoint* points, int pointCount, int mode);
void QPaintEngine_virtualbase_drawPixmap(VirtualQPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr);
void QPaintEngine_virtualbase_drawTextItem(VirtualQPaintEngine* self, QPointF* p, QTextItem* textItem);
void QPaintEngine_virtualbase_drawTiledPixmap(VirtualQPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);
void QPaintEngine_virtualbase_drawImage(VirtualQPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);
QPoint* QPaintEngine_virtualbase_coordinateOffset(const VirtualQPaintEngine* self);
int QPaintEngine_virtualbase_type(const VirtualQPaintEngine* self);
QPixmap* QPaintEngine_virtualbase_createPixmap(VirtualQPaintEngine* self, QSize* size);
QPixmap* QPaintEngine_virtualbase_createPixmapFromImage(VirtualQPaintEngine* self, QImage* image, int flags);

void QPaintEngine_delete(QPaintEngine* self);

int QPaintEngineState_state(const QPaintEngineState* self);
QPen* QPaintEngineState_pen(const QPaintEngineState* self);
QBrush* QPaintEngineState_brush(const QPaintEngineState* self);
QPointF* QPaintEngineState_brushOrigin(const QPaintEngineState* self);
QBrush* QPaintEngineState_backgroundBrush(const QPaintEngineState* self);
int QPaintEngineState_backgroundMode(const QPaintEngineState* self);
QFont* QPaintEngineState_font(const QPaintEngineState* self);
QTransform* QPaintEngineState_transform(const QPaintEngineState* self);
int QPaintEngineState_clipOperation(const QPaintEngineState* self);
QRegion* QPaintEngineState_clipRegion(const QPaintEngineState* self);
QPainterPath* QPaintEngineState_clipPath(const QPaintEngineState* self);
bool QPaintEngineState_isClipEnabled(const QPaintEngineState* self);
int QPaintEngineState_renderHints(const QPaintEngineState* self);
int QPaintEngineState_compositionMode(const QPaintEngineState* self);
double QPaintEngineState_opacity(const QPaintEngineState* self);
QPainter* QPaintEngineState_painter(const QPaintEngineState* self);
bool QPaintEngineState_brushNeedsResolving(const QPaintEngineState* self);
bool QPaintEngineState_penNeedsResolving(const QPaintEngineState* self);

void QPaintEngineState_delete(QPaintEngineState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
