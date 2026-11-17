#pragma once
#ifndef SEAQT_QTGUI_GEN_QFONTMETRICS_H
#define SEAQT_QTGUI_GEN_QFONTMETRICS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChar;
class QFont;
class QFontMetrics;
class QFontMetricsF;
class QPaintDevice;
class QRect;
class QRectF;
class QSize;
class QSizeF;
class QTextOption;
#else
typedef struct QChar QChar;
typedef struct QFont QFont;
typedef struct QFontMetrics QFontMetrics;
typedef struct QFontMetricsF QFontMetricsF;
typedef struct QPaintDevice QPaintDevice;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QSize QSize;
typedef struct QSizeF QSizeF;
typedef struct QTextOption QTextOption;
#endif

QFontMetrics* QFontMetrics_new_QFont(QFont* param1);
QFontMetrics* QFontMetrics_new_QFont_QPaintDevice(QFont* font, QPaintDevice* pd);
QFontMetrics* QFontMetrics_new_QFontMetrics(QFontMetrics* from);

void QFontMetrics_operatorAssign(QFontMetrics* self, QFontMetrics* from);
void QFontMetrics_swap(QFontMetrics* self, QFontMetrics* other);
int QFontMetrics_ascent(const QFontMetrics* self);
int QFontMetrics_capHeight(const QFontMetrics* self);
int QFontMetrics_descent(const QFontMetrics* self);
int QFontMetrics_height(const QFontMetrics* self);
int QFontMetrics_leading(const QFontMetrics* self);
int QFontMetrics_lineSpacing(const QFontMetrics* self);
int QFontMetrics_minLeftBearing(const QFontMetrics* self);
int QFontMetrics_minRightBearing(const QFontMetrics* self);
int QFontMetrics_maxWidth(const QFontMetrics* self);
int QFontMetrics_xHeight(const QFontMetrics* self);
int QFontMetrics_averageCharWidth(const QFontMetrics* self);
bool QFontMetrics_inFont(const QFontMetrics* self, QChar* param1);
bool QFontMetrics_inFontUcs4(const QFontMetrics* self, unsigned int ucs4);
int QFontMetrics_leftBearing(const QFontMetrics* self, QChar* param1);
int QFontMetrics_rightBearing(const QFontMetrics* self, QChar* param1);
int QFontMetrics_horizontalAdvance_QString(const QFontMetrics* self, struct seaqt_string param1);
int QFontMetrics_horizontalAdvance_QString_QTextOption(const QFontMetrics* self, struct seaqt_string param1, QTextOption* textOption);
int QFontMetrics_horizontalAdvance_QChar(const QFontMetrics* self, QChar* param1);
QRect* QFontMetrics_boundingRect_QChar(const QFontMetrics* self, QChar* param1);
QRect* QFontMetrics_boundingRect_QString(const QFontMetrics* self, struct seaqt_string text);
QRect* QFontMetrics_boundingRect_QString_QTextOption(const QFontMetrics* self, struct seaqt_string text, QTextOption* textOption);
QRect* QFontMetrics_boundingRect_QRect_int_QString(const QFontMetrics* self, QRect* r, int flags, struct seaqt_string text);
QRect* QFontMetrics_boundingRect_int_int_int_int_int_QString(const QFontMetrics* self, int x, int y, int w, int h, int flags, struct seaqt_string text);
QSize* QFontMetrics_size_flags_str(const QFontMetrics* self, int flags, struct seaqt_string str);
QRect* QFontMetrics_tightBoundingRect_text(const QFontMetrics* self, struct seaqt_string text);
QRect* QFontMetrics_tightBoundingRect_text_textOption(const QFontMetrics* self, struct seaqt_string text, QTextOption* textOption);
struct seaqt_string QFontMetrics_elidedText_text_mode_width(const QFontMetrics* self, struct seaqt_string text, int mode, int width);
int QFontMetrics_underlinePos(const QFontMetrics* self);
int QFontMetrics_overlinePos(const QFontMetrics* self);
int QFontMetrics_strikeOutPos(const QFontMetrics* self);
int QFontMetrics_lineWidth(const QFontMetrics* self);
double QFontMetrics_fontDpi(const QFontMetrics* self);
bool QFontMetrics_operatorEqual(const QFontMetrics* self, QFontMetrics* other);
bool QFontMetrics_operatorNotEqual(const QFontMetrics* self, QFontMetrics* other);
int QFontMetrics_horizontalAdvance_QString_int(const QFontMetrics* self, struct seaqt_string param1, int len);
QRect* QFontMetrics_boundingRect_QRect_int_QString_int(const QFontMetrics* self, QRect* r, int flags, struct seaqt_string text, int tabstops);
QRect* QFontMetrics_boundingRect_QRect_int_QString_int_int(const QFontMetrics* self, QRect* r, int flags, struct seaqt_string text, int tabstops, int* tabarray);
QRect* QFontMetrics_boundingRect_int_int_int_int_int_QString_int(const QFontMetrics* self, int x, int y, int w, int h, int flags, struct seaqt_string text, int tabstops);
QRect* QFontMetrics_boundingRect_int_int_int_int_int_QString_int_int(const QFontMetrics* self, int x, int y, int w, int h, int flags, struct seaqt_string text, int tabstops, int* tabarray);
QSize* QFontMetrics_size_flags_str_tabstops(const QFontMetrics* self, int flags, struct seaqt_string str, int tabstops);
QSize* QFontMetrics_size_flags_str_tabstops_tabarray(const QFontMetrics* self, int flags, struct seaqt_string str, int tabstops, int* tabarray);
struct seaqt_string QFontMetrics_elidedText_text_mode_width_flags(const QFontMetrics* self, struct seaqt_string text, int mode, int width, int flags);

