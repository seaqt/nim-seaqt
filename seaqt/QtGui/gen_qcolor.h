#pragma once
#ifndef SEAQT_QTGUI_GEN_QCOLOR_H
#define SEAQT_QTGUI_GEN_QCOLOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAnyStringView;
class QColor;
class QRgba64;
class QVariant;
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QColor QColor;
typedef struct QRgba64 QRgba64;
typedef struct QVariant QVariant;
#endif

QColor* QColor_new();
QColor* QColor_new_Qt_GlobalColor(int color);
QColor* QColor_new_int_int_int(int r, int g, int b);
QColor* QColor_new_QRgb(unsigned int rgb);
QColor* QColor_new_QRgba64(QRgba64* rgba64);
QColor* QColor_new_QString(struct seaqt_string name);
QColor* QColor_new_char(const char* aname);
QColor* QColor_new_QColor_Spec(int spec);
QColor* QColor_new_QColor_Spec_ushort_ushort_ushort_ushort(int spec, unsigned short a1, unsigned short a2, unsigned short a3, unsigned short a4);
QColor* QColor_new_QColor(QColor* from);
QColor* QColor_new_int_int_int_int(int r, int g, int b, int a);
QColor* QColor_new_QColor_Spec_ushort_ushort_ushort_ushort_ushort(int spec, unsigned short a1, unsigned short a2, unsigned short a3, unsigned short a4, unsigned short a5);

