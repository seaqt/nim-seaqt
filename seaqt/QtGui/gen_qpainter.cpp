#include <QBrush>
#include <QColor>
#include <QFont>
#include <QFontInfo>
#include <QFontMetrics>
#include <QGlyphRun>
#include <QImage>
#include <QLine>
#include <QLineF>
#include <QList>
#include <QMetaObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPainter__PixmapFragment
#include <QPainterPath>
#include <QPen>
#include <QPicture>
#include <QPixmap>
#include <QPoint>
#include <QPointF>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QStaticText>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextItem>
#include <QTextOption>
#include <QTransform>
#include <qpainter.h>
#include "gen_qpainter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QPainter* QPainter_new() {
	return new (std::nothrow) QPainter();
}

QPainter* QPainter_new_QPaintDevice(QPaintDevice* param1) {
	return new (std::nothrow) QPainter(param1);
}

QPaintDevice* QPainter_device(const QPainter* self) {
	return self->device();
}

bool QPainter_begin(QPainter* self, QPaintDevice* param1) {
	return self->begin(param1);
}

bool QPainter_end(QPainter* self) {
	return self->end();
}

bool QPainter_isActive(const QPainter* self) {
	return self->isActive();
}

void QPainter_setCompositionMode(QPainter* self, int mode) {
	self->setCompositionMode(static_cast<QPainter::CompositionMode>(mode));
}

int QPainter_compositionMode(const QPainter* self) {
	QPainter::CompositionMode _ret = self->compositionMode();
	return static_cast<int>(_ret);
}

QFont* QPainter_font(const QPainter* self) {
	const QFont& _ret = self->font();
	// Cast returned reference into pointer
	return const_cast<QFont*>(&_ret);
}

void QPainter_setFont(QPainter* self, QFont* f) {
	self->setFont(*f);
}

QFontMetrics* QPainter_fontMetrics(const QPainter* self) {
	return new QFontMetrics(self->fontMetrics());
}

QFontInfo* QPainter_fontInfo(const QPainter* self) {
	return new QFontInfo(self->fontInfo());
}

void QPainter_setPen_color(QPainter* self, QColor* color) {
	self->setPen(*color);
}

void QPainter_setPen_pen(QPainter* self, QPen* pen) {
	self->setPen(*pen);
}

void QPainter_setPen_style(QPainter* self, int style) {
	self->setPen(static_cast<Qt::PenStyle>(style));
}

QPen* QPainter_pen(const QPainter* self) {
	const QPen& _ret = self->pen();
	// Cast returned reference into pointer
	return const_cast<QPen*>(&_ret);
}

void QPainter_setBrush_QBrush(QPainter* self, QBrush* brush) {
	self->setBrush(*brush);
}

void QPainter_setBrush_Qt_BrushStyle(QPainter* self, int style) {
	self->setBrush(static_cast<Qt::BrushStyle>(style));
}

void QPainter_setBrush_QColor(QPainter* self, QColor* color) {
	self->setBrush(*color);
}

void QPainter_setBrush_Qt_GlobalColor(QPainter* self, int color) {
	self->setBrush(static_cast<Qt::GlobalColor>(color));
}

