#include <QByteArray>
#include <QColor>
#include <QColorSpace>
#include <QColorTransform>
#include <QIODevice>
#include <QImage>
#include <QList>
#include <QMatrix>
#include <QMetaObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPixelFormat>
#include <QPoint>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTransform>
#include <QVariant>
#include <QVector>
#include <qimage.h>
#include "gen_qimage.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQImage final : public QImage {
	const QImage_VTable* vtbl;
public:
	friend void* QImage_vdata(VirtualQImage* self);
	friend VirtualQImage* vdata_QImage(void* vdata);

	VirtualQImage(const QImage_VTable* vtbl): QImage(), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const QSize& size, QImage::Format format): QImage(size, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, int width, int height, QImage::Format format): QImage(width, height, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, uchar* data, int width, int height, QImage::Format format): QImage(data, width, height, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const uchar* data, int width, int height, QImage::Format format): QImage(data, width, height, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, uchar* data, int width, int height, int bytesPerLine, QImage::Format format): QImage(data, width, height, bytesPerLine, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const uchar* data, int width, int height, int bytesPerLine, QImage::Format format): QImage(data, width, height, bytesPerLine, format), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const QString& fileName): QImage(fileName), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const QImage& from): QImage(from), vtbl(vtbl) {}
	VirtualQImage(const QImage_VTable* vtbl, const QString& fileName, const char* format): QImage(fileName, format), vtbl(vtbl) {}

	virtual ~VirtualQImage() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QImage::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QImage_virtualbase_devType(const VirtualQImage* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QImage::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QImage_virtualbase_paintEngine(const VirtualQImage* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QImage::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QImage_virtualbase_metric(const VirtualQImage* self, int metric);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QImage::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QImage_virtualbase_initPainter(const VirtualQImage* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QImage::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QImage_virtualbase_redirected(const VirtualQImage* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QImage::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QImage_virtualbase_sharedPainter(const VirtualQImage* self);

	// Wrappers to allow calling protected methods:
	friend QImage* QImage_protectedbase_mirrored_helper(const VirtualQImage* self, bool horizontal, bool vertical);
	friend QImage* QImage_protectedbase_rgbSwapped_helper(const VirtualQImage* self);
	friend void QImage_protectedbase_mirrored_inplace(VirtualQImage* self, bool horizontal, bool vertical);
	friend void QImage_protectedbase_rgbSwapped_inplace(VirtualQImage* self);
	friend QImage* QImage_protectedbase_convertToFormat_helper(const VirtualQImage* self, int format, int flags);
	friend bool QImage_protectedbase_convertToFormat_inplace(VirtualQImage* self, int format, int flags);
	friend QImage* QImage_protectedbase_smoothScaled(const VirtualQImage* self, int w, int h);
};

VirtualQImage* QImage_new(const QImage_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl) : nullptr;
}

VirtualQImage* QImage_new_cQSize_QImage_Format(const QImage_VTable* vtbl, size_t vdata, QSize* size, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, *size, static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, int width, int height, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, static_cast<int>(width), static_cast<int>(height), static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_puchar_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, unsigned char* data, int width, int height, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, static_cast<uchar*>(data), static_cast<int>(width), static_cast<int>(height), static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_pcuchar_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, const unsigned char* data, int width, int height, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, static_cast<const uchar*>(data), static_cast<int>(width), static_cast<int>(height), static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_puchar_int_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, unsigned char* data, int width, int height, int bytesPerLine, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, static_cast<uchar*>(data), static_cast<int>(width), static_cast<int>(height), static_cast<int>(bytesPerLine), static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_pcuchar_int_int_int_QImage_Format(const QImage_VTable* vtbl, size_t vdata, const unsigned char* data, int width, int height, int bytesPerLine, int format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, static_cast<const uchar*>(data), static_cast<int>(width), static_cast<int>(height), static_cast<int>(bytesPerLine), static_cast<QImage::Format>(format)) : nullptr;
}

VirtualQImage* QImage_new_cQString(const QImage_VTable* vtbl, size_t vdata, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, fileName_QString) : nullptr;
}

VirtualQImage* QImage_new_cQImage(const QImage_VTable* vtbl, size_t vdata, QImage* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, *from) : nullptr;
}

VirtualQImage* QImage_new_cQString_pcchar(const QImage_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImage>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImage(vtbl, fileName_QString, format) : nullptr;
}

