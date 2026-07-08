#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QColor>
#include <QList>
#include <QRgba64>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qcolor.h>
#include "gen_qcolor.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QColor* QColor_new() {
	return new (std::nothrow) QColor();
}

QColor* QColor_new_Qt_GlobalColor(int color) {
	return new (std::nothrow) QColor(static_cast<Qt::GlobalColor>(color));
}

QColor* QColor_new_int_int_int(int r, int g, int b) {
	return new (std::nothrow) QColor(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b));
}

QColor* QColor_new_QRgb(unsigned int rgb) {
	return new (std::nothrow) QColor(static_cast<QRgb>(rgb));
}

QColor* QColor_new_QRgba64(QRgba64* rgba64) {
	return new (std::nothrow) QColor(*rgba64);
}

QColor* QColor_new_QString(struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new (std::nothrow) QColor(name_QString);
}

QColor* QColor_new_char(const char* aname) {
	return new (std::nothrow) QColor(aname);
}

QColor* QColor_new_QColor_Spec(int spec) {
	return new (std::nothrow) QColor(static_cast<QColor::Spec>(spec));
}

QColor* QColor_new_QColor_Spec_ushort_ushort_ushort_ushort(int spec, unsigned short a1, unsigned short a2, unsigned short a3, unsigned short a4) {
	return new (std::nothrow) QColor(static_cast<QColor::Spec>(spec), static_cast<ushort>(a1), static_cast<ushort>(a2), static_cast<ushort>(a3), static_cast<ushort>(a4));
}

QColor* QColor_new_QColor(QColor* from) {
	return new (std::nothrow) QColor(*from);
}

QColor* QColor_new_int_int_int_int(int r, int g, int b, int a) {
	return new (std::nothrow) QColor(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a));
}

QColor* QColor_new_QColor_Spec_ushort_ushort_ushort_ushort_ushort(int spec, unsigned short a1, unsigned short a2, unsigned short a3, unsigned short a4, unsigned short a5) {
	return new (std::nothrow) QColor(static_cast<QColor::Spec>(spec), static_cast<ushort>(a1), static_cast<ushort>(a2), static_cast<ushort>(a3), static_cast<ushort>(a4), static_cast<ushort>(a5));
}

QColor* QColor_fromString(struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	return new QColor(QColor::fromString(name_QString));
}

void QColor_operatorAssign(QColor* self, int color) {
	self->operator=(static_cast<Qt::GlobalColor>(color));
}

bool QColor_isValid(const QColor* self) {
	return self->isValid();
}

struct seaqt_string QColor_name(const QColor* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QColor_setNamedColor_QString(QColor* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setNamedColor(name_QString);
}

struct seaqt_array /* of struct seaqt_string */  QColor_colorNames() {
	QStringList _ret = QColor::colorNames();
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

int QColor_spec(const QColor* self) {
	QColor::Spec _ret = self->spec();
	return static_cast<int>(_ret);
}

int QColor_alpha(const QColor* self) {
	return self->alpha();
}

void QColor_setAlpha(QColor* self, int alpha) {
	self->setAlpha(static_cast<int>(alpha));
}

float QColor_alphaF(const QColor* self) {
	return self->alphaF();
}

void QColor_setAlphaF(QColor* self, float alpha) {
	self->setAlphaF(static_cast<float>(alpha));
}

int QColor_red(const QColor* self) {
	return self->red();
}

int QColor_green(const QColor* self) {
	return self->green();
}

int QColor_blue(const QColor* self) {
	return self->blue();
}

void QColor_setRed(QColor* self, int red) {
	self->setRed(static_cast<int>(red));
}

void QColor_setGreen(QColor* self, int green) {
	self->setGreen(static_cast<int>(green));
}

void QColor_setBlue(QColor* self, int blue) {
	self->setBlue(static_cast<int>(blue));
}

float QColor_redF(const QColor* self) {
	return self->redF();
}

float QColor_greenF(const QColor* self) {
	return self->greenF();
}

float QColor_blueF(const QColor* self) {
	return self->blueF();
}

void QColor_setRedF(QColor* self, float red) {
	self->setRedF(static_cast<float>(red));
}

void QColor_setGreenF(QColor* self, float green) {
	self->setGreenF(static_cast<float>(green));
}

void QColor_setBlueF(QColor* self, float blue) {
	self->setBlueF(static_cast<float>(blue));
}

void QColor_getRgb_r_g_b(const QColor* self, int* r, int* g, int* b) {
	self->getRgb(static_cast<int*>(r), static_cast<int*>(g), static_cast<int*>(b));
}

void QColor_setRgb_r_g_b(QColor* self, int r, int g, int b) {
	self->setRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b));
}