QColor* QColor_fromString(struct seaqt_string name);
void QColor_operatorAssign(QColor* self, int color);
bool QColor_isValid(const QColor* self);
struct seaqt_string QColor_name(const QColor* self);
void QColor_setNamedColor_QString(QColor* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QColor_colorNames();
int QColor_spec(const QColor* self);
int QColor_alpha(const QColor* self);
void QColor_setAlpha(QColor* self, int alpha);
float QColor_alphaF(const QColor* self);
void QColor_setAlphaF(QColor* self, float alpha);
int QColor_red(const QColor* self);
int QColor_green(const QColor* self);
int QColor_blue(const QColor* self);
void QColor_setRed(QColor* self, int red);
void QColor_setGreen(QColor* self, int green);
void QColor_setBlue(QColor* self, int blue);
float QColor_redF(const QColor* self);
float QColor_greenF(const QColor* self);
float QColor_blueF(const QColor* self);
void QColor_setRedF(QColor* self, float red);
void QColor_setGreenF(QColor* self, float green);
void QColor_setBlueF(QColor* self, float blue);
void QColor_getRgb_r_g_b(const QColor* self, int* r, int* g, int* b);
void QColor_setRgb_r_g_b(QColor* self, int r, int g, int b);
void QColor_getRgbF_r_g_b(const QColor* self, float* r, float* g, float* b);
void QColor_setRgbF_r_g_b(QColor* self, float r, float g, float b);
QRgba64* QColor_rgba64(const QColor* self);
void QColor_setRgba64(QColor* self, QRgba64* rgba);
unsigned int QColor_rgba(const QColor* self);
void QColor_setRgba(QColor* self, unsigned int rgba);
unsigned int QColor_rgb(const QColor* self);
void QColor_setRgb_rgb(QColor* self, unsigned int rgb);
int QColor_hue(const QColor* self);
int QColor_saturation(const QColor* self);
int QColor_hsvHue(const QColor* self);
int QColor_hsvSaturation(const QColor* self);
int QColor_value(const QColor* self);
float QColor_hueF(const QColor* self);
float QColor_saturationF(const QColor* self);
float QColor_hsvHueF(const QColor* self);
float QColor_hsvSaturationF(const QColor* self);
float QColor_valueF(const QColor* self);
void QColor_getHsv_h_s_v(const QColor* self, int* h, int* s, int* v);
void QColor_setHsv_h_s_v(QColor* self, int h, int s, int v);
void QColor_getHsvF_h_s_v(const QColor* self, float* h, float* s, float* v);
void QColor_setHsvF_h_s_v(QColor* self, float h, float s, float v);
int QColor_cyan(const QColor* self);
int QColor_magenta(const QColor* self);
int QColor_yellow(const QColor* self);
int QColor_black(const QColor* self);
float QColor_cyanF(const QColor* self);
float QColor_magentaF(const QColor* self);
float QColor_yellowF(const QColor* self);
float QColor_blackF(const QColor* self);
void QColor_getCmyk_c_m_y_k(const QColor* self, int* c, int* m, int* y, int* k);
void QColor_setCmyk_c_m_y_k(QColor* self, int c, int m, int y, int k);
void QColor_getCmykF_c_m_y_k(const QColor* self, float* c, float* m, float* y, float* k);
void QColor_setCmykF_c_m_y_k(QColor* self, float c, float m, float y, float k);
int QColor_hslHue(const QColor* self);
int QColor_hslSaturation(const QColor* self);
int QColor_lightness(const QColor* self);
float QColor_hslHueF(const QColor* self);
float QColor_hslSaturationF(const QColor* self);
float QColor_lightnessF(const QColor* self);
void QColor_getHsl_h_s_l(const QColor* self, int* h, int* s, int* l);
void QColor_setHsl_h_s_l(QColor* self, int h, int s, int l);
void QColor_getHslF_h_s_l(const QColor* self, float* h, float* s, float* l);
void QColor_setHslF_h_s_l(QColor* self, float h, float s, float l);
QColor* QColor_toRgb(const QColor* self);
QColor* QColor_toHsv(const QColor* self);
QColor* QColor_toCmyk(const QColor* self);
QColor* QColor_toHsl(const QColor* self);
QColor* QColor_toExtendedRgb(const QColor* self);
QColor* QColor_convertTo(const QColor* self, int colorSpec);
QColor* QColor_fromRgb_rgb(unsigned int rgb);
QColor* QColor_fromRgba(unsigned int rgba);
QColor* QColor_fromRgb_r_g_b(int r, int g, int b);
QColor* QColor_fromRgbF_r_g_b(float r, float g, float b);
QColor* QColor_fromRgba64_r_g_b(unsigned short r, unsigned short g, unsigned short b);
QColor* QColor_fromRgba64_rgba(QRgba64* rgba);
QColor* QColor_fromHsv_h_s_v(int h, int s, int v);
QColor* QColor_fromHsvF_h_s_v(float h, float s, float v);
QColor* QColor_fromCmyk_c_m_y_k(int c, int m, int y, int k);
QColor* QColor_fromCmykF_c_m_y_k(float c, float m, float y, float k);
QColor* QColor_fromHsl_h_s_l(int h, int s, int l);
QColor* QColor_fromHslF_h_s_l(float h, float s, float l);
QColor* QColor_lighter(const QColor* self);
QColor* QColor_darker(const QColor* self);
bool QColor_operatorEqual(const QColor* self, QColor* c);
bool QColor_operatorNotEqual(const QColor* self, QColor* c);
QVariant* QColor_ToQVariant(const QColor* self);
bool QColor_isValidColor_QString(struct seaqt_string name);
bool QColor_isValidColorName(struct seaqt_string param1);
struct seaqt_string QColor_name_format(const QColor* self, int format);
void QColor_getRgb_r_g_b_a(const QColor* self, int* r, int* g, int* b, int* a);
void QColor_setRgb_r_g_b_a(QColor* self, int r, int g, int b, int a);
void QColor_getRgbF_r_g_b_a(const QColor* self, float* r, float* g, float* b, float* a);
void QColor_setRgbF_r_g_b_a(QColor* self, float r, float g, float b, float a);
void QColor_getHsv_h_s_v_a(const QColor* self, int* h, int* s, int* v, int* a);
void QColor_setHsv_h_s_v_a(QColor* self, int h, int s, int v, int a);
void QColor_getHsvF_h_s_v_a(const QColor* self, float* h, float* s, float* v, float* a);
void QColor_setHsvF_h_s_v_a(QColor* self, float h, float s, float v, float a);
void QColor_getCmyk_c_m_y_k_a(const QColor* self, int* c, int* m, int* y, int* k, int* a);
void QColor_setCmyk_c_m_y_k_a(QColor* self, int c, int m, int y, int k, int a);
void QColor_getCmykF_c_m_y_k_a(const QColor* self, float* c, float* m, float* y, float* k, float* a);
void QColor_setCmykF_c_m_y_k_a(QColor* self, float c, float m, float y, float k, float a);
void QColor_getHsl_h_s_l_a(const QColor* self, int* h, int* s, int* l, int* a);
void QColor_setHsl_h_s_l_a(QColor* self, int h, int s, int l, int a);
void QColor_getHslF_h_s_l_a(const QColor* self, float* h, float* s, float* l, float* a);
void QColor_setHslF_h_s_l_a(QColor* self, float h, float s, float l, float a);
QColor* QColor_fromRgb_r_g_b_a(int r, int g, int b, int a);
QColor* QColor_fromRgbF_r_g_b_a(float r, float g, float b, float a);
QColor* QColor_fromRgba64_r_g_b_a(unsigned short r, unsigned short g, unsigned short b, unsigned short a);
QColor* QColor_fromHsv_h_s_v_a(int h, int s, int v, int a);
QColor* QColor_fromHsvF_h_s_v_a(float h, float s, float v, float a);
QColor* QColor_fromCmyk_c_m_y_k_a(int c, int m, int y, int k, int a);
QColor* QColor_fromCmykF_c_m_y_k_a(float c, float m, float y, float k, float a);
QColor* QColor_fromHsl_h_s_l_a(int h, int s, int l, int a);
QColor* QColor_fromHslF_h_s_l_a(float h, float s, float l, float a);
QColor* QColor_lighter_f(const QColor* self, int f);
QColor* QColor_darker_f(const QColor* self, int f);

void QColor_delete(QColor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