void QImage_virtbase(QImage* src, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

void QImage_operatorAssign(QImage* self, QImage* from) {
	self->operator=(*from);
}

void QImage_swap(QImage* self, QImage* other) {
	self->swap(*other);
}

bool QImage_isNull(const QImage* self) {
	return self->isNull();
}

int QImage_devType(const QImage* self) {
	return self->devType();
}

bool QImage_operatorEqual(const QImage* self, QImage* param1) {
	return (*self == *param1);
}

bool QImage_operatorNotEqual(const QImage* self, QImage* param1) {
	return (*self != *param1);
}

QVariant* QImage_ToQVariant(const QImage* self) {
	return new QVariant(self->operator QVariant());
}

void QImage_detach(QImage* self) {
	self->detach();
}

bool QImage_isDetached(const QImage* self) {
	return self->isDetached();
}

QImage* QImage_copy(const QImage* self) {
	return new QImage(self->copy());
}

QImage* QImage_copy_x_y_w_h(const QImage* self, int x, int y, int w, int h) {
	return new QImage(self->copy(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h)));
}

int QImage_format(const QImage* self) {
	QImage::Format _ret = self->format();
	return static_cast<int>(_ret);
}

QImage* QImage_convertToFormat_f(const QImage* self, int f) {
	return new QImage(self->convertToFormat(static_cast<QImage::Format>(f)));
}

QImage* QImage_convertToFormat_f_colorTable(const QImage* self, int f, struct seaqt_array /* of unsigned int */  colorTable) {
	QVector<QRgb> colorTable_QList;
	colorTable_QList.reserve(colorTable.len);
	unsigned int* colorTable_arr = static_cast<unsigned int*>(colorTable.data);
	for(size_t i = 0; i < colorTable.len; ++i) {
		colorTable_QList.push_back(static_cast<unsigned int>(colorTable_arr[i]));
	}
	return new QImage(self->convertToFormat(static_cast<QImage::Format>(f), colorTable_QList));
}

bool QImage_reinterpretAsFormat(QImage* self, int f) {
	return self->reinterpretAsFormat(static_cast<QImage::Format>(f));
}

void QImage_convertTo_f(QImage* self, int f) {
	self->convertTo(static_cast<QImage::Format>(f));
}

int QImage_width(const QImage* self) {
	return self->width();
}

int QImage_height(const QImage* self) {
	return self->height();
}

QSize* QImage_size(const QImage* self) {
	return new QSize(self->size());
}

QRect* QImage_rect(const QImage* self) {
	return new QRect(self->rect());
}

int QImage_depth(const QImage* self) {
	return self->depth();
}

int QImage_colorCount(const QImage* self) {
	return self->colorCount();
}

int QImage_bitPlaneCount(const QImage* self) {
	return self->bitPlaneCount();
}

unsigned int QImage_color(const QImage* self, int i) {
	QRgb _ret = self->color(static_cast<int>(i));
	return static_cast<unsigned int>(_ret);
}

void QImage_setColor(QImage* self, int i, unsigned int c) {
	self->setColor(static_cast<int>(i), static_cast<QRgb>(c));
}

void QImage_setColorCount(QImage* self, int colorCount) {
	self->setColorCount(static_cast<int>(colorCount));
}

bool QImage_allGray(const QImage* self) {
	return self->allGray();
}

bool QImage_isGrayscale(const QImage* self) {
	return self->isGrayscale();
}

unsigned char* QImage_bits(QImage* self) {
	uchar* _ret = self->bits();
	return static_cast<unsigned char*>(_ret);
}

const unsigned char* QImage_bits_const(const QImage* self) {
	const uchar* _ret = self->bits();
	return static_cast<const unsigned char*>(_ret);
}

const unsigned char* QImage_constBits(const QImage* self) {
	const uchar* _ret = self->constBits();
	return static_cast<const unsigned char*>(_ret);
}

int QImage_byteCount(const QImage* self) {
	return self->byteCount();
}

ptrdiff_t QImage_sizeInBytes(const QImage* self) {
	qsizetype _ret = self->sizeInBytes();
	return static_cast<ptrdiff_t>(_ret);
}

unsigned char* QImage_scanLine_int(QImage* self, int param1) {
	uchar* _ret = self->scanLine(static_cast<int>(param1));
	return static_cast<unsigned char*>(_ret);
}