void QColor_getRgbF_r_g_b(const QColor* self, float* r, float* g, float* b) {
	self->getRgbF(static_cast<float*>(r), static_cast<float*>(g), static_cast<float*>(b));
}

void QColor_setRgbF_r_g_b(QColor* self, float r, float g, float b) {
	self->setRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b));
}

QRgba64* QColor_rgba64(const QColor* self) {
	return new QRgba64(self->rgba64());
}

void QColor_setRgba64(QColor* self, QRgba64* rgba) {
	self->setRgba64(*rgba);
}

unsigned int QColor_rgba(const QColor* self) {
	QRgb _ret = self->rgba();
	return static_cast<unsigned int>(_ret);
}

void QColor_setRgba(QColor* self, unsigned int rgba) {
	self->setRgba(static_cast<QRgb>(rgba));
}

unsigned int QColor_rgb(const QColor* self) {
	QRgb _ret = self->rgb();
	return static_cast<unsigned int>(_ret);
}

void QColor_setRgb_rgb(QColor* self, unsigned int rgb) {
	self->setRgb(static_cast<QRgb>(rgb));
}

int QColor_hue(const QColor* self) {
	return self->hue();
}

int QColor_saturation(const QColor* self) {
	return self->saturation();
}

int QColor_hsvHue(const QColor* self) {
	return self->hsvHue();
}

int QColor_hsvSaturation(const QColor* self) {
	return self->hsvSaturation();
}

int QColor_value(const QColor* self) {
	return self->value();
}

float QColor_hueF(const QColor* self) {
	return self->hueF();
}

float QColor_saturationF(const QColor* self) {
	return self->saturationF();
}

float QColor_hsvHueF(const QColor* self) {
	return self->hsvHueF();
}

float QColor_hsvSaturationF(const QColor* self) {
	return self->hsvSaturationF();
}

float QColor_valueF(const QColor* self) {
	return self->valueF();
}

void QColor_getHsv_h_s_v(const QColor* self, int* h, int* s, int* v) {
	self->getHsv(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(v));
}

void QColor_setHsv_h_s_v(QColor* self, int h, int s, int v) {
	self->setHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v));
}

void QColor_getHsvF_h_s_v(const QColor* self, float* h, float* s, float* v) {
	self->getHsvF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(v));
}

void QColor_setHsvF_h_s_v(QColor* self, float h, float s, float v) {
	self->setHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v));
}

int QColor_cyan(const QColor* self) {
	return self->cyan();
}

int QColor_magenta(const QColor* self) {
	return self->magenta();
}

int QColor_yellow(const QColor* self) {
	return self->yellow();
}

int QColor_black(const QColor* self) {
	return self->black();
}

float QColor_cyanF(const QColor* self) {
	return self->cyanF();
}

float QColor_magentaF(const QColor* self) {
	return self->magentaF();
}

float QColor_yellowF(const QColor* self) {
	return self->yellowF();
}

float QColor_blackF(const QColor* self) {
	return self->blackF();
}

void QColor_getCmyk_c_m_y_k(const QColor* self, int* c, int* m, int* y, int* k) {
	self->getCmyk(static_cast<int*>(c), static_cast<int*>(m), static_cast<int*>(y), static_cast<int*>(k));
}

void QColor_setCmyk_c_m_y_k(QColor* self, int c, int m, int y, int k) {
	self->setCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k));
}

void QColor_getCmykF_c_m_y_k(const QColor* self, float* c, float* m, float* y, float* k) {
	self->getCmykF(static_cast<float*>(c), static_cast<float*>(m), static_cast<float*>(y), static_cast<float*>(k));
}

void QColor_setCmykF_c_m_y_k(QColor* self, float c, float m, float y, float k) {
	self->setCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k));
}

int QColor_hslHue(const QColor* self) {
	return self->hslHue();
}

int QColor_hslSaturation(const QColor* self) {
	return self->hslSaturation();
}

int QColor_lightness(const QColor* self) {
	return self->lightness();
}

float QColor_hslHueF(const QColor* self) {
	return self->hslHueF();
}

float QColor_hslSaturationF(const QColor* self) {
	return self->hslSaturationF();
}

float QColor_lightnessF(const QColor* self) {
	return self->lightnessF();
}

void QColor_getHsl_h_s_l(const QColor* self, int* h, int* s, int* l) {
	self->getHsl(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(l));
}

void QColor_setHsl_h_s_l(QColor* self, int h, int s, int l) {
	self->setHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l));
}