QBrush* QPainter_brush(const QPainter* self) {
	const QBrush& _ret = self->brush();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

void QPainter_setBackgroundMode(QPainter* self, int mode) {
	self->setBackgroundMode(static_cast<Qt::BGMode>(mode));
}

int QPainter_backgroundMode(const QPainter* self) {
	Qt::BGMode _ret = self->backgroundMode();
	return static_cast<int>(_ret);
}

QPoint* QPainter_brushOrigin(const QPainter* self) {
	return new QPoint(self->brushOrigin());
}

QPointF* QPainter_brushOriginF(const QPainter* self) {
	return new QPointF(self->brushOriginF());
}

void QPainter_setBrushOrigin_int_int(QPainter* self, int x, int y) {
	self->setBrushOrigin(static_cast<int>(x), static_cast<int>(y));
}

void QPainter_setBrushOrigin_QPoint(QPainter* self, QPoint* brushOrigin) {
	self->setBrushOrigin(*brushOrigin);
}

void QPainter_setBrushOrigin_QPointF(QPainter* self, QPointF* brushOrigin) {
	self->setBrushOrigin(*brushOrigin);
}

void QPainter_setBackground(QPainter* self, QBrush* bg) {
	self->setBackground(*bg);
}

QBrush* QPainter_background(const QPainter* self) {
	const QBrush& _ret = self->background();
	// Cast returned reference into pointer
	return const_cast<QBrush*>(&_ret);
}

double QPainter_opacity(const QPainter* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QPainter_setOpacity(QPainter* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

QRegion* QPainter_clipRegion(const QPainter* self) {
	return new QRegion(self->clipRegion());
}

QPainterPath* QPainter_clipPath(const QPainter* self) {
	return new QPainterPath(self->clipPath());
}

void QPainter_setClipRect_QRectF(QPainter* self, QRectF* param1) {
	self->setClipRect(*param1);
}

void QPainter_setClipRect_QRect(QPainter* self, QRect* param1) {
	self->setClipRect(*param1);
}

void QPainter_setClipRect_int_int_int_int(QPainter* self, int x, int y, int w, int h) {
	self->setClipRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_setClipRegion_QRegion(QPainter* self, QRegion* param1) {
	self->setClipRegion(*param1);
}

void QPainter_setClipPath_path(QPainter* self, QPainterPath* path) {
	self->setClipPath(*path);
}

void QPainter_setClipping(QPainter* self, bool enable) {
	self->setClipping(enable);
}

bool QPainter_hasClipping(const QPainter* self) {
	return self->hasClipping();
}

QRectF* QPainter_clipBoundingRect(const QPainter* self) {
	return new QRectF(self->clipBoundingRect());
}

void QPainter_save(QPainter* self) {
	self->save();
}

void QPainter_restore(QPainter* self) {
	self->restore();
}

void QPainter_setTransform_transform(QPainter* self, QTransform* transform) {
	self->setTransform(*transform);
}

QTransform* QPainter_transform(const QPainter* self) {
	const QTransform& _ret = self->transform();
	// Cast returned reference into pointer
	return const_cast<QTransform*>(&_ret);
}

QTransform* QPainter_deviceTransform(const QPainter* self) {
	const QTransform& _ret = self->deviceTransform();
	// Cast returned reference into pointer
	return const_cast<QTransform*>(&_ret);
}

void QPainter_resetTransform(QPainter* self) {
	self->resetTransform();
}

void QPainter_setWorldTransform_matrix(QPainter* self, QTransform* matrix) {
	self->setWorldTransform(*matrix);
}

QTransform* QPainter_worldTransform(const QPainter* self) {
	const QTransform& _ret = self->worldTransform();
	// Cast returned reference into pointer
	return const_cast<QTransform*>(&_ret);
}

QTransform* QPainter_combinedTransform(const QPainter* self) {
	return new QTransform(self->combinedTransform());
}

void QPainter_setWorldMatrixEnabled(QPainter* self, bool enabled) {
	self->setWorldMatrixEnabled(enabled);
}

bool QPainter_worldMatrixEnabled(const QPainter* self) {
	return self->worldMatrixEnabled();
}

void QPainter_scale(QPainter* self, double sx, double sy) {
	self->scale(static_cast<qreal>(sx), static_cast<qreal>(sy));
}

void QPainter_shear(QPainter* self, double sh, double sv) {
	self->shear(static_cast<qreal>(sh), static_cast<qreal>(sv));
}

void QPainter_rotate(QPainter* self, double a) {
	self->rotate(static_cast<qreal>(a));
}

void QPainter_translate_QPointF(QPainter* self, QPointF* offset) {
	self->translate(*offset);
}

void QPainter_translate_QPoint(QPainter* self, QPoint* offset) {
	self->translate(*offset);
}

void QPainter_translate_qreal_qreal(QPainter* self, double dx, double dy) {
	self->translate(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

QRect* QPainter_window(const QPainter* self) {
	return new QRect(self->window());
}

void QPainter_setWindow_window(QPainter* self, QRect* window) {
	self->setWindow(*window);
}

void QPainter_setWindow_x_y_w_h(QPainter* self, int x, int y, int w, int h) {
	self->setWindow(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

QRect* QPainter_viewport(const QPainter* self) {
	return new QRect(self->viewport());
}

void QPainter_setViewport_viewport(QPainter* self, QRect* viewport) {
	self->setViewport(*viewport);
}

void QPainter_setViewport_x_y_w_h(QPainter* self, int x, int y, int w, int h) {
	self->setViewport(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_setViewTransformEnabled(QPainter* self, bool enable) {
	self->setViewTransformEnabled(enable);
}

bool QPainter_viewTransformEnabled(const QPainter* self) {
	return self->viewTransformEnabled();
}

void QPainter_strokePath(QPainter* self, QPainterPath* path, QPen* pen) {
	self->strokePath(*path, *pen);
}

void QPainter_fillPath(QPainter* self, QPainterPath* path, QBrush* brush) {
	self->fillPath(*path, *brush);
}

void QPainter_drawPath(QPainter* self, QPainterPath* path) {
	self->drawPath(*path);
}

void QPainter_drawPoint_pt(QPainter* self, QPointF* pt) {
	self->drawPoint(*pt);
}

void QPainter_drawPoint_p(QPainter* self, QPoint* p) {
	self->drawPoint(*p);
}

void QPainter_drawPoint_x_y(QPainter* self, int x, int y) {
	self->drawPoint(static_cast<int>(x), static_cast<int>(y));
}

void QPainter_drawPoints_QPointF_int(QPainter* self, QPointF* points, int pointCount) {
	self->drawPoints(points, static_cast<int>(pointCount));
}

void QPainter_drawPoints_QPoint_int(QPainter* self, QPoint* points, int pointCount) {
	self->drawPoints(points, static_cast<int>(pointCount));
}

void QPainter_drawLine_QLineF(QPainter* self, QLineF* line) {
	self->drawLine(*line);
}

void QPainter_drawLine_QLine(QPainter* self, QLine* line) {
	self->drawLine(*line);
}

void QPainter_drawLine_int_int_int_int(QPainter* self, int x1, int y1, int x2, int y2) {
	self->drawLine(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(x2), static_cast<int>(y2));
}

void QPainter_drawLine_QPoint_QPoint(QPainter* self, QPoint* p1, QPoint* p2) {
	self->drawLine(*p1, *p2);
}

void QPainter_drawLine_QPointF_QPointF(QPainter* self, QPointF* p1, QPointF* p2) {
	self->drawLine(*p1, *p2);
}

void QPainter_drawLines_QLineF_int(QPainter* self, QLineF* lines, int lineCount) {
	self->drawLines(lines, static_cast<int>(lineCount));
}

void QPainter_drawLines_QListOfQLineF(QPainter* self, struct seaqt_array /* of QLineF* */  lines) {
	QList<QLineF> lines_QList;
	lines_QList.reserve(lines.len);
	QLineF** lines_arr = static_cast<QLineF**>(lines.data);
	for(size_t i = 0; i < lines.len; ++i) {
		lines_QList.push_back(*(lines_arr[i]));
	}
	self->drawLines(lines_QList);
}

void QPainter_drawLines_QPointF_int(QPainter* self, QPointF* pointPairs, int lineCount) {
	self->drawLines(pointPairs, static_cast<int>(lineCount));
}

void QPainter_drawLines_QListOfQPointF(QPainter* self, struct seaqt_array /* of QPointF* */  pointPairs) {
	QList<QPointF> pointPairs_QList;
	pointPairs_QList.reserve(pointPairs.len);
	QPointF** pointPairs_arr = static_cast<QPointF**>(pointPairs.data);
	for(size_t i = 0; i < pointPairs.len; ++i) {
		pointPairs_QList.push_back(*(pointPairs_arr[i]));
	}
	self->drawLines(pointPairs_QList);
}

void QPainter_drawLines_QLine_int(QPainter* self, QLine* lines, int lineCount) {
	self->drawLines(lines, static_cast<int>(lineCount));
}

void QPainter_drawLines_QListOfQLine(QPainter* self, struct seaqt_array /* of QLine* */  lines) {
	QList<QLine> lines_QList;
	lines_QList.reserve(lines.len);
	QLine** lines_arr = static_cast<QLine**>(lines.data);
	for(size_t i = 0; i < lines.len; ++i) {
		lines_QList.push_back(*(lines_arr[i]));
	}
	self->drawLines(lines_QList);
}

void QPainter_drawLines_QPoint_int(QPainter* self, QPoint* pointPairs, int lineCount) {
	self->drawLines(pointPairs, static_cast<int>(lineCount));
}

void QPainter_drawLines_QListOfQPoint(QPainter* self, struct seaqt_array /* of QPoint* */  pointPairs) {
	QList<QPoint> pointPairs_QList;
	pointPairs_QList.reserve(pointPairs.len);
	QPoint** pointPairs_arr = static_cast<QPoint**>(pointPairs.data);
	for(size_t i = 0; i < pointPairs.len; ++i) {
		pointPairs_QList.push_back(*(pointPairs_arr[i]));
	}
	self->drawLines(pointPairs_QList);
}

void QPainter_drawRect_QRectF(QPainter* self, QRectF* rect) {
	self->drawRect(*rect);
}

void QPainter_drawRect_int_int_int_int(QPainter* self, int x1, int y1, int w, int h) {
	self->drawRect(static_cast<int>(x1), static_cast<int>(y1), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_drawRect_QRect(QPainter* self, QRect* rect) {
	self->drawRect(*rect);
}

void QPainter_drawRects_QRectF_int(QPainter* self, QRectF* rects, int rectCount) {
	self->drawRects(rects, static_cast<int>(rectCount));
}

void QPainter_drawRects_QListOfQRectF(QPainter* self, struct seaqt_array /* of QRectF* */  rectangles) {
	QList<QRectF> rectangles_QList;
	rectangles_QList.reserve(rectangles.len);
	QRectF** rectangles_arr = static_cast<QRectF**>(rectangles.data);
	for(size_t i = 0; i < rectangles.len; ++i) {
		rectangles_QList.push_back(*(rectangles_arr[i]));
	}
	self->drawRects(rectangles_QList);
}

void QPainter_drawRects_QRect_int(QPainter* self, QRect* rects, int rectCount) {
	self->drawRects(rects, static_cast<int>(rectCount));
}

void QPainter_drawRects_QListOfQRect(QPainter* self, struct seaqt_array /* of QRect* */  rectangles) {
	QList<QRect> rectangles_QList;
	rectangles_QList.reserve(rectangles.len);
	QRect** rectangles_arr = static_cast<QRect**>(rectangles.data);
	for(size_t i = 0; i < rectangles.len; ++i) {
		rectangles_QList.push_back(*(rectangles_arr[i]));
	}
	self->drawRects(rectangles_QList);
}

void QPainter_drawEllipse_QRectF(QPainter* self, QRectF* r) {
	self->drawEllipse(*r);
}

void QPainter_drawEllipse_QRect(QPainter* self, QRect* r) {
	self->drawEllipse(*r);
}

void QPainter_drawEllipse_int_int_int_int(QPainter* self, int x, int y, int w, int h) {
	self->drawEllipse(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_drawEllipse_QPointF_qreal_qreal(QPainter* self, QPointF* center, double rx, double ry) {
	self->drawEllipse(*center, static_cast<qreal>(rx), static_cast<qreal>(ry));
}

void QPainter_drawEllipse_QPoint_int_int(QPainter* self, QPoint* center, int rx, int ry) {
	self->drawEllipse(*center, static_cast<int>(rx), static_cast<int>(ry));
}

void QPainter_drawPolyline_QPointF_int(QPainter* self, QPointF* points, int pointCount) {
	self->drawPolyline(points, static_cast<int>(pointCount));
}

void QPainter_drawPolyline_QPoint_int(QPainter* self, QPoint* points, int pointCount) {
	self->drawPolyline(points, static_cast<int>(pointCount));
}

void QPainter_drawPolygon_QPointF_int(QPainter* self, QPointF* points, int pointCount) {
	self->drawPolygon(points, static_cast<int>(pointCount));
}

void QPainter_drawPolygon_QPoint_int(QPainter* self, QPoint* points, int pointCount) {
	self->drawPolygon(points, static_cast<int>(pointCount));
}

void QPainter_drawConvexPolygon_QPointF_int(QPainter* self, QPointF* points, int pointCount) {
	self->drawConvexPolygon(points, static_cast<int>(pointCount));
}

void QPainter_drawConvexPolygon_QPoint_int(QPainter* self, QPoint* points, int pointCount) {
	self->drawConvexPolygon(points, static_cast<int>(pointCount));
}

void QPainter_drawArc_QRectF_int_int(QPainter* self, QRectF* rect, int a, int alen) {
	self->drawArc(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawArc_QRect_int_int(QPainter* self, QRect* param1, int a, int alen) {
	self->drawArc(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawArc_int_int_int_int_int_int(QPainter* self, int x, int y, int w, int h, int a, int alen) {
	self->drawArc(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawPie_QRectF_int_int(QPainter* self, QRectF* rect, int a, int alen) {
	self->drawPie(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawPie_int_int_int_int_int_int(QPainter* self, int x, int y, int w, int h, int a, int alen) {
	self->drawPie(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawPie_QRect_int_int(QPainter* self, QRect* param1, int a, int alen) {
	self->drawPie(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawChord_QRectF_int_int(QPainter* self, QRectF* rect, int a, int alen) {
	self->drawChord(*rect, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawChord_int_int_int_int_int_int(QPainter* self, int x, int y, int w, int h, int a, int alen) {
	self->drawChord(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawChord_QRect_int_int(QPainter* self, QRect* param1, int a, int alen) {
	self->drawChord(*param1, static_cast<int>(a), static_cast<int>(alen));
}

void QPainter_drawRoundedRect_QRectF_qreal_qreal(QPainter* self, QRectF* rect, double xRadius, double yRadius) {
	self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_drawRoundedRect_int_int_int_int_qreal_qreal(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius) {
	self->drawRoundedRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_drawRoundedRect_QRect_qreal_qreal(QPainter* self, QRect* rect, double xRadius, double yRadius) {
	self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius));
}

void QPainter_drawTiledPixmap_QRectF_QPixmap(QPainter* self, QRectF* rect, QPixmap* pm) {
	self->drawTiledPixmap(*rect, *pm);
}

void QPainter_drawTiledPixmap_int_int_int_int_QPixmap(QPainter* self, int x, int y, int w, int h, QPixmap* param5) {
	self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5);
}

void QPainter_drawTiledPixmap_QRect_QPixmap(QPainter* self, QRect* param1, QPixmap* param2) {
	self->drawTiledPixmap(*param1, *param2);
}

void QPainter_drawPicture_QPointF_QPicture(QPainter* self, QPointF* p, QPicture* picture) {
	self->drawPicture(*p, *picture);
}

void QPainter_drawPicture_int_int_QPicture(QPainter* self, int x, int y, QPicture* picture) {
	self->drawPicture(static_cast<int>(x), static_cast<int>(y), *picture);
}

void QPainter_drawPicture_QPoint_QPicture(QPainter* self, QPoint* p, QPicture* picture) {
	self->drawPicture(*p, *picture);
}

void QPainter_drawPixmap_QRectF_QPixmap_QRectF(QPainter* self, QRectF* targetRect, QPixmap* pixmap, QRectF* sourceRect) {
	self->drawPixmap(*targetRect, *pixmap, *sourceRect);
}

void QPainter_drawPixmap_QRect_QPixmap_QRect(QPainter* self, QRect* targetRect, QPixmap* pixmap, QRect* sourceRect) {
	self->drawPixmap(*targetRect, *pixmap, *sourceRect);
}

void QPainter_drawPixmap_int_int_int_int_QPixmap_int_int_int_int(QPainter* self, int x, int y, int w, int h, QPixmap* pm, int sx, int sy, int sw, int sh) {
	self->drawPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *pm, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_drawPixmap_int_int_QPixmap_int_int_int_int(QPainter* self, int x, int y, QPixmap* pm, int sx, int sy, int sw, int sh) {
	self->drawPixmap(static_cast<int>(x), static_cast<int>(y), *pm, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_drawPixmap_QPointF_QPixmap_QRectF(QPainter* self, QPointF* p, QPixmap* pm, QRectF* sr) {
	self->drawPixmap(*p, *pm, *sr);
}

void QPainter_drawPixmap_QPoint_QPixmap_QRect(QPainter* self, QPoint* p, QPixmap* pm, QRect* sr) {
	self->drawPixmap(*p, *pm, *sr);
}

void QPainter_drawPixmap_QPointF_QPixmap(QPainter* self, QPointF* p, QPixmap* pm) {
	self->drawPixmap(*p, *pm);
}

void QPainter_drawPixmap_QPoint_QPixmap(QPainter* self, QPoint* p, QPixmap* pm) {
	self->drawPixmap(*p, *pm);
}

void QPainter_drawPixmap_int_int_QPixmap(QPainter* self, int x, int y, QPixmap* pm) {
	self->drawPixmap(static_cast<int>(x), static_cast<int>(y), *pm);
}

void QPainter_drawPixmap_QRect_QPixmap(QPainter* self, QRect* r, QPixmap* pm) {
	self->drawPixmap(*r, *pm);
}

void QPainter_drawPixmap_int_int_int_int_QPixmap(QPainter* self, int x, int y, int w, int h, QPixmap* pm) {
	self->drawPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *pm);
}

void QPainter_drawPixmapFragments_fragments_fragmentCount_pixmap(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap) {
	self->drawPixmapFragments(fragments, static_cast<int>(fragmentCount), *pixmap);
}

void QPainter_drawImage_QRectF_QImage_QRectF(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect) {
	self->drawImage(*targetRect, *image, *sourceRect);
}

void QPainter_drawImage_QRect_QImage_QRect(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect) {
	self->drawImage(*targetRect, *image, *sourceRect);
}

void QPainter_drawImage_QPointF_QImage_QRectF(QPainter* self, QPointF* p, QImage* image, QRectF* sr) {
	self->drawImage(*p, *image, *sr);
}

void QPainter_drawImage_QPoint_QImage_QRect(QPainter* self, QPoint* p, QImage* image, QRect* sr) {
	self->drawImage(*p, *image, *sr);
}

void QPainter_drawImage_QRectF_QImage(QPainter* self, QRectF* r, QImage* image) {
	self->drawImage(*r, *image);
}

void QPainter_drawImage_QRect_QImage(QPainter* self, QRect* r, QImage* image) {
	self->drawImage(*r, *image);
}

void QPainter_drawImage_QPointF_QImage(QPainter* self, QPointF* p, QImage* image) {
	self->drawImage(*p, *image);
}

void QPainter_drawImage_QPoint_QImage(QPainter* self, QPoint* p, QImage* image) {
	self->drawImage(*p, *image);
}

void QPainter_drawImage_int_int_QImage(QPainter* self, int x, int y, QImage* image) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image);
}

void QPainter_setLayoutDirection(QPainter* self, int direction) {
	self->setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

int QPainter_layoutDirection(const QPainter* self) {
	Qt::LayoutDirection _ret = self->layoutDirection();
	return static_cast<int>(_ret);
}

void QPainter_drawGlyphRun(QPainter* self, QPointF* position, QGlyphRun* glyphRun) {
	self->drawGlyphRun(*position, *glyphRun);
}

void QPainter_drawStaticText_QPointF_QStaticText(QPainter* self, QPointF* topLeftPosition, QStaticText* staticText) {
	self->drawStaticText(*topLeftPosition, *staticText);
}

void QPainter_drawStaticText_QPoint_QStaticText(QPainter* self, QPoint* topLeftPosition, QStaticText* staticText) {
	self->drawStaticText(*topLeftPosition, *staticText);
}

void QPainter_drawStaticText_int_int_QStaticText(QPainter* self, int left, int top, QStaticText* staticText) {
	self->drawStaticText(static_cast<int>(left), static_cast<int>(top), *staticText);
}

void QPainter_drawText_QPointF_QString(QPainter* self, QPointF* p, struct seaqt_string s) {
	QString s_QString = QString::fromUtf8(s.data, s.len);
	self->drawText(*p, s_QString);
}

void QPainter_drawText_QPoint_QString(QPainter* self, QPoint* p, struct seaqt_string s) {
	QString s_QString = QString::fromUtf8(s.data, s.len);
	self->drawText(*p, s_QString);
}

void QPainter_drawText_int_int_QString(QPainter* self, int x, int y, struct seaqt_string s) {
	QString s_QString = QString::fromUtf8(s.data, s.len);
	self->drawText(static_cast<int>(x), static_cast<int>(y), s_QString);
}

void QPainter_drawText_QPointF_QString_int_int(QPainter* self, QPointF* p, struct seaqt_string str, int tf, int justificationPadding) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	self->drawText(*p, str_QString, static_cast<int>(tf), static_cast<int>(justificationPadding));
}

void QPainter_drawText_QRectF_int_QString(QPainter* self, QRectF* r, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, static_cast<int>(flags), text_QString);
}

void QPainter_drawText_QRect_int_QString(QPainter* self, QRect* r, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, static_cast<int>(flags), text_QString);
}

void QPainter_drawText_int_int_int_int_int_QString(QPainter* self, int x, int y, int w, int h, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString);
}

void QPainter_drawText_QRectF_QString(QPainter* self, QRectF* r, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, text_QString);
}

QRectF* QPainter_boundingRect_QRectF_int_QString(QPainter* self, QRectF* rect, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRectF(self->boundingRect(*rect, static_cast<int>(flags), text_QString));
}

QRect* QPainter_boundingRect_QRect_int_QString(QPainter* self, QRect* rect, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRect(self->boundingRect(*rect, static_cast<int>(flags), text_QString));
}

QRect* QPainter_boundingRect_int_int_int_int_int_QString(QPainter* self, int x, int y, int w, int h, int flags, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRect(self->boundingRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString));
}

QRectF* QPainter_boundingRect_QRectF_QString(QPainter* self, QRectF* rect, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRectF(self->boundingRect(*rect, text_QString));
}

void QPainter_drawTextItem_QPointF_QTextItem(QPainter* self, QPointF* p, QTextItem* ti) {
	self->drawTextItem(*p, *ti);
}

void QPainter_drawTextItem_int_int_QTextItem(QPainter* self, int x, int y, QTextItem* ti) {
	self->drawTextItem(static_cast<int>(x), static_cast<int>(y), *ti);
}

void QPainter_drawTextItem_QPoint_QTextItem(QPainter* self, QPoint* p, QTextItem* ti) {
	self->drawTextItem(*p, *ti);
}

void QPainter_fillRect_QRectF_QBrush(QPainter* self, QRectF* param1, QBrush* param2) {
	self->fillRect(*param1, *param2);
}

void QPainter_fillRect_int_int_int_int_QBrush(QPainter* self, int x, int y, int w, int h, QBrush* param5) {
	self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5);
}

void QPainter_fillRect_QRect_QBrush(QPainter* self, QRect* param1, QBrush* param2) {
	self->fillRect(*param1, *param2);
}

void QPainter_fillRect_QRectF_QColor(QPainter* self, QRectF* param1, QColor* color) {
	self->fillRect(*param1, *color);
}

void QPainter_fillRect_int_int_int_int_QColor(QPainter* self, int x, int y, int w, int h, QColor* color) {
	self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *color);
}

void QPainter_fillRect_QRect_QColor(QPainter* self, QRect* param1, QColor* color) {
	self->fillRect(*param1, *color);
}

void QPainter_fillRect_int_int_int_int_Qt_GlobalColor(QPainter* self, int x, int y, int w, int h, int c) {
	self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::GlobalColor>(c));
}

void QPainter_fillRect_QRect_Qt_GlobalColor(QPainter* self, QRect* r, int c) {
	self->fillRect(*r, static_cast<Qt::GlobalColor>(c));
}

void QPainter_fillRect_QRectF_Qt_GlobalColor(QPainter* self, QRectF* r, int c) {
	self->fillRect(*r, static_cast<Qt::GlobalColor>(c));
}

void QPainter_fillRect_int_int_int_int_Qt_BrushStyle(QPainter* self, int x, int y, int w, int h, int style) {
	self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::BrushStyle>(style));
}

void QPainter_fillRect_QRect_Qt_BrushStyle(QPainter* self, QRect* r, int style) {
	self->fillRect(*r, static_cast<Qt::BrushStyle>(style));
}

void QPainter_fillRect_QRectF_Qt_BrushStyle(QPainter* self, QRectF* r, int style) {
	self->fillRect(*r, static_cast<Qt::BrushStyle>(style));
}

void QPainter_fillRect_int_int_int_int_QGradient_Preset(QPainter* self, int x, int y, int w, int h, int preset) {
	self->fillRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<QGradient::Preset>(preset));
}

void QPainter_fillRect_QRect_QGradient_Preset(QPainter* self, QRect* r, int preset) {
	self->fillRect(*r, static_cast<QGradient::Preset>(preset));
}

void QPainter_fillRect_QRectF_QGradient_Preset(QPainter* self, QRectF* r, int preset) {
	self->fillRect(*r, static_cast<QGradient::Preset>(preset));
}

void QPainter_eraseRect_QRectF(QPainter* self, QRectF* param1) {
	self->eraseRect(*param1);
}

void QPainter_eraseRect_int_int_int_int(QPainter* self, int x, int y, int w, int h) {
	self->eraseRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QPainter_eraseRect_QRect(QPainter* self, QRect* param1) {
	self->eraseRect(*param1);
}

void QPainter_setRenderHint_hint(QPainter* self, int hint) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint));
}

void QPainter_setRenderHints_hints(QPainter* self, int hints) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(hints));
}

int QPainter_renderHints(const QPainter* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

bool QPainter_testRenderHint(const QPainter* self, int hint) {
	return self->testRenderHint(static_cast<QPainter::RenderHint>(hint));
}

QPaintEngine* QPainter_paintEngine(const QPainter* self) {
	return self->paintEngine();
}

void QPainter_beginNativePainting(QPainter* self) {
	self->beginNativePainting();
}

void QPainter_endNativePainting(QPainter* self) {
	self->endNativePainting();
}

void QPainter_setClipRect_QRectF_Qt_ClipOperation(QPainter* self, QRectF* param1, int op) {
	self->setClipRect(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_setClipRect_QRect_Qt_ClipOperation(QPainter* self, QRect* param1, int op) {
	self->setClipRect(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_setClipRect_int_int_int_int_Qt_ClipOperation(QPainter* self, int x, int y, int w, int h, int op) {
	self->setClipRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::ClipOperation>(op));
}

void QPainter_setClipRegion_QRegion_Qt_ClipOperation(QPainter* self, QRegion* param1, int op) {
	self->setClipRegion(*param1, static_cast<Qt::ClipOperation>(op));
}

void QPainter_setClipPath_path_op(QPainter* self, QPainterPath* path, int op) {
	self->setClipPath(*path, static_cast<Qt::ClipOperation>(op));
}

void QPainter_setTransform_transform_combine(QPainter* self, QTransform* transform, bool combine) {
	self->setTransform(*transform, combine);
}

void QPainter_setWorldTransform_matrix_combine(QPainter* self, QTransform* matrix, bool combine) {
	self->setWorldTransform(*matrix, combine);
}

void QPainter_drawPolygon_QPointF_int_Qt_FillRule(QPainter* self, QPointF* points, int pointCount, int fillRule) {
	self->drawPolygon(points, static_cast<int>(pointCount), static_cast<Qt::FillRule>(fillRule));
}

void QPainter_drawPolygon_QPoint_int_Qt_FillRule(QPainter* self, QPoint* points, int pointCount, int fillRule) {
	self->drawPolygon(points, static_cast<int>(pointCount), static_cast<Qt::FillRule>(fillRule));
}

void QPainter_drawRoundedRect_QRectF_qreal_qreal_Qt_SizeMode(QPainter* self, QRectF* rect, double xRadius, double yRadius, int mode) {
	self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_drawRoundedRect_int_int_int_int_qreal_qreal_Qt_SizeMode(QPainter* self, int x, int y, int w, int h, double xRadius, double yRadius, int mode) {
	self->drawRoundedRect(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_drawRoundedRect_QRect_qreal_qreal_Qt_SizeMode(QPainter* self, QRect* rect, double xRadius, double yRadius, int mode) {
	self->drawRoundedRect(*rect, static_cast<qreal>(xRadius), static_cast<qreal>(yRadius), static_cast<Qt::SizeMode>(mode));
}

void QPainter_drawTiledPixmap_QRectF_QPixmap_QPointF(QPainter* self, QRectF* rect, QPixmap* pm, QPointF* offset) {
	self->drawTiledPixmap(*rect, *pm, *offset);
}

void QPainter_drawTiledPixmap_int_int_int_int_QPixmap_int(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx) {
	self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5, static_cast<int>(sx));
}

void QPainter_drawTiledPixmap_int_int_int_int_QPixmap_int_int(QPainter* self, int x, int y, int w, int h, QPixmap* param5, int sx, int sy) {
	self->drawTiledPixmap(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), *param5, static_cast<int>(sx), static_cast<int>(sy));
}

void QPainter_drawTiledPixmap_QRect_QPixmap_QPoint(QPainter* self, QRect* param1, QPixmap* param2, QPoint* param3) {
	self->drawTiledPixmap(*param1, *param2, *param3);
}

void QPainter_drawPixmapFragments_fragments_fragmentCount_pixmap_hints(QPainter* self, QPainter__PixmapFragment* fragments, int fragmentCount, QPixmap* pixmap, int hints) {
	self->drawPixmapFragments(fragments, static_cast<int>(fragmentCount), *pixmap, static_cast<QPainter::PixmapFragmentHints>(hints));
}

void QPainter_drawImage_QRectF_QImage_QRectF_Qt_ImageConversionFlags(QPainter* self, QRectF* targetRect, QImage* image, QRectF* sourceRect, int flags) {
	self->drawImage(*targetRect, *image, *sourceRect, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_drawImage_QRect_QImage_QRect_Qt_ImageConversionFlags(QPainter* self, QRect* targetRect, QImage* image, QRect* sourceRect, int flags) {
	self->drawImage(*targetRect, *image, *sourceRect, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_drawImage_QPointF_QImage_QRectF_Qt_ImageConversionFlags(QPainter* self, QPointF* p, QImage* image, QRectF* sr, int flags) {
	self->drawImage(*p, *image, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_drawImage_QPoint_QImage_QRect_Qt_ImageConversionFlags(QPainter* self, QPoint* p, QImage* image, QRect* sr, int flags) {
	self->drawImage(*p, *image, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_drawImage_int_int_QImage_int(QPainter* self, int x, int y, QImage* image, int sx) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx));
}

void QPainter_drawImage_int_int_QImage_int_int(QPainter* self, int x, int y, QImage* image, int sx, int sy) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy));
}

void QPainter_drawImage_int_int_QImage_int_int_int(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw));
}

void QPainter_drawImage_int_int_QImage_int_int_int_int(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh));
}

void QPainter_drawImage_int_int_QImage_int_int_int_int_Qt_ImageConversionFlags(QPainter* self, int x, int y, QImage* image, int sx, int sy, int sw, int sh, int flags) {
	self->drawImage(static_cast<int>(x), static_cast<int>(y), *image, static_cast<int>(sx), static_cast<int>(sy), static_cast<int>(sw), static_cast<int>(sh), static_cast<Qt::ImageConversionFlags>(flags));
}

void QPainter_drawText_QRectF_int_QString_QRectF(QPainter* self, QRectF* r, int flags, struct seaqt_string text, QRectF* br) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, static_cast<int>(flags), text_QString, br);
}

void QPainter_drawText_QRect_int_QString_QRect(QPainter* self, QRect* r, int flags, struct seaqt_string text, QRect* br) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, static_cast<int>(flags), text_QString, br);
}

void QPainter_drawText_int_int_int_int_int_QString_QRect(QPainter* self, int x, int y, int w, int h, int flags, struct seaqt_string text, QRect* br) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<int>(flags), text_QString, br);
}

void QPainter_drawText_QRectF_QString_QTextOption(QPainter* self, QRectF* r, struct seaqt_string text, QTextOption* o) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawText(*r, text_QString, *o);
}

QRectF* QPainter_boundingRect_QRectF_QString_QTextOption(QPainter* self, QRectF* rect, struct seaqt_string text, QTextOption* o) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRectF(self->boundingRect(*rect, text_QString, *o));
}

void QPainter_setRenderHint_hint_on(QPainter* self, int hint, bool on) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint), on);
}

void QPainter_setRenderHints_hints_on(QPainter* self, int hints, bool on) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(hints), on);
}

const QMetaObject* QPainter_staticMetaObject() { return &QPainter::staticMetaObject; }
void QPainter_delete(QPainter* self) {
	delete self;
}

QPainter__PixmapFragment* QPainter__PixmapFragment_new() {
	return new (std::nothrow) QPainter__PixmapFragment();
}

QPainter__PixmapFragment* QPainter__PixmapFragment_new_from(QPainter__PixmapFragment* from) {
	return new (std::nothrow) QPainter__PixmapFragment(*from);
}

double QPainter__PixmapFragment_x(const QPainter__PixmapFragment* self) {
	qreal x_ret = self->x;
	return static_cast<double>(x_ret);
}

void QPainter__PixmapFragment_setX(QPainter__PixmapFragment* self, double x) {
	self->x = static_cast<qreal>(x);
}

double QPainter__PixmapFragment_y(const QPainter__PixmapFragment* self) {
	qreal y_ret = self->y;
	return static_cast<double>(y_ret);
}

void QPainter__PixmapFragment_setY(QPainter__PixmapFragment* self, double y) {
	self->y = static_cast<qreal>(y);
}

double QPainter__PixmapFragment_sourceLeft(const QPainter__PixmapFragment* self) {
	qreal sourceLeft_ret = self->sourceLeft;
	return static_cast<double>(sourceLeft_ret);
}

void QPainter__PixmapFragment_setSourceLeft(QPainter__PixmapFragment* self, double sourceLeft) {
	self->sourceLeft = static_cast<qreal>(sourceLeft);
}

double QPainter__PixmapFragment_sourceTop(const QPainter__PixmapFragment* self) {
	qreal sourceTop_ret = self->sourceTop;
	return static_cast<double>(sourceTop_ret);
}

void QPainter__PixmapFragment_setSourceTop(QPainter__PixmapFragment* self, double sourceTop) {
	self->sourceTop = static_cast<qreal>(sourceTop);
}

double QPainter__PixmapFragment_width(const QPainter__PixmapFragment* self) {
	qreal width_ret = self->width;
	return static_cast<double>(width_ret);
}

void QPainter__PixmapFragment_setWidth(QPainter__PixmapFragment* self, double width) {
	self->width = static_cast<qreal>(width);
}

double QPainter__PixmapFragment_height(const QPainter__PixmapFragment* self) {
	qreal height_ret = self->height;
	return static_cast<double>(height_ret);
}

void QPainter__PixmapFragment_setHeight(QPainter__PixmapFragment* self, double height) {
	self->height = static_cast<qreal>(height);
}

double QPainter__PixmapFragment_scaleX(const QPainter__PixmapFragment* self) {
	qreal scaleX_ret = self->scaleX;
	return static_cast<double>(scaleX_ret);
}

void QPainter__PixmapFragment_setScaleX(QPainter__PixmapFragment* self, double scaleX) {
	self->scaleX = static_cast<qreal>(scaleX);
}

double QPainter__PixmapFragment_scaleY(const QPainter__PixmapFragment* self) {
	qreal scaleY_ret = self->scaleY;
	return static_cast<double>(scaleY_ret);
}

void QPainter__PixmapFragment_setScaleY(QPainter__PixmapFragment* self, double scaleY) {
	self->scaleY = static_cast<qreal>(scaleY);
}

double QPainter__PixmapFragment_rotation(const QPainter__PixmapFragment* self) {
	qreal rotation_ret = self->rotation;
	return static_cast<double>(rotation_ret);
}

void QPainter__PixmapFragment_setRotation(QPainter__PixmapFragment* self, double rotation) {
	self->rotation = static_cast<qreal>(rotation);
}

double QPainter__PixmapFragment_opacity(const QPainter__PixmapFragment* self) {
	qreal opacity_ret = self->opacity;
	return static_cast<double>(opacity_ret);
}

void QPainter__PixmapFragment_setOpacity(QPainter__PixmapFragment* self, double opacity) {
	self->opacity = static_cast<qreal>(opacity);
}

QPainter__PixmapFragment* QPainter__PixmapFragment_create_pos_sourceRect(QPointF* pos, QRectF* sourceRect) {
	return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_create_pos_sourceRect_scaleX(QPointF* pos, QRectF* sourceRect, double scaleX) {
	return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY) {
	return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY_rotation(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation) {
	return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY), static_cast<qreal>(rotation)));
}

QPainter__PixmapFragment* QPainter__PixmapFragment_create_pos_sourceRect_scaleX_scaleY_rotation_opacity(QPointF* pos, QRectF* sourceRect, double scaleX, double scaleY, double rotation, double opacity) {
	return new QPainter::PixmapFragment(QPainter::PixmapFragment::create(*pos, *sourceRect, static_cast<qreal>(scaleX), static_cast<qreal>(scaleY), static_cast<qreal>(rotation), static_cast<qreal>(opacity)));
}

void QPainter__PixmapFragment_delete(QPainter__PixmapFragment* self) {
	delete self;
}