const unsigned char* QImage_scanLine_const_int(const QImage* self, int param1) {
	const uchar* _ret = self->scanLine(static_cast<int>(param1));
	return static_cast<const unsigned char*>(_ret);
}

const unsigned char* QImage_constScanLine(const QImage* self, int param1) {
	const uchar* _ret = self->constScanLine(static_cast<int>(param1));
	return static_cast<const unsigned char*>(_ret);
}

int QImage_bytesPerLine(const QImage* self) {
	return self->bytesPerLine();
}

bool QImage_valid_x_y(const QImage* self, int x, int y) {
	return self->valid(static_cast<int>(x), static_cast<int>(y));
}

bool QImage_valid_pt(const QImage* self, QPoint* pt) {
	return self->valid(*pt);
}

int QImage_pixelIndex_x_y(const QImage* self, int x, int y) {
	return self->pixelIndex(static_cast<int>(x), static_cast<int>(y));
}

int QImage_pixelIndex_pt(const QImage* self, QPoint* pt) {
	return self->pixelIndex(*pt);
}

unsigned int QImage_pixel_x_y(const QImage* self, int x, int y) {
	QRgb _ret = self->pixel(static_cast<int>(x), static_cast<int>(y));
	return static_cast<unsigned int>(_ret);
}

unsigned int QImage_pixel_pt(const QImage* self, QPoint* pt) {
	QRgb _ret = self->pixel(*pt);
	return static_cast<unsigned int>(_ret);
}

void QImage_setPixel_x_y_index_or_rgb(QImage* self, int x, int y, unsigned int index_or_rgb) {
	self->setPixel(static_cast<int>(x), static_cast<int>(y), static_cast<uint>(index_or_rgb));
}

void QImage_setPixel_pt_index_or_rgb(QImage* self, QPoint* pt, unsigned int index_or_rgb) {
	self->setPixel(*pt, static_cast<uint>(index_or_rgb));
}

QColor* QImage_pixelColor_x_y(const QImage* self, int x, int y) {
	return new QColor(self->pixelColor(static_cast<int>(x), static_cast<int>(y)));
}

QColor* QImage_pixelColor_pt(const QImage* self, QPoint* pt) {
	return new QColor(self->pixelColor(*pt));
}

void QImage_setPixelColor_x_y_c(QImage* self, int x, int y, QColor* c) {
	self->setPixelColor(static_cast<int>(x), static_cast<int>(y), *c);
}

void QImage_setPixelColor_pt_c(QImage* self, QPoint* pt, QColor* c) {
	self->setPixelColor(*pt, *c);
}