void QColor_getHslF_h_s_l(const QColor* self, float* h, float* s, float* l) {
	self->getHslF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(l));
}

void QColor_setHslF_h_s_l(QColor* self, float h, float s, float l) {
	self->setHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l));
}

QColor* QColor_toRgb(const QColor* self) {
	return new QColor(self->toRgb());
}

QColor* QColor_toHsv(const QColor* self) {
	return new QColor(self->toHsv());
}

QColor* QColor_toCmyk(const QColor* self) {
	return new QColor(self->toCmyk());
}

QColor* QColor_toHsl(const QColor* self) {
	return new QColor(self->toHsl());
}

QColor* QColor_toExtendedRgb(const QColor* self) {
	return new QColor(self->toExtendedRgb());
}

QColor* QColor_convertTo(const QColor* self, int colorSpec) {
	return new QColor(self->convertTo(static_cast<QColor::Spec>(colorSpec)));
}

QColor* QColor_fromRgb_rgb(unsigned int rgb) {
	return new QColor(QColor::fromRgb(static_cast<QRgb>(rgb)));
}

QColor* QColor_fromRgba(unsigned int rgba) {
	return new QColor(QColor::fromRgba(static_cast<QRgb>(rgba)));
}

QColor* QColor_fromRgb_r_g_b(int r, int g, int b) {
	return new QColor(QColor::fromRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b)));
}

QColor* QColor_fromRgbF_r_g_b(float r, float g, float b) {
	return new QColor(QColor::fromRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b)));
}

QColor* QColor_fromRgba64_r_g_b(unsigned short r, unsigned short g, unsigned short b) {
	return new QColor(QColor::fromRgba64(static_cast<ushort>(r), static_cast<ushort>(g), static_cast<ushort>(b)));
}

QColor* QColor_fromRgba64_rgba(QRgba64* rgba) {
	return new QColor(QColor::fromRgba64(*rgba));
}

QColor* QColor_fromHsv_h_s_v(int h, int s, int v) {
	return new QColor(QColor::fromHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v)));
}

QColor* QColor_fromHsvF_h_s_v(float h, float s, float v) {
	return new QColor(QColor::fromHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v)));
}

QColor* QColor_fromCmyk_c_m_y_k(int c, int m, int y, int k) {
	return new QColor(QColor::fromCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k)));
}

QColor* QColor_fromCmykF_c_m_y_k(float c, float m, float y, float k) {
	return new QColor(QColor::fromCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k)));
}

QColor* QColor_fromHsl_h_s_l(int h, int s, int l) {
	return new QColor(QColor::fromHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l)));
}

QColor* QColor_fromHslF_h_s_l(float h, float s, float l) {
	return new QColor(QColor::fromHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l)));
}

QColor* QColor_lighter(const QColor* self) {
	return new QColor(self->lighter());
}

QColor* QColor_darker(const QColor* self) {
	return new QColor(self->darker());
}

bool QColor_operatorEqual(const QColor* self, QColor* c) {
	return (*self == *c);
}

bool QColor_operatorNotEqual(const QColor* self, QColor* c) {
	return (*self != *c);
}

QVariant* QColor_ToQVariant(const QColor* self) {
	return new QVariant(self->operator QVariant());
}

bool QColor_isValidColor_QString(struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return QColor::isValidColor(name_QString);
}

bool QColor_isValidColorName(struct seaqt_string param1) {
	QAnyStringView param1_QString = QAnyStringView(param1.data, param1.len);
	return QColor::isValidColorName(param1_QString);
}

struct seaqt_string QColor_name_format(const QColor* self, int format) {
	QString _ret = self->name(static_cast<QColor::NameFormat>(format));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QColor_getRgb_r_g_b_a(const QColor* self, int* r, int* g, int* b, int* a) {
	self->getRgb(static_cast<int*>(r), static_cast<int*>(g), static_cast<int*>(b), static_cast<int*>(a));
}

void QColor_setRgb_r_g_b_a(QColor* self, int r, int g, int b, int a) {
	self->setRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a));
}

void QColor_getRgbF_r_g_b_a(const QColor* self, float* r, float* g, float* b, float* a) {
	self->getRgbF(static_cast<float*>(r), static_cast<float*>(g), static_cast<float*>(b), static_cast<float*>(a));
}

void QColor_setRgbF_r_g_b_a(QColor* self, float r, float g, float b, float a) {
	self->setRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a));
}

void QColor_getHsv_h_s_v_a(const QColor* self, int* h, int* s, int* v, int* a) {
	self->getHsv(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(v), static_cast<int*>(a));
}

void QColor_setHsv_h_s_v_a(QColor* self, int h, int s, int v, int a) {
	self->setHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v), static_cast<int>(a));
}

