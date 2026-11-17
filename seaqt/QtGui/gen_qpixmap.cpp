#include <QBitmap>
#include <QByteArray>
#include <QColor>
#include <QIODevice>
#include <QImage>
#include <QImageReader>
#include <QMatrix>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTransform>
#include <QVariant>
#include <qpixmap.h>
#include "gen_qpixmap.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPixmap final : public QPixmap {
	const QPixmap_VTable* vtbl;
public:
	friend void* QPixmap_vdata(VirtualQPixmap* self);
	friend VirtualQPixmap* vdata_QPixmap(void* vdata);

	VirtualQPixmap(const QPixmap_VTable* vtbl): QPixmap(), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, int w, int h): QPixmap(w, h), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, const QSize& param1): QPixmap(param1), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, const QString& fileName): QPixmap(fileName), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, const QPixmap& from): QPixmap(from), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, const QString& fileName, const char* format): QPixmap(fileName, format), vtbl(vtbl) {}
	VirtualQPixmap(const QPixmap_VTable* vtbl, const QString& fileName, const char* format, Qt::ImageConversionFlags flags): QPixmap(fileName, format, flags), vtbl(vtbl) {}

	virtual ~VirtualQPixmap() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPixmap::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QPixmap_virtualbase_devType(const VirtualQPixmap* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPixmap::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QPixmap_virtualbase_paintEngine(const VirtualQPixmap* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPixmap::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPixmap_virtualbase_metric(const VirtualQPixmap* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPixmap::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QPixmap_virtualbase_initPainter(const VirtualQPixmap* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPixmap::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QPixmap_virtualbase_redirected(const VirtualQPixmap* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPixmap::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QPixmap_virtualbase_sharedPainter(const VirtualQPixmap* self);

};

VirtualQPixmap* QPixmap_new(const QPixmap_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl) : nullptr;
}

VirtualQPixmap* QPixmap_new_int_int(const QPixmap_VTable* vtbl, size_t vdata, int w, int h) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, static_cast<int>(w), static_cast<int>(h)) : nullptr;
}

VirtualQPixmap* QPixmap_new_QSize(const QPixmap_VTable* vtbl, size_t vdata, QSize* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, *param1) : nullptr;
}

VirtualQPixmap* QPixmap_new_QString(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, fileName_QString) : nullptr;
}

VirtualQPixmap* QPixmap_new_QPixmap(const QPixmap_VTable* vtbl, size_t vdata, QPixmap* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, *from) : nullptr;
}

VirtualQPixmap* QPixmap_new_QString_char(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, fileName_QString, format) : nullptr;
}

VirtualQPixmap* QPixmap_new_QString_char_Qt_ImageConversionFlags(const QPixmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format, int flags) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPixmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPixmap(vtbl, fileName_QString, format, static_cast<Qt::ImageConversionFlags>(flags)) : nullptr;
}