struct seaqt_array /* of unsigned int */  QImage_colorTable(const QImage* self) {
	QVector<QRgb> _ret = self->colorTable();
	// Convert QList<> from C++ memory to manually-managed C memory
	unsigned int* _arr = static_cast<unsigned int*>(malloc(sizeof(unsigned int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QImage_setColorTable(QImage* self, struct seaqt_array /* of unsigned int */  colors) {
	QVector<QRgb> colors_QList;
	colors_QList.reserve(colors.len);
	unsigned int* colors_arr = static_cast<unsigned int*>(colors.data);
	for(size_t i = 0; i < colors.len; ++i) {
		colors_QList.push_back(static_cast<unsigned int>(colors_arr[i]));
	}
	self->setColorTable(colors_QList);
}

double QImage_devicePixelRatio(const QImage* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

void QImage_setDevicePixelRatio(QImage* self, double scaleFactor) {
	self->setDevicePixelRatio(static_cast<qreal>(scaleFactor));
}

void QImage_fill_uint(QImage* self, unsigned int pixel) {
	self->fill(static_cast<uint>(pixel));
}

void QImage_fill_QColor(QImage* self, QColor* color) {
	self->fill(*color);
}

void QImage_fill_Qt_GlobalColor(QImage* self, int color) {
	self->fill(static_cast<Qt::GlobalColor>(color));
}

bool QImage_hasAlphaChannel(const QImage* self) {
	return self->hasAlphaChannel();
}

void QImage_setAlphaChannel(QImage* self, QImage* alphaChannel) {
	self->setAlphaChannel(*alphaChannel);
}

QImage* QImage_alphaChannel(const QImage* self) {
	return new QImage(self->alphaChannel());
}

QImage* QImage_createAlphaMask(const QImage* self) {
	return new QImage(self->createAlphaMask());
}

QImage* QImage_createHeuristicMask(const QImage* self) {
	return new QImage(self->createHeuristicMask());
}

QImage* QImage_createMaskFromColor_color(const QImage* self, unsigned int color) {
	return new QImage(self->createMaskFromColor(static_cast<QRgb>(color)));
}

QImage* QImage_scaled_w_h(const QImage* self, int w, int h) {
	return new QImage(self->scaled(static_cast<int>(w), static_cast<int>(h)));
}

QImage* QImage_scaled_s(const QImage* self, QSize* s) {
	return new QImage(self->scaled(*s));
}

QImage* QImage_scaledToWidth_w(const QImage* self, int w) {
	return new QImage(self->scaledToWidth(static_cast<int>(w)));
}

QImage* QImage_scaledToHeight_h(const QImage* self, int h) {
	return new QImage(self->scaledToHeight(static_cast<int>(h)));
}

QImage* QImage_transformed_QMatrix(const QImage* self, QMatrix* matrix) {
	return new QImage(self->transformed(*matrix));
}

QMatrix* QImage_trueMatrix_QMatrix_int_int(QMatrix* param1, int w, int h) {
	return new QMatrix(QImage::trueMatrix(*param1, static_cast<int>(w), static_cast<int>(h)));
}

QImage* QImage_transformed_QTransform(const QImage* self, QTransform* matrix) {
	return new QImage(self->transformed(*matrix));
}

QTransform* QImage_trueMatrix_QTransform_int_int(QTransform* param1, int w, int h) {
	return new QTransform(QImage::trueMatrix(*param1, static_cast<int>(w), static_cast<int>(h)));
}

QImage* QImage_mirrored(const QImage* self) {
	return new QImage(self->mirrored());
}

QImage* QImage_rgbSwapped(const QImage* self) {
	return new QImage(self->rgbSwapped());
}

void QImage_invertPixels(QImage* self) {
	self->invertPixels();
}

QColorSpace* QImage_colorSpace(const QImage* self) {
	return new QColorSpace(self->colorSpace());
}

QImage* QImage_convertedToColorSpace(const QImage* self, QColorSpace* param1) {
	return new QImage(self->convertedToColorSpace(*param1));
}

void QImage_convertToColorSpace(QImage* self, QColorSpace* param1) {
	self->convertToColorSpace(*param1);
}

void QImage_setColorSpace(QImage* self, QColorSpace* colorSpace) {
	self->setColorSpace(*colorSpace);
}

void QImage_applyColorTransform(QImage* self, QColorTransform* transform) {
	self->applyColorTransform(*transform);
}

bool QImage_load_device_format(QImage* self, QIODevice* device, const char* format) {
	return self->load(device, format);
}

bool QImage_load_fileName(QImage* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString);
}

bool QImage_loadFromData_buf_len(QImage* self, const unsigned char* buf, int len) {
	return self->loadFromData(static_cast<const uchar*>(buf), static_cast<int>(len));
}

bool QImage_loadFromData_data(QImage* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->loadFromData(data_QByteArray);
}

bool QImage_save_fileName(const QImage* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString);
}

bool QImage_save_device(const QImage* self, QIODevice* device) {
	return self->save(device);
}

QImage* QImage_fromData_data_size(const unsigned char* data, int size) {
	return new QImage(QImage::fromData(static_cast<const uchar*>(data), static_cast<int>(size)));
}

QImage* QImage_fromData_data(struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	return new QImage(QImage::fromData(data_QByteArray));
}

long long QImage_cacheKey(const QImage* self) {
	qint64 _ret = self->cacheKey();
	return static_cast<long long>(_ret);
}

QPaintEngine* QImage_paintEngine(const QImage* self) {
	return self->paintEngine();
}

int QImage_dotsPerMeterX(const QImage* self) {
	return self->dotsPerMeterX();
}

int QImage_dotsPerMeterY(const QImage* self) {
	return self->dotsPerMeterY();
}

void QImage_setDotsPerMeterX(QImage* self, int dotsPerMeterX) {
	self->setDotsPerMeterX(static_cast<int>(dotsPerMeterX));
}

void QImage_setDotsPerMeterY(QImage* self, int dotsPerMeterY) {
	self->setDotsPerMeterY(static_cast<int>(dotsPerMeterY));
}

QPoint* QImage_offset(const QImage* self) {
	return new QPoint(self->offset());
}

void QImage_setOffset(QImage* self, QPoint* offset) {
	self->setOffset(*offset);
}

struct seaqt_array /* of struct seaqt_string */  QImage_textKeys(const QImage* self) {
	QStringList _ret = self->textKeys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QImage_text(const QImage* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QImage_setText(QImage* self, struct seaqt_string key, struct seaqt_string value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->setText(key_QString, value_QString);
}

QPixelFormat* QImage_pixelFormat(const QImage* self) {
	return new QPixelFormat(self->pixelFormat());
}

QPixelFormat* QImage_toPixelFormat(int format) {
	return new QPixelFormat(QImage::toPixelFormat(static_cast<QImage::Format>(format)));
}

int QImage_toImageFormat(QPixelFormat* format) {
	QImage::Format _ret = QImage::toImageFormat(*format);
	return static_cast<int>(_ret);
}

QImage* QImage_copy_rect(const QImage* self, QRect* rect) {
	return new QImage(self->copy(*rect));
}

QImage* QImage_convertToFormat_f_flags(const QImage* self, int f, int flags) {
	return new QImage(self->convertToFormat(static_cast<QImage::Format>(f), static_cast<Qt::ImageConversionFlags>(flags)));
}

QImage* QImage_convertToFormat_f_colorTable_flags(const QImage* self, int f, struct seaqt_array /* of unsigned int */  colorTable, int flags) {
	QVector<QRgb> colorTable_QList;
	colorTable_QList.reserve(colorTable.len);
	unsigned int* colorTable_arr = static_cast<unsigned int*>(colorTable.data);
	for(size_t i = 0; i < colorTable.len; ++i) {
		colorTable_QList.push_back(static_cast<unsigned int>(colorTable_arr[i]));
	}
	return new QImage(self->convertToFormat(static_cast<QImage::Format>(f), colorTable_QList, static_cast<Qt::ImageConversionFlags>(flags)));
}

void QImage_convertTo_f_flags(QImage* self, int f, int flags) {
	self->convertTo(static_cast<QImage::Format>(f), static_cast<Qt::ImageConversionFlags>(flags));
}

QImage* QImage_createAlphaMask_flags(const QImage* self, int flags) {
	return new QImage(self->createAlphaMask(static_cast<Qt::ImageConversionFlags>(flags)));
}

QImage* QImage_createHeuristicMask_clipTight(const QImage* self, bool clipTight) {
	return new QImage(self->createHeuristicMask(clipTight));
}

QImage* QImage_createMaskFromColor_color_mode(const QImage* self, unsigned int color, int mode) {
	return new QImage(self->createMaskFromColor(static_cast<QRgb>(color), static_cast<Qt::MaskMode>(mode)));
}

QImage* QImage_scaled_w_h_aspectMode(const QImage* self, int w, int h, int aspectMode) {
	return new QImage(self->scaled(static_cast<int>(w), static_cast<int>(h), static_cast<Qt::AspectRatioMode>(aspectMode)));
}

QImage* QImage_scaled_w_h_aspectMode_mode(const QImage* self, int w, int h, int aspectMode, int mode) {
	return new QImage(self->scaled(static_cast<int>(w), static_cast<int>(h), static_cast<Qt::AspectRatioMode>(aspectMode), static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_scaled_s_aspectMode(const QImage* self, QSize* s, int aspectMode) {
	return new QImage(self->scaled(*s, static_cast<Qt::AspectRatioMode>(aspectMode)));
}

QImage* QImage_scaled_s_aspectMode_mode(const QImage* self, QSize* s, int aspectMode, int mode) {
	return new QImage(self->scaled(*s, static_cast<Qt::AspectRatioMode>(aspectMode), static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_scaledToWidth_w_mode(const QImage* self, int w, int mode) {
	return new QImage(self->scaledToWidth(static_cast<int>(w), static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_scaledToHeight_h_mode(const QImage* self, int h, int mode) {
	return new QImage(self->scaledToHeight(static_cast<int>(h), static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_transformed_QMatrix_Qt_TransformationMode(const QImage* self, QMatrix* matrix, int mode) {
	return new QImage(self->transformed(*matrix, static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_transformed_QTransform_Qt_TransformationMode(const QImage* self, QTransform* matrix, int mode) {
	return new QImage(self->transformed(*matrix, static_cast<Qt::TransformationMode>(mode)));
}

QImage* QImage_mirrored_horizontally(const QImage* self, bool horizontally) {
	return new QImage(self->mirrored(horizontally));
}

QImage* QImage_mirrored_horizontally_vertically(const QImage* self, bool horizontally, bool vertically) {
	return new QImage(self->mirrored(horizontally, vertically));
}

void QImage_invertPixels_QImage_InvertMode(QImage* self, int param1) {
	self->invertPixels(static_cast<QImage::InvertMode>(param1));
}

bool QImage_load_fileName_format(QImage* self, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString, format);
}

bool QImage_loadFromData_buf_len_format(QImage* self, const unsigned char* buf, int len, const char* format) {
	return self->loadFromData(static_cast<const uchar*>(buf), static_cast<int>(len), format);
}

bool QImage_loadFromData_data_aformat(QImage* self, struct seaqt_string data, const char* aformat) {
	QByteArray data_QByteArray(data.data, data.len);
	return self->loadFromData(data_QByteArray, aformat);
}

bool QImage_save_fileName_format(const QImage* self, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString, format);
}

bool QImage_save_fileName_format_quality(const QImage* self, struct seaqt_string fileName, const char* format, int quality) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString, format, static_cast<int>(quality));
}

bool QImage_save_device_format(const QImage* self, QIODevice* device, const char* format) {
	return self->save(device, format);
}

bool QImage_save_device_format_quality(const QImage* self, QIODevice* device, const char* format, int quality) {
	return self->save(device, format, static_cast<int>(quality));
}

QImage* QImage_fromData_data_size_format(const unsigned char* data, int size, const char* format) {
	return new QImage(QImage::fromData(static_cast<const uchar*>(data), static_cast<int>(size), format));
}

QImage* QImage_fromData_data_format(struct seaqt_string data, const char* format) {
	QByteArray data_QByteArray(data.data, data.len);
	return new QImage(QImage::fromData(data_QByteArray, format));
}

struct seaqt_string QImage_text_key(const QImage* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QString _ret = self->text(key_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QImage_staticMetaObject() { return &QImage::staticMetaObject; }
void* QImage_vdata(VirtualQImage* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQImage>()); }
VirtualQImage* vdata_QImage(void* vdata) { return reinterpret_cast<VirtualQImage*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQImage>()); }

int QImage_virtualbase_devType(const VirtualQImage* self) {

	return self->QImage::devType();
}

QPaintEngine* QImage_virtualbase_paintEngine(const VirtualQImage* self) {

	return self->QImage::paintEngine();
}

int QImage_virtualbase_metric(const VirtualQImage* self, int metric) {

	return self->QImage::metric(static_cast<VirtualQImage::PaintDeviceMetric>(metric));
}

void QImage_virtualbase_initPainter(const VirtualQImage* self, QPainter* painter) {

	self->QImage::initPainter(painter);
}

QPaintDevice* QImage_virtualbase_redirected(const VirtualQImage* self, QPoint* offset) {

	return self->QImage::redirected(offset);
}

QPainter* QImage_virtualbase_sharedPainter(const VirtualQImage* self) {

	return self->QImage::sharedPainter();
}

QImage* QImage_protectedbase_mirrored_helper(const VirtualQImage* self, bool horizontal, bool vertical) {
	return new QImage(self->mirrored_helper(horizontal, vertical));
}

QImage* QImage_protectedbase_rgbSwapped_helper(const VirtualQImage* self) {
	return new QImage(self->rgbSwapped_helper());
}

void QImage_protectedbase_mirrored_inplace(VirtualQImage* self, bool horizontal, bool vertical) {
	self->mirrored_inplace(horizontal, vertical);
}

void QImage_protectedbase_rgbSwapped_inplace(VirtualQImage* self) {
	self->rgbSwapped_inplace();
}

QImage* QImage_protectedbase_convertToFormat_helper(const VirtualQImage* self, int format, int flags) {
	return new QImage(self->convertToFormat_helper(static_cast<VirtualQImage::Format>(format), static_cast<Qt::ImageConversionFlags>(flags)));
}

bool QImage_protectedbase_convertToFormat_inplace(VirtualQImage* self, int format, int flags) {
	return self->convertToFormat_inplace(static_cast<VirtualQImage::Format>(format), static_cast<Qt::ImageConversionFlags>(flags));
}

QImage* QImage_protectedbase_smoothScaled(const VirtualQImage* self, int w, int h) {
	return new QImage(self->smoothScaled(static_cast<int>(w), static_cast<int>(h)));
}

void QImage_delete(QImage* self) {
	delete self;
}

