#include <QBrush>
#include <QFont>
#include <QImage>
#include <QLine>
#include <QLineF>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEngineState>
#include <QPainter>
#include <QPainterPath>
#include <QPen>
#include <QPixmap>
#include <QPoint>
#include <QPointF>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextItem>
#include <QTransform>
#include <qpaintengine.h>
#include "gen_qpaintengine.h"
double QTextItem_descent(const QTextItem* self) {
	qreal _ret = self->descent();
	return static_cast<double>(_ret);
}

double QTextItem_ascent(const QTextItem* self) {
	qreal _ret = self->ascent();
	return static_cast<double>(_ret);
}

double QTextItem_width(const QTextItem* self) {
	qreal _ret = self->width();
	return static_cast<double>(_ret);
}

int QTextItem_renderFlags(const QTextItem* self) {
	QTextItem::RenderFlags _ret = self->renderFlags();
	return static_cast<int>(_ret);
}

struct miqt_string QTextItem_text(const QTextItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QFont* QTextItem_font(const QTextItem* self) {
	return new QFont(self->font());
}

void QTextItem_delete(QTextItem* self) {
	delete self;
}

class VirtualQPaintEngine final : public QPaintEngine {
	const QPaintEngine_VTable* vtbl;
	void* vdata;
public:
	friend const QPaintEngine_VTable* QPaintEngine_vtbl(const VirtualQPaintEngine* self);
	friend void* QPaintEngine_vdata(const VirtualQPaintEngine* self);
	friend void QPaintEngine_setVdata(VirtualQPaintEngine* self, void* vdata);

	VirtualQPaintEngine(const QPaintEngine_VTable* vtbl, void* vdata): QPaintEngine(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPaintEngine(const QPaintEngine_VTable* vtbl, void* vdata, QPaintEngine::PaintEngineFeatures features): QPaintEngine(features), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPaintEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool begin(QPaintDevice* pdev) override {
		if (vtbl->begin == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QPaintDevice* sigval1 = pdev;

		bool callback_return_value = vtbl->begin(this, sigval1);

		return callback_return_value;
	}

	virtual bool end() override {
		if (vtbl->end == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->end(this);

		return callback_return_value;
	}

	virtual void updateState(const QPaintEngineState& state) override {
		if (vtbl->updateState == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QPaintEngineState& state_ret = state;
		// Cast returned reference into pointer
		QPaintEngineState* sigval1 = const_cast<QPaintEngineState*>(&state_ret);

		vtbl->updateState(this, sigval1);

	}

	virtual void drawRects(const QRect* rects, int rectCount) override {
		if (vtbl->drawRects == 0) {
			QPaintEngine::drawRects(rects, rectCount);
			return;
		}

		QRect* sigval1 = (QRect*) rects;
		int sigval2 = rectCount;

		vtbl->drawRects(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawRects(VirtualQPaintEngine* self, QRect* rects, int rectCount);

	virtual void drawRects(const QRectF* rects, int rectCount) override {
		if (vtbl->drawRects2 == 0) {
			QPaintEngine::drawRects(rects, rectCount);
			return;
		}

		QRectF* sigval1 = (QRectF*) rects;
		int sigval2 = rectCount;

		vtbl->drawRects2(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawRects2(VirtualQPaintEngine* self, QRectF* rects, int rectCount);

	virtual void drawLines(const QLine* lines, int lineCount) override {
		if (vtbl->drawLines == 0) {
			QPaintEngine::drawLines(lines, lineCount);
			return;
		}

		QLine* sigval1 = (QLine*) lines;
		int sigval2 = lineCount;

		vtbl->drawLines(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawLines(VirtualQPaintEngine* self, QLine* lines, int lineCount);

	virtual void drawLines(const QLineF* lines, int lineCount) override {
		if (vtbl->drawLines2 == 0) {
			QPaintEngine::drawLines(lines, lineCount);
			return;
		}

		QLineF* sigval1 = (QLineF*) lines;
		int sigval2 = lineCount;

		vtbl->drawLines2(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawLines2(VirtualQPaintEngine* self, QLineF* lines, int lineCount);

	virtual void drawEllipse(const QRectF& r) override {
		if (vtbl->drawEllipse == 0) {
			QPaintEngine::drawEllipse(r);
			return;
		}

		const QRectF& r_ret = r;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&r_ret);

		vtbl->drawEllipse(this, sigval1);

	}

	friend void QPaintEngine_virtualbase_drawEllipse(VirtualQPaintEngine* self, QRectF* r);

	virtual void drawEllipse(const QRect& r) override {
		if (vtbl->drawEllipseWithQRect == 0) {
			QPaintEngine::drawEllipse(r);
			return;
		}

		const QRect& r_ret = r;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&r_ret);

		vtbl->drawEllipseWithQRect(this, sigval1);

	}

	friend void QPaintEngine_virtualbase_drawEllipseWithQRect(VirtualQPaintEngine* self, QRect* r);

	virtual void drawPath(const QPainterPath& path) override {
		if (vtbl->drawPath == 0) {
			QPaintEngine::drawPath(path);
			return;
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);

		vtbl->drawPath(this, sigval1);

	}

	friend void QPaintEngine_virtualbase_drawPath(VirtualQPaintEngine* self, QPainterPath* path);

	virtual void drawPoints(const QPointF* points, int pointCount) override {
		if (vtbl->drawPoints == 0) {
			QPaintEngine::drawPoints(points, pointCount);
			return;
		}

		QPointF* sigval1 = (QPointF*) points;
		int sigval2 = pointCount;

		vtbl->drawPoints(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawPoints(VirtualQPaintEngine* self, QPointF* points, int pointCount);

	virtual void drawPoints(const QPoint* points, int pointCount) override {
		if (vtbl->drawPoints2 == 0) {
			QPaintEngine::drawPoints(points, pointCount);
			return;
		}

		QPoint* sigval1 = (QPoint*) points;
		int sigval2 = pointCount;

		vtbl->drawPoints2(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawPoints2(VirtualQPaintEngine* self, QPoint* points, int pointCount);

	virtual void drawPolygon(const QPointF* points, int pointCount, QPaintEngine::PolygonDrawMode mode) override {
		if (vtbl->drawPolygon == 0) {
			QPaintEngine::drawPolygon(points, pointCount, mode);
			return;
		}

		QPointF* sigval1 = (QPointF*) points;
		int sigval2 = pointCount;
		QPaintEngine::PolygonDrawMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		vtbl->drawPolygon(this, sigval1, sigval2, sigval3);

	}

	friend void QPaintEngine_virtualbase_drawPolygon(VirtualQPaintEngine* self, QPointF* points, int pointCount, int mode);

	virtual void drawPolygon(const QPoint* points, int pointCount, QPaintEngine::PolygonDrawMode mode) override {
		if (vtbl->drawPolygon2 == 0) {
			QPaintEngine::drawPolygon(points, pointCount, mode);
			return;
		}

		QPoint* sigval1 = (QPoint*) points;
		int sigval2 = pointCount;
		QPaintEngine::PolygonDrawMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		vtbl->drawPolygon2(this, sigval1, sigval2, sigval3);

	}

	friend void QPaintEngine_virtualbase_drawPolygon2(VirtualQPaintEngine* self, QPoint* points, int pointCount, int mode);

	virtual void drawPixmap(const QRectF& r, const QPixmap& pm, const QRectF& sr) override {
		if (vtbl->drawPixmap == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QRectF& r_ret = r;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&r_ret);
		const QPixmap& pm_ret = pm;
		// Cast returned reference into pointer
		QPixmap* sigval2 = const_cast<QPixmap*>(&pm_ret);
		const QRectF& sr_ret = sr;
		// Cast returned reference into pointer
		QRectF* sigval3 = const_cast<QRectF*>(&sr_ret);

		vtbl->drawPixmap(this, sigval1, sigval2, sigval3);

	}

	virtual void drawTextItem(const QPointF& p, const QTextItem& textItem) override {
		if (vtbl->drawTextItem == 0) {
			QPaintEngine::drawTextItem(p, textItem);
			return;
		}

		const QPointF& p_ret = p;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&p_ret);
		const QTextItem& textItem_ret = textItem;
		// Cast returned reference into pointer
		QTextItem* sigval2 = const_cast<QTextItem*>(&textItem_ret);

		vtbl->drawTextItem(this, sigval1, sigval2);

	}

	friend void QPaintEngine_virtualbase_drawTextItem(VirtualQPaintEngine* self, QPointF* p, QTextItem* textItem);

	virtual void drawTiledPixmap(const QRectF& r, const QPixmap& pixmap, const QPointF& s) override {
		if (vtbl->drawTiledPixmap == 0) {
			QPaintEngine::drawTiledPixmap(r, pixmap, s);
			return;
		}

		const QRectF& r_ret = r;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&r_ret);
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval2 = const_cast<QPixmap*>(&pixmap_ret);
		const QPointF& s_ret = s;
		// Cast returned reference into pointer
		QPointF* sigval3 = const_cast<QPointF*>(&s_ret);

		vtbl->drawTiledPixmap(this, sigval1, sigval2, sigval3);

	}

	friend void QPaintEngine_virtualbase_drawTiledPixmap(VirtualQPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s);

	virtual void drawImage(const QRectF& r, const QImage& pm, const QRectF& sr, Qt::ImageConversionFlags flags) override {
		if (vtbl->drawImage == 0) {
			QPaintEngine::drawImage(r, pm, sr, flags);
			return;
		}

		const QRectF& r_ret = r;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&r_ret);
		const QImage& pm_ret = pm;
		// Cast returned reference into pointer
		QImage* sigval2 = const_cast<QImage*>(&pm_ret);
		const QRectF& sr_ret = sr;
		// Cast returned reference into pointer
		QRectF* sigval3 = const_cast<QRectF*>(&sr_ret);
		Qt::ImageConversionFlags flags_ret = flags;
		int sigval4 = static_cast<int>(flags_ret);

		vtbl->drawImage(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QPaintEngine_virtualbase_drawImage(VirtualQPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags);

	virtual QPoint coordinateOffset() const override {
		if (vtbl->coordinateOffset == 0) {
			return QPaintEngine::coordinateOffset();
		}


		QPoint* callback_return_value = vtbl->coordinateOffset(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPoint* QPaintEngine_virtualbase_coordinateOffset(const VirtualQPaintEngine* self);

	virtual QPaintEngine::Type type() const override {
		if (vtbl->type == 0) {
			return (QPaintEngine::Type)(0); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->type(this);

		return static_cast<QPaintEngine::Type>(callback_return_value);
	}

	virtual QPixmap createPixmap(QSize size) override {
		if (vtbl->createPixmap == 0) {
			return QPaintEngine::createPixmap(size);
		}

		QSize* sigval1 = new QSize(size);

		QPixmap* callback_return_value = vtbl->createPixmap(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPixmap* QPaintEngine_virtualbase_createPixmap(VirtualQPaintEngine* self, QSize* size);

	virtual QPixmap createPixmapFromImage(QImage image, Qt::ImageConversionFlags flags) override {
		if (vtbl->createPixmapFromImage == 0) {
			return QPaintEngine::createPixmapFromImage(image, flags);
		}

		QImage* sigval1 = new QImage(image);
		Qt::ImageConversionFlags flags_ret = flags;
		int sigval2 = static_cast<int>(flags_ret);

		QPixmap* callback_return_value = vtbl->createPixmapFromImage(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QPixmap* QPaintEngine_virtualbase_createPixmapFromImage(VirtualQPaintEngine* self, QImage* image, int flags);

};

VirtualQPaintEngine* QPaintEngine_new(const QPaintEngine_VTable* vtbl, void* vdata) {
	return new VirtualQPaintEngine(vtbl, vdata);
}

VirtualQPaintEngine* QPaintEngine_new2(const QPaintEngine_VTable* vtbl, void* vdata, int features) {
	return new VirtualQPaintEngine(vtbl, vdata, static_cast<QPaintEngine::PaintEngineFeatures>(features));
}

bool QPaintEngine_isActive(const QPaintEngine* self) {
	return self->isActive();
}

void QPaintEngine_setActive(QPaintEngine* self, bool newState) {
	self->setActive(newState);
}

bool QPaintEngine_begin(QPaintEngine* self, QPaintDevice* pdev) {
	return self->begin(pdev);
}

bool QPaintEngine_end(QPaintEngine* self) {
	return self->end();
}

void QPaintEngine_updateState(QPaintEngine* self, QPaintEngineState* state) {
	self->updateState(*state);
}

void QPaintEngine_drawRects(QPaintEngine* self, QRect* rects, int rectCount) {
	self->drawRects(rects, static_cast<int>(rectCount));
}

void QPaintEngine_drawRects2(QPaintEngine* self, QRectF* rects, int rectCount) {
	self->drawRects(rects, static_cast<int>(rectCount));
}

void QPaintEngine_drawLines(QPaintEngine* self, QLine* lines, int lineCount) {
	self->drawLines(lines, static_cast<int>(lineCount));
}

void QPaintEngine_drawLines2(QPaintEngine* self, QLineF* lines, int lineCount) {
	self->drawLines(lines, static_cast<int>(lineCount));
}

void QPaintEngine_drawEllipse(QPaintEngine* self, QRectF* r) {
	self->drawEllipse(*r);
}

void QPaintEngine_drawEllipseWithQRect(QPaintEngine* self, QRect* r) {
	self->drawEllipse(*r);
}

void QPaintEngine_drawPath(QPaintEngine* self, QPainterPath* path) {
	self->drawPath(*path);
}

void QPaintEngine_drawPoints(QPaintEngine* self, QPointF* points, int pointCount) {
	self->drawPoints(points, static_cast<int>(pointCount));
}

void QPaintEngine_drawPoints2(QPaintEngine* self, QPoint* points, int pointCount) {
	self->drawPoints(points, static_cast<int>(pointCount));
}

void QPaintEngine_drawPolygon(QPaintEngine* self, QPointF* points, int pointCount, int mode) {
	self->drawPolygon(points, static_cast<int>(pointCount), static_cast<QPaintEngine::PolygonDrawMode>(mode));
}

void QPaintEngine_drawPolygon2(QPaintEngine* self, QPoint* points, int pointCount, int mode) {
	self->drawPolygon(points, static_cast<int>(pointCount), static_cast<QPaintEngine::PolygonDrawMode>(mode));
}

void QPaintEngine_drawPixmap(QPaintEngine* self, QRectF* r, QPixmap* pm, QRectF* sr) {
	self->drawPixmap(*r, *pm, *sr);
}

void QPaintEngine_drawTextItem(QPaintEngine* self, QPointF* p, QTextItem* textItem) {
	self->drawTextItem(*p, *textItem);
}

void QPaintEngine_drawTiledPixmap(QPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s) {
	self->drawTiledPixmap(*r, *pixmap, *s);
}

void QPaintEngine_drawImage(QPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags) {
	self->drawImage(*r, *pm, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

void QPaintEngine_setPaintDevice(QPaintEngine* self, QPaintDevice* device) {
	self->setPaintDevice(device);
}

QPaintDevice* QPaintEngine_paintDevice(const QPaintEngine* self) {
	return self->paintDevice();
}

void QPaintEngine_setSystemClip(QPaintEngine* self, QRegion* baseClip) {
	self->setSystemClip(*baseClip);
}

QRegion* QPaintEngine_systemClip(const QPaintEngine* self) {
	return new QRegion(self->systemClip());
}

void QPaintEngine_setSystemRect(QPaintEngine* self, QRect* rect) {
	self->setSystemRect(*rect);
}

QRect* QPaintEngine_systemRect(const QPaintEngine* self) {
	return new QRect(self->systemRect());
}

QPoint* QPaintEngine_coordinateOffset(const QPaintEngine* self) {
	return new QPoint(self->coordinateOffset());
}

int QPaintEngine_type(const QPaintEngine* self) {
	QPaintEngine::Type _ret = self->type();
	return static_cast<int>(_ret);
}

void QPaintEngine_fixNegRect(QPaintEngine* self, int* x, int* y, int* w, int* h) {
	self->fix_neg_rect(static_cast<int*>(x), static_cast<int*>(y), static_cast<int*>(w), static_cast<int*>(h));
}

bool QPaintEngine_testDirty(QPaintEngine* self, int df) {
	return self->testDirty(static_cast<QPaintEngine::DirtyFlags>(df));
}

void QPaintEngine_setDirty(QPaintEngine* self, int df) {
	self->setDirty(static_cast<QPaintEngine::DirtyFlags>(df));
}

void QPaintEngine_clearDirty(QPaintEngine* self, int df) {
	self->clearDirty(static_cast<QPaintEngine::DirtyFlags>(df));
}

bool QPaintEngine_hasFeature(const QPaintEngine* self, int feature) {
	return self->hasFeature(static_cast<QPaintEngine::PaintEngineFeatures>(feature));
}

QPainter* QPaintEngine_painter(const QPaintEngine* self) {
	return self->painter();
}

void QPaintEngine_syncState(QPaintEngine* self) {
	self->syncState();
}

bool QPaintEngine_isExtended(const QPaintEngine* self) {
	return self->isExtended();
}

QPixmap* QPaintEngine_createPixmap(QPaintEngine* self, QSize* size) {
	return new QPixmap(self->createPixmap(*size));
}

QPixmap* QPaintEngine_createPixmapFromImage(QPaintEngine* self, QImage* image, int flags) {
	return new QPixmap(self->createPixmapFromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

void QPaintEngine_virtualbase_drawRects(VirtualQPaintEngine* self, QRect* rects, int rectCount) {

	self->QPaintEngine::drawRects(rects, static_cast<int>(rectCount));
}

void QPaintEngine_virtualbase_drawRects2(VirtualQPaintEngine* self, QRectF* rects, int rectCount) {

	self->QPaintEngine::drawRects(rects, static_cast<int>(rectCount));
}

void QPaintEngine_virtualbase_drawLines(VirtualQPaintEngine* self, QLine* lines, int lineCount) {

	self->QPaintEngine::drawLines(lines, static_cast<int>(lineCount));
}

void QPaintEngine_virtualbase_drawLines2(VirtualQPaintEngine* self, QLineF* lines, int lineCount) {

	self->QPaintEngine::drawLines(lines, static_cast<int>(lineCount));
}

void QPaintEngine_virtualbase_drawEllipse(VirtualQPaintEngine* self, QRectF* r) {

	self->QPaintEngine::drawEllipse(*r);
}

void QPaintEngine_virtualbase_drawEllipseWithQRect(VirtualQPaintEngine* self, QRect* r) {

	self->QPaintEngine::drawEllipse(*r);
}

void QPaintEngine_virtualbase_drawPath(VirtualQPaintEngine* self, QPainterPath* path) {

	self->QPaintEngine::drawPath(*path);
}

void QPaintEngine_virtualbase_drawPoints(VirtualQPaintEngine* self, QPointF* points, int pointCount) {

	self->QPaintEngine::drawPoints(points, static_cast<int>(pointCount));
}

void QPaintEngine_virtualbase_drawPoints2(VirtualQPaintEngine* self, QPoint* points, int pointCount) {

	self->QPaintEngine::drawPoints(points, static_cast<int>(pointCount));
}

void QPaintEngine_virtualbase_drawPolygon(VirtualQPaintEngine* self, QPointF* points, int pointCount, int mode) {

	self->QPaintEngine::drawPolygon(points, static_cast<int>(pointCount), static_cast<VirtualQPaintEngine::PolygonDrawMode>(mode));
}

void QPaintEngine_virtualbase_drawPolygon2(VirtualQPaintEngine* self, QPoint* points, int pointCount, int mode) {

	self->QPaintEngine::drawPolygon(points, static_cast<int>(pointCount), static_cast<VirtualQPaintEngine::PolygonDrawMode>(mode));
}

void QPaintEngine_virtualbase_drawTextItem(VirtualQPaintEngine* self, QPointF* p, QTextItem* textItem) {

	self->QPaintEngine::drawTextItem(*p, *textItem);
}

void QPaintEngine_virtualbase_drawTiledPixmap(VirtualQPaintEngine* self, QRectF* r, QPixmap* pixmap, QPointF* s) {

	self->QPaintEngine::drawTiledPixmap(*r, *pixmap, *s);
}

void QPaintEngine_virtualbase_drawImage(VirtualQPaintEngine* self, QRectF* r, QImage* pm, QRectF* sr, int flags) {

	self->QPaintEngine::drawImage(*r, *pm, *sr, static_cast<Qt::ImageConversionFlags>(flags));
}

QPoint* QPaintEngine_virtualbase_coordinateOffset(const VirtualQPaintEngine* self) {

	return new QPoint(self->QPaintEngine::coordinateOffset());
}

QPixmap* QPaintEngine_virtualbase_createPixmap(VirtualQPaintEngine* self, QSize* size) {

	return new QPixmap(self->QPaintEngine::createPixmap(*size));
}

QPixmap* QPaintEngine_virtualbase_createPixmapFromImage(VirtualQPaintEngine* self, QImage* image, int flags) {

	return new QPixmap(self->QPaintEngine::createPixmapFromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

const QPaintEngine_VTable* QPaintEngine_vtbl(const VirtualQPaintEngine* self) { return self->vtbl; }
void* QPaintEngine_vdata(const VirtualQPaintEngine* self) { return self->vdata; }
void QPaintEngine_setVdata(VirtualQPaintEngine* self, void* vdata) { self->vdata = vdata; }

void QPaintEngine_delete(QPaintEngine* self) {
	delete self;
}

int QPaintEngineState_state(const QPaintEngineState* self) {
	QPaintEngine::DirtyFlags _ret = self->state();
	return static_cast<int>(_ret);
}

QPen* QPaintEngineState_pen(const QPaintEngineState* self) {
	return new QPen(self->pen());
}

QBrush* QPaintEngineState_brush(const QPaintEngineState* self) {
	return new QBrush(self->brush());
}

QPointF* QPaintEngineState_brushOrigin(const QPaintEngineState* self) {
	return new QPointF(self->brushOrigin());
}

QBrush* QPaintEngineState_backgroundBrush(const QPaintEngineState* self) {
	return new QBrush(self->backgroundBrush());
}

int QPaintEngineState_backgroundMode(const QPaintEngineState* self) {
	Qt::BGMode _ret = self->backgroundMode();
	return static_cast<int>(_ret);
}

QFont* QPaintEngineState_font(const QPaintEngineState* self) {
	return new QFont(self->font());
}

QTransform* QPaintEngineState_transform(const QPaintEngineState* self) {
	return new QTransform(self->transform());
}

int QPaintEngineState_clipOperation(const QPaintEngineState* self) {
	Qt::ClipOperation _ret = self->clipOperation();
	return static_cast<int>(_ret);
}

QRegion* QPaintEngineState_clipRegion(const QPaintEngineState* self) {
	return new QRegion(self->clipRegion());
}

QPainterPath* QPaintEngineState_clipPath(const QPaintEngineState* self) {
	return new QPainterPath(self->clipPath());
}

bool QPaintEngineState_isClipEnabled(const QPaintEngineState* self) {
	return self->isClipEnabled();
}

int QPaintEngineState_renderHints(const QPaintEngineState* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

int QPaintEngineState_compositionMode(const QPaintEngineState* self) {
	QPainter::CompositionMode _ret = self->compositionMode();
	return static_cast<int>(_ret);
}

double QPaintEngineState_opacity(const QPaintEngineState* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

QPainter* QPaintEngineState_painter(const QPaintEngineState* self) {
	return self->painter();
}

bool QPaintEngineState_brushNeedsResolving(const QPaintEngineState* self) {
	return self->brushNeedsResolving();
}

bool QPaintEngineState_penNeedsResolving(const QPaintEngineState* self) {
	return self->penNeedsResolving();
}

void QPaintEngineState_delete(QPaintEngineState* self) {
	delete self;
}