void QPixmap_virtbase(QPixmap* src, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

void QPixmap_operatorAssign(QPixmap* self, QPixmap* from) {
	self->operator=(*from);
}

void QPixmap_swap(QPixmap* self, QPixmap* other) {
	self->swap(*other);
}

QVariant* QPixmap_ToQVariant(const QPixmap* self) {
	return new QVariant(self->operator QVariant());
}

bool QPixmap_isNull(const QPixmap* self) {
	return self->isNull();
}

int QPixmap_devType(const QPixmap* self) {
	return self->devType();
}

int QPixmap_width(const QPixmap* self) {
	return self->width();
}

int QPixmap_height(const QPixmap* self) {
	return self->height();
}

QSize* QPixmap_size(const QPixmap* self) {
	return new QSize(self->size());
}

QRect* QPixmap_rect(const QPixmap* self) {
	return new QRect(self->rect());
}

int QPixmap_depth(const QPixmap* self) {
	return self->depth();
}

int QPixmap_defaultDepth() {
	return QPixmap::defaultDepth();
}

void QPixmap_fill(QPixmap* self) {
	self->fill();
}

void QPixmap_fill_device_ofs(QPixmap* self, QPaintDevice* device, QPoint* ofs) {
	self->fill(device, *ofs);
}

void QPixmap_fill_device_xofs_yofs(QPixmap* self, QPaintDevice* device, int xofs, int yofs) {
	self->fill(device, static_cast<int>(xofs), static_cast<int>(yofs));
}

QBitmap* QPixmap_mask(const QPixmap* self) {
	return new QBitmap(self->mask());
}

void QPixmap_setMask(QPixmap* self, QBitmap* mask) {
	self->setMask(*mask);
}

double QPixmap_devicePixelRatio(const QPixmap* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

void QPixmap_setDevicePixelRatio(QPixmap* self, double scaleFactor) {
	self->setDevicePixelRatio(static_cast<qreal>(scaleFactor));
}

bool QPixmap_hasAlpha(const QPixmap* self) {
	return self->hasAlpha();
}

bool QPixmap_hasAlphaChannel(const QPixmap* self) {
	return self->hasAlphaChannel();
}

QBitmap* QPixmap_createHeuristicMask(const QPixmap* self) {
	return new QBitmap(self->createHeuristicMask());
}

QBitmap* QPixmap_createMaskFromColor_maskColor(const QPixmap* self, QColor* maskColor) {
	return new QBitmap(self->createMaskFromColor(*maskColor));
}

QPixmap* QPixmap_grabWindow_WId(uintptr_t param1) {
	return new QPixmap(QPixmap::grabWindow(static_cast<WId>(param1)));
}

QPixmap* QPixmap_grabWidget_widget_rect(QObject* widget, QRect* rect) {
	return new QPixmap(QPixmap::grabWidget(widget, *rect));
}

QPixmap* QPixmap_grabWidget_widget(QObject* widget) {
	return new QPixmap(QPixmap::grabWidget(widget));
}

QPixmap* QPixmap_scaled_w_h(const QPixmap* self, int w, int h) {
	return new QPixmap(self->scaled(static_cast<int>(w), static_cast<int>(h)));
}

QPixmap* QPixmap_scaled_s(const QPixmap* self, QSize* s) {
	return new QPixmap(self->scaled(*s));
}

QPixmap* QPixmap_scaledToWidth_w(const QPixmap* self, int w) {
	return new QPixmap(self->scaledToWidth(static_cast<int>(w)));
}

QPixmap* QPixmap_scaledToHeight_h(const QPixmap* self, int h) {
	return new QPixmap(self->scaledToHeight(static_cast<int>(h)));
}

QPixmap* QPixmap_transformed_QMatrix(const QPixmap* self, QMatrix* param1) {
	return new QPixmap(self->transformed(*param1));
}

QMatrix* QPixmap_trueMatrix_QMatrix_int_int(QMatrix* m, int w, int h) {
	return new QMatrix(QPixmap::trueMatrix(*m, static_cast<int>(w), static_cast<int>(h)));
}

QPixmap* QPixmap_transformed_QTransform(const QPixmap* self, QTransform* param1) {
	return new QPixmap(self->transformed(*param1));
}

QTransform* QPixmap_trueMatrix_QTransform_int_int(QTransform* m, int w, int h) {
	return new QTransform(QPixmap::trueMatrix(*m, static_cast<int>(w), static_cast<int>(h)));
}

QImage* QPixmap_toImage(const QPixmap* self) {
	return new QImage(self->toImage());
}

QPixmap* QPixmap_fromImage_image(QImage* image) {
	return new QPixmap(QPixmap::fromImage(*image));
}

QPixmap* QPixmap_fromImageReader_imageReader(QImageReader* imageReader) {
	return new QPixmap(QPixmap::fromImageReader(imageReader));
}

bool QPixmap_load_fileName(QPixmap* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString);
}

bool QPixmap_loadFromData_buf_len(QPixmap* self, const unsigned char* buf, unsigned int len) {
	return self->loadFromData(static_cast<const uchar*>(buf), static_cast<uint>(len));
}

bool QPixmap_loadFromData_data(QPixmap* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->loadFromData(data_QByteArray);
}

bool QPixmap_save_fileName(const QPixmap* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString);
}

bool QPixmap_save_device(const QPixmap* self, QIODevice* device) {
	return self->save(device);
}

bool QPixmap_convertFromImage_img(QPixmap* self, QImage* img) {
	return self->convertFromImage(*img);
}

QPixmap* QPixmap_copy_x_y_width_height(const QPixmap* self, int x, int y, int width, int height) {
	return new QPixmap(self->copy(static_cast<int>(x), static_cast<int>(y), static_cast<int>(width), static_cast<int>(height)));
}

QPixmap* QPixmap_copy(const QPixmap* self) {
	return new QPixmap(self->copy());
}

void QPixmap_scroll_dx_dy_x_y_width_height(QPixmap* self, int dx, int dy, int x, int y, int width, int height) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy), static_cast<int>(x), static_cast<int>(y), static_cast<int>(width), static_cast<int>(height));
}

void QPixmap_scroll_dx_dy_rect(QPixmap* self, int dx, int dy, QRect* rect) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy), *rect);
}

