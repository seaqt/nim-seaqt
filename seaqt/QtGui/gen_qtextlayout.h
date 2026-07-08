#pragma once
#ifndef SEAQT_QTGUI_GEN_QTEXTLAYOUT_H
#define SEAQT_QTGUI_GEN_QTEXTLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFont;
class QGlyphRun;
class QPaintDevice;
class QPainter;
class QPointF;
class QRawFont;
class QRectF;
class QTextBlock;
class QTextCharFormat;
class QTextFormat;
class QTextInlineObject;
class QTextLayout;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextLayout__FormatRange)
typedef QTextLayout::FormatRange QTextLayout__FormatRange;
#else
class QTextLayout__FormatRange;
#endif
class QTextLine;
class QTextOption;
#else
typedef struct QFont QFont;
typedef struct QGlyphRun QGlyphRun;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPainter QPainter;
typedef struct QPointF QPointF;
typedef struct QRawFont QRawFont;
typedef struct QRectF QRectF;
typedef struct QTextBlock QTextBlock;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextFormat QTextFormat;
typedef struct QTextInlineObject QTextInlineObject;
typedef struct QTextLayout QTextLayout;
typedef struct QTextLayout__FormatRange QTextLayout__FormatRange;
typedef struct QTextLine QTextLine;
typedef struct QTextOption QTextOption;
#endif

QTextInlineObject* QTextInlineObject_new();

bool QTextInlineObject_isValid(const QTextInlineObject* self);
QRectF* QTextInlineObject_rect(const QTextInlineObject* self);
double QTextInlineObject_width(const QTextInlineObject* self);
double QTextInlineObject_ascent(const QTextInlineObject* self);
double QTextInlineObject_descent(const QTextInlineObject* self);
double QTextInlineObject_height(const QTextInlineObject* self);
int QTextInlineObject_textDirection(const QTextInlineObject* self);
void QTextInlineObject_setWidth(QTextInlineObject* self, double w);
void QTextInlineObject_setAscent(QTextInlineObject* self, double a);
void QTextInlineObject_setDescent(QTextInlineObject* self, double d);
int QTextInlineObject_textPosition(const QTextInlineObject* self);
int QTextInlineObject_formatIndex(const QTextInlineObject* self);
QTextFormat* QTextInlineObject_format(const QTextInlineObject* self);

void QTextInlineObject_delete(QTextInlineObject* self);

QTextLayout* QTextLayout_new();
QTextLayout* QTextLayout_new_text(struct seaqt_string text);
QTextLayout* QTextLayout_new_text_font(struct seaqt_string text, QFont* font);
QTextLayout* QTextLayout_new_b(QTextBlock* b);
QTextLayout* QTextLayout_new_text_font_paintdevice(struct seaqt_string text, QFont* font, QPaintDevice* paintdevice);

void QTextLayout_setFont(QTextLayout* self, QFont* f);
QFont* QTextLayout_font(const QTextLayout* self);
void QTextLayout_setRawFont(QTextLayout* self, QRawFont* rawFont);
void QTextLayout_setText(QTextLayout* self, struct seaqt_string string);
struct seaqt_string QTextLayout_text(const QTextLayout* self);
void QTextLayout_setTextOption(QTextLayout* self, QTextOption* option);
QTextOption* QTextLayout_textOption(const QTextLayout* self);
void QTextLayout_setPreeditArea(QTextLayout* self, int position, struct seaqt_string text);
int QTextLayout_preeditAreaPosition(const QTextLayout* self);
struct seaqt_string QTextLayout_preeditAreaText(const QTextLayout* self);
void QTextLayout_setFormats(QTextLayout* self, struct seaqt_array /* of QTextLayout__FormatRange* */  overrides);
struct seaqt_array /* of QTextLayout__FormatRange* */  QTextLayout_formats(const QTextLayout* self);
void QTextLayout_clearFormats(QTextLayout* self);
void QTextLayout_setCacheEnabled(QTextLayout* self, bool enable);
bool QTextLayout_cacheEnabled(const QTextLayout* self);
void QTextLayout_setCursorMoveStyle(QTextLayout* self, int style);
int QTextLayout_cursorMoveStyle(const QTextLayout* self);
void QTextLayout_beginLayout(QTextLayout* self);
void QTextLayout_endLayout(QTextLayout* self);
void QTextLayout_clearLayout(QTextLayout* self);
QTextLine* QTextLayout_createLine(QTextLayout* self);
int QTextLayout_lineCount(const QTextLayout* self);
QTextLine* QTextLayout_lineAt(const QTextLayout* self, int i);
QTextLine* QTextLayout_lineForTextPosition(const QTextLayout* self, int pos);
bool QTextLayout_isValidCursorPosition(const QTextLayout* self, int pos);
int QTextLayout_nextCursorPosition_oldPos(const QTextLayout* self, int oldPos);
int QTextLayout_previousCursorPosition_oldPos(const QTextLayout* self, int oldPos);
int QTextLayout_leftCursorPosition(const QTextLayout* self, int oldPos);
int QTextLayout_rightCursorPosition(const QTextLayout* self, int oldPos);
void QTextLayout_draw_p_pos(const QTextLayout* self, QPainter* p, QPointF* pos);
void QTextLayout_drawCursor_p_pos_cursorPosition(const QTextLayout* self, QPainter* p, QPointF* pos, int cursorPosition);
void QTextLayout_drawCursor_p_pos_cursorPosition_width(const QTextLayout* self, QPainter* p, QPointF* pos, int cursorPosition, int width);
QPointF* QTextLayout_position(const QTextLayout* self);
void QTextLayout_setPosition(QTextLayout* self, QPointF* p);
QRectF* QTextLayout_boundingRect(const QTextLayout* self);
double QTextLayout_minimumWidth(const QTextLayout* self);
double QTextLayout_maximumWidth(const QTextLayout* self);
struct seaqt_array /* of QGlyphRun* */  QTextLayout_glyphRuns(const QTextLayout* self);
void QTextLayout_setFlags(QTextLayout* self, int flags);
int QTextLayout_nextCursorPosition_oldPos_mode(const QTextLayout* self, int oldPos, int mode);
int QTextLayout_previousCursorPosition_oldPos_mode(const QTextLayout* self, int oldPos, int mode);
void QTextLayout_draw_p_pos_selections(const QTextLayout* self, QPainter* p, QPointF* pos, struct seaqt_array /* of QTextLayout__FormatRange* */  selections);
void QTextLayout_draw_p_pos_selections_clip(const QTextLayout* self, QPainter* p, QPointF* pos, struct seaqt_array /* of QTextLayout__FormatRange* */  selections, QRectF* clip);
struct seaqt_array /* of QGlyphRun* */  QTextLayout_glyphRuns_from(const QTextLayout* self, int from);
struct seaqt_array /* of QGlyphRun* */  QTextLayout_glyphRuns_from_length(const QTextLayout* self, int from, int length);