void QColor_getHsvF_h_s_v_a(const QColor* self, float* h, float* s, float* v, float* a) {
	self->getHsvF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(v), static_cast<float*>(a));
}

void QColor_setHsvF_h_s_v_a(QColor* self, float h, float s, float v, float a) {
	self->setHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v), static_cast<float>(a));
}

void QColor_getCmyk_c_m_y_k_a(const QColor* self, int* c, int* m, int* y, int* k, int* a) {
	self->getCmyk(static_cast<int*>(c), static_cast<int*>(m), static_cast<int*>(y), static_cast<int*>(k), static_cast<int*>(a));
}

void QColor_setCmyk_c_m_y_k_a(QColor* self, int c, int m, int y, int k, int a) {
	self->setCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k), static_cast<int>(a));
}

void QColor_getCmykF_c_m_y_k_a(const QColor* self, float* c, float* m, float* y, float* k, float* a) {
	self->getCmykF(static_cast<float*>(c), static_cast<float*>(m), static_cast<float*>(y), static_cast<float*>(k), static_cast<float*>(a));
}

void QColor_setCmykF_c_m_y_k_a(QColor* self, float c, float m, float y, float k, float a) {
	self->setCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k), static_cast<float>(a));
}

void QColor_getHsl_h_s_l_a(const QColor* self, int* h, int* s, int* l, int* a) {
	self->getHsl(static_cast<int*>(h), static_cast<int*>(s), static_cast<int*>(l), static_cast<int*>(a));
}

void QColor_setHsl_h_s_l_a(QColor* self, int h, int s, int l, int a) {
	self->setHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l), static_cast<int>(a));
}

void QColor_getHslF_h_s_l_a(const QColor* self, float* h, float* s, float* l, float* a) {
	self->getHslF(static_cast<float*>(h), static_cast<float*>(s), static_cast<float*>(l), static_cast<float*>(a));
}

void QColor_setHslF_h_s_l_a(QColor* self, float h, float s, float l, float a) {
	self->setHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l), static_cast<float>(a));
}

QColor* QColor_fromRgb_r_g_b_a(int r, int g, int b, int a) {
	return new QColor(QColor::fromRgb(static_cast<int>(r), static_cast<int>(g), static_cast<int>(b), static_cast<int>(a)));
}

QColor* QColor_fromRgbF_r_g_b_a(float r, float g, float b, float a) {
	return new QColor(QColor::fromRgbF(static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a)));
}

QColor* QColor_fromRgba64_r_g_b_a(unsigned short r, unsigned short g, unsigned short b, unsigned short a) {
	return new QColor(QColor::fromRgba64(static_cast<ushort>(r), static_cast<ushort>(g), static_cast<ushort>(b), static_cast<ushort>(a)));
}

QColor* QColor_fromHsv_h_s_v_a(int h, int s, int v, int a) {
	return new QColor(QColor::fromHsv(static_cast<int>(h), static_cast<int>(s), static_cast<int>(v), static_cast<int>(a)));
}

QColor* QColor_fromHsvF_h_s_v_a(float h, float s, float v, float a) {
	return new QColor(QColor::fromHsvF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(v), static_cast<float>(a)));
}

QColor* QColor_fromCmyk_c_m_y_k_a(int c, int m, int y, int k, int a) {
	return new QColor(QColor::fromCmyk(static_cast<int>(c), static_cast<int>(m), static_cast<int>(y), static_cast<int>(k), static_cast<int>(a)));
}

QColor* QColor_fromCmykF_c_m_y_k_a(float c, float m, float y, float k, float a) {
	return new QColor(QColor::fromCmykF(static_cast<float>(c), static_cast<float>(m), static_cast<float>(y), static_cast<float>(k), static_cast<float>(a)));
}

QColor* QColor_fromHsl_h_s_l_a(int h, int s, int l, int a) {
	return new QColor(QColor::fromHsl(static_cast<int>(h), static_cast<int>(s), static_cast<int>(l), static_cast<int>(a)));
}

QColor* QColor_fromHslF_h_s_l_a(float h, float s, float l, float a) {
	return new QColor(QColor::fromHslF(static_cast<float>(h), static_cast<float>(s), static_cast<float>(l), static_cast<float>(a)));
}

QColor* QColor_lighter_f(const QColor* self, int f) {
	return new QColor(self->lighter(static_cast<int>(f)));
}

QColor* QColor_darker_f(const QColor* self, int f) {
	return new QColor(self->darker(static_cast<int>(f)));
}

void QColor_delete(QColor* self) {
	delete self;
}