long long QPixmap_cacheKey(const QPixmap* self) {
	qint64 _ret = self->cacheKey();
	return static_cast<long long>(_ret);
}

bool QPixmap_isDetached(const QPixmap* self) {
	return self->isDetached();
}

void QPixmap_detach(QPixmap* self) {
	self->detach();
}

bool QPixmap_isQBitmap(const QPixmap* self) {
	return self->isQBitmap();
}

QPaintEngine* QPixmap_paintEngine(const QPixmap* self) {
	return self->paintEngine();
}

bool QPixmap_operatorNot(const QPixmap* self) {
	return self->operator!();
}

void QPixmap_fill_fillColor(QPixmap* self, QColor* fillColor) {
	self->fill(*fillColor);
}

QBitmap* QPixmap_createHeuristicMask_clipTight(const QPixmap* self, bool clipTight) {
	return new QBitmap(self->createHeuristicMask(clipTight));
}

QBitmap* QPixmap_createMaskFromColor_maskColor_mode(const QPixmap* self, QColor* maskColor, int mode) {
	return new QBitmap(self->createMaskFromColor(*maskColor, static_cast<Qt::MaskMode>(mode)));
}

QPixmap* QPixmap_grabWindow_WId_int(uintptr_t param1, int x) {
	return new QPixmap(QPixmap::grabWindow(static_cast<WId>(param1), static_cast<int>(x)));
}

QPixmap* QPixmap_grabWindow_WId_int_int(uintptr_t param1, int x, int y) {
	return new QPixmap(QPixmap::grabWindow(static_cast<WId>(param1), static_cast<int>(x), static_cast<int>(y)));
}

QPixmap* QPixmap_grabWindow_WId_int_int_int(uintptr_t param1, int x, int y, int w) {
	return new QPixmap(QPixmap::grabWindow(static_cast<WId>(param1), static_cast<int>(x), static_cast<int>(y), static_cast<int>(w)));
}

QPixmap* QPixmap_grabWindow_WId_int_int_int_int(uintptr_t param1, int x, int y, int w, int h) {
	return new QPixmap(QPixmap::grabWindow(static_cast<WId>(param1), static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h)));
}

QPixmap* QPixmap_grabWidget_widget_x(QObject* widget, int x) {
	return new QPixmap(QPixmap::grabWidget(widget, static_cast<int>(x)));
}

QPixmap* QPixmap_grabWidget_widget_x_y(QObject* widget, int x, int y) {
	return new QPixmap(QPixmap::grabWidget(widget, static_cast<int>(x), static_cast<int>(y)));
}

QPixmap* QPixmap_grabWidget_widget_x_y_w(QObject* widget, int x, int y, int w) {
	return new QPixmap(QPixmap::grabWidget(widget, static_cast<int>(x), static_cast<int>(y), static_cast<int>(w)));
}

QPixmap* QPixmap_grabWidget_widget_x_y_w_h(QObject* widget, int x, int y, int w, int h) {
	return new QPixmap(QPixmap::grabWidget(widget, static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h)));
}

QPixmap* QPixmap_scaled_w_h_aspectMode(const QPixmap* self, int w, int h, int aspectMode) {
	return new QPixmap(self->scaled(static_cast<int>(w), static_cast<int>(h), static_cast<Qt::AspectRatioMode>(aspectMode)));
}