void QFontMetrics_delete(QFontMetrics* self);

QFontMetricsF* QFontMetricsF_new_QFont(QFont* font);
QFontMetricsF* QFontMetricsF_new_QFont_QPaintDevice(QFont* font, QPaintDevice* pd);
QFontMetricsF* QFontMetricsF_new_QFontMetrics(QFontMetrics* param1);
QFontMetricsF* QFontMetricsF_new_QFontMetricsF(QFontMetricsF* from);

void QFontMetricsF_operatorAssign_QFontMetricsF(QFontMetricsF* self, QFontMetricsF* from);
void QFontMetricsF_operatorAssign_QFontMetrics(QFontMetricsF* self, QFontMetrics* param1);
void QFontMetricsF_swap(QFontMetricsF* self, QFontMetricsF* other);
double QFontMetricsF_ascent(const QFontMetricsF* self);
double QFontMetricsF_capHeight(const QFontMetricsF* self);
double QFontMetricsF_descent(const QFontMetricsF* self);
double QFontMetricsF_height(const QFontMetricsF* self);
double QFontMetricsF_leading(const QFontMetricsF* self);
double QFontMetricsF_lineSpacing(const QFontMetricsF* self);
double QFontMetricsF_minLeftBearing(const QFontMetricsF* self);
double QFontMetricsF_minRightBearing(const QFontMetricsF* self);
double QFontMetricsF_maxWidth(const QFontMetricsF* self);
double QFontMetricsF_xHeight(const QFontMetricsF* self);
double QFontMetricsF_averageCharWidth(const QFontMetricsF* self);
bool QFontMetricsF_inFont(const QFontMetricsF* self, QChar* param1);
bool QFontMetricsF_inFontUcs4(const QFontMetricsF* self, unsigned int ucs4);
double QFontMetricsF_leftBearing(const QFontMetricsF* self, QChar* param1);
double QFontMetricsF_rightBearing(const QFontMetricsF* self, QChar* param1);
double QFontMetricsF_horizontalAdvance_QString(const QFontMetricsF* self, struct seaqt_string string);
double QFontMetricsF_horizontalAdvance_QChar(const QFontMetricsF* self, QChar* param1);
double QFontMetricsF_horizontalAdvance_QString_QTextOption(const QFontMetricsF* self, struct seaqt_string string, QTextOption* textOption);
QRectF* QFontMetricsF_boundingRect_QString(const QFontMetricsF* self, struct seaqt_string string);
QRectF* QFontMetricsF_boundingRect_QString_QTextOption(const QFontMetricsF* self, struct seaqt_string text, QTextOption* textOption);
QRectF* QFontMetricsF_boundingRect_QChar(const QFontMetricsF* self, QChar* param1);
QRectF* QFontMetricsF_boundingRect_QRectF_int_QString(const QFontMetricsF* self, QRectF* r, int flags, struct seaqt_string string);
QSizeF* QFontMetricsF_size_flags_str(const QFontMetricsF* self, int flags, struct seaqt_string str);
QRectF* QFontMetricsF_tightBoundingRect_text(const QFontMetricsF* self, struct seaqt_string text);
QRectF* QFontMetricsF_tightBoundingRect_text_textOption(const QFontMetricsF* self, struct seaqt_string text, QTextOption* textOption);
struct seaqt_string QFontMetricsF_elidedText_text_mode_width(const QFontMetricsF* self, struct seaqt_string text, int mode, double width);
double QFontMetricsF_underlinePos(const QFontMetricsF* self);
double QFontMetricsF_overlinePos(const QFontMetricsF* self);
double QFontMetricsF_strikeOutPos(const QFontMetricsF* self);
double QFontMetricsF_lineWidth(const QFontMetricsF* self);
double QFontMetricsF_fontDpi(const QFontMetricsF* self);
bool QFontMetricsF_operatorEqual(const QFontMetricsF* self, QFontMetricsF* other);
bool QFontMetricsF_operatorNotEqual(const QFontMetricsF* self, QFontMetricsF* other);
double QFontMetricsF_horizontalAdvance_QString_int(const QFontMetricsF* self, struct seaqt_string string, int length);
QRectF* QFontMetricsF_boundingRect_QRectF_int_QString_int(const QFontMetricsF* self, QRectF* r, int flags, struct seaqt_string string, int tabstops);
QRectF* QFontMetricsF_boundingRect_QRectF_int_QString_int_int(const QFontMetricsF* self, QRectF* r, int flags, struct seaqt_string string, int tabstops, int* tabarray);
QSizeF* QFontMetricsF_size_flags_str_tabstops(const QFontMetricsF* self, int flags, struct seaqt_string str, int tabstops);
QSizeF* QFontMetricsF_size_flags_str_tabstops_tabarray(const QFontMetricsF* self, int flags, struct seaqt_string str, int tabstops, int* tabarray);
struct seaqt_string QFontMetricsF_elidedText_text_mode_width_flags(const QFontMetricsF* self, struct seaqt_string text, int mode, double width, int flags);

void QFontMetricsF_delete(QFontMetricsF* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