void QTextLayout_delete(QTextLayout* self);

QTextLine* QTextLine_new();

bool QTextLine_isValid(const QTextLine* self);
QRectF* QTextLine_rect(const QTextLine* self);
double QTextLine_x(const QTextLine* self);
double QTextLine_y(const QTextLine* self);
double QTextLine_width(const QTextLine* self);
double QTextLine_ascent(const QTextLine* self);
double QTextLine_descent(const QTextLine* self);
double QTextLine_height(const QTextLine* self);
double QTextLine_leading(const QTextLine* self);
void QTextLine_setLeadingIncluded(QTextLine* self, bool included);
bool QTextLine_leadingIncluded(const QTextLine* self);
double QTextLine_naturalTextWidth(const QTextLine* self);
double QTextLine_horizontalAdvance(const QTextLine* self);
QRectF* QTextLine_naturalTextRect(const QTextLine* self);
double QTextLine_cursorToX_const_pint(const QTextLine* self, int* cursorPos);
double QTextLine_cursorToX_const_int(const QTextLine* self, int cursorPos);
int QTextLine_xToCursor_qreal(const QTextLine* self, double x);
void QTextLine_setLineWidth(QTextLine* self, double width);
void QTextLine_setNumColumns_columns(QTextLine* self, int columns);
void QTextLine_setNumColumns_columns_alignmentWidth(QTextLine* self, int columns, double alignmentWidth);
void QTextLine_setPosition(QTextLine* self, QPointF* pos);
QPointF* QTextLine_position(const QTextLine* self);
int QTextLine_textStart(const QTextLine* self);
int QTextLine_textLength(const QTextLine* self);
int QTextLine_lineNumber(const QTextLine* self);
void QTextLine_draw(const QTextLine* self, QPainter* painter, QPointF* position);
struct seaqt_array /* of QGlyphRun* */  QTextLine_glyphRuns(const QTextLine* self);
double QTextLine_cursorToX_const_pint_QTextLine_Edge(const QTextLine* self, int* cursorPos, int edge);
double QTextLine_cursorToX_const_int_QTextLine_Edge(const QTextLine* self, int cursorPos, int edge);
int QTextLine_xToCursor_qreal_QTextLine_CursorPosition(const QTextLine* self, double x, int param2);
struct seaqt_array /* of QGlyphRun* */  QTextLine_glyphRuns_from(const QTextLine* self, int from);
struct seaqt_array /* of QGlyphRun* */  QTextLine_glyphRuns_from_length(const QTextLine* self, int from, int length);

void QTextLine_delete(QTextLine* self);

QTextLayout__FormatRange* QTextLayout__FormatRange_new(QTextLayout__FormatRange* from);

int QTextLayout__FormatRange_start(const QTextLayout__FormatRange* self);
void QTextLayout__FormatRange_setStart(QTextLayout__FormatRange* self, int start);
int QTextLayout__FormatRange_length(const QTextLayout__FormatRange* self);
void QTextLayout__FormatRange_setLength(QTextLayout__FormatRange* self, int length);
QTextCharFormat* QTextLayout__FormatRange_format(const QTextLayout__FormatRange* self);
void QTextLayout__FormatRange_setFormat(QTextLayout__FormatRange* self, QTextCharFormat* format);
void QTextLayout__FormatRange_operatorAssign(QTextLayout__FormatRange* self, QTextLayout__FormatRange* from);

void QTextLayout__FormatRange_delete(QTextLayout__FormatRange* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