QPixmap* QPixmap_scaled_w_h_aspectMode_mode(const QPixmap* self, int w, int h, int aspectMode, int mode) {
	return new QPixmap(self->scaled(static_cast<int>(w), static_cast<int>(h), static_cast<Qt::AspectRatioMode>(aspectMode), static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_scaled_s_aspectMode(const QPixmap* self, QSize* s, int aspectMode) {
	return new QPixmap(self->scaled(*s, static_cast<Qt::AspectRatioMode>(aspectMode)));
}

QPixmap* QPixmap_scaled_s_aspectMode_mode(const QPixmap* self, QSize* s, int aspectMode, int mode) {
	return new QPixmap(self->scaled(*s, static_cast<Qt::AspectRatioMode>(aspectMode), static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_scaledToWidth_w_mode(const QPixmap* self, int w, int mode) {
	return new QPixmap(self->scaledToWidth(static_cast<int>(w), static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_scaledToHeight_h_mode(const QPixmap* self, int h, int mode) {
	return new QPixmap(self->scaledToHeight(static_cast<int>(h), static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_transformed_QMatrix_Qt_TransformationMode(const QPixmap* self, QMatrix* param1, int mode) {
	return new QPixmap(self->transformed(*param1, static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_transformed_QTransform_Qt_TransformationMode(const QPixmap* self, QTransform* param1, int mode) {
	return new QPixmap(self->transformed(*param1, static_cast<Qt::TransformationMode>(mode)));
}

QPixmap* QPixmap_fromImage_image_flags(QImage* image, int flags) {
	return new QPixmap(QPixmap::fromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

QPixmap* QPixmap_fromImageReader_imageReader_flags(QImageReader* imageReader, int flags) {
	return new QPixmap(QPixmap::fromImageReader(imageReader, static_cast<Qt::ImageConversionFlags>(flags)));
}

bool QPixmap_load_fileName_format(QPixmap* self, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString, format);
}

bool QPixmap_load_fileName_format_flags(QPixmap* self, struct seaqt_string fileName, const char* format, int flags) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString, format, static_cast<Qt::ImageConversionFlags>(flags));
}

bool QPixmap_loadFromData_buf_len_format(QPixmap* self, const unsigned char* buf, unsigned int len, const char* format) {
	return self->loadFromData(static_cast<const uchar*>(buf), static_cast<uint>(len), format);
}

bool QPixmap_loadFromData_buf_len_format_flags(QPixmap* self, const unsigned char* buf, unsigned int len, const char* format, int flags) {
	return self->loadFromData(static_cast<const uchar*>(buf), static_cast<uint>(len), format, static_cast<Qt::ImageConversionFlags>(flags));
}

bool QPixmap_loadFromData_data_format(QPixmap* self, struct seaqt_string data, const char* format) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->loadFromData(data_QByteArray, format);
}

bool QPixmap_loadFromData_data_format_flags(QPixmap* self, struct seaqt_string data, const char* format, int flags) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->loadFromData(data_QByteArray, format, static_cast<Qt::ImageConversionFlags>(flags));
}

bool QPixmap_save_fileName_format(const QPixmap* self, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString, format);
}

bool QPixmap_save_fileName_format_quality(const QPixmap* self, struct seaqt_string fileName, const char* format, int quality) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString, format, static_cast<int>(quality));
}

bool QPixmap_save_device_format(const QPixmap* self, QIODevice* device, const char* format) {
	return self->save(device, format);
}

bool QPixmap_save_device_format_quality(const QPixmap* self, QIODevice* device, const char* format, int quality) {
	return self->save(device, format, static_cast<int>(quality));
}

bool QPixmap_convertFromImage_img_flags(QPixmap* self, QImage* img, int flags) {
	return self->convertFromImage(*img, static_cast<Qt::ImageConversionFlags>(flags));
}

QPixmap* QPixmap_copy_rect(const QPixmap* self, QRect* rect) {
	return new QPixmap(self->copy(*rect));
}

void QPixmap_scroll_dx_dy_x_y_width_height_exposed(QPixmap* self, int dx, int dy, int x, int y, int width, int height, QRegion* exposed) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy), static_cast<int>(x), static_cast<int>(y), static_cast<int>(width), static_cast<int>(height), exposed);
}

void QPixmap_scroll_dx_dy_rect_exposed(QPixmap* self, int dx, int dy, QRect* rect, QRegion* exposed) {
	self->scroll(static_cast<int>(dx), static_cast<int>(dy), *rect, exposed);
}

void* QPixmap_vdata(VirtualQPixmap* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPixmap>()); }
VirtualQPixmap* vdata_QPixmap(void* vdata) { return reinterpret_cast<VirtualQPixmap*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPixmap>()); }

int QPixmap_virtualbase_devType(const VirtualQPixmap* self) {

	return self->QPixmap::devType();
}

QPaintEngine* QPixmap_virtualbase_paintEngine(const VirtualQPixmap* self) {

	return self->QPixmap::paintEngine();
}

int QPixmap_virtualbase_metric(const VirtualQPixmap* self, int param1) {

	return self->QPixmap::metric(static_cast<VirtualQPixmap::PaintDeviceMetric>(param1));
}

void QPixmap_virtualbase_initPainter(const VirtualQPixmap* self, QPainter* painter) {

	self->QPixmap::initPainter(painter);
}

QPaintDevice* QPixmap_virtualbase_redirected(const VirtualQPixmap* self, QPoint* offset) {

	return self->QPixmap::redirected(offset);
}

QPainter* QPixmap_virtualbase_sharedPainter(const VirtualQPixmap* self) {

	return self->QPixmap::sharedPainter();
}

void QPixmap_delete(QPixmap* self) {
	delete self;
}

