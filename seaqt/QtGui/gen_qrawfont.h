#pragma once
#ifndef SEAQT_QTGUI_GEN_QRAWFONT_H
#define SEAQT_QTGUI_GEN_QRAWFONT_H

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
class QImage;
class QPainterPath;
class QPointF;
class QRawFont;
class QRectF;
class QTransform;
#else
typedef struct QChar QChar;
typedef struct QFont QFont;
typedef struct QImage QImage;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRawFont QRawFont;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
#endif

QRawFont* QRawFont_new();
QRawFont* QRawFont_new_fileName_pixelSize(struct seaqt_string fileName, double pixelSize);
QRawFont* QRawFont_new_fontData_pixelSize(struct seaqt_string fontData, double pixelSize);
QRawFont* QRawFont_new_from(QRawFont* from);
QRawFont* QRawFont_new_fileName_pixelSize_hintingPreference(struct seaqt_string fileName, double pixelSize, int hintingPreference);
QRawFont* QRawFont_new_fontData_pixelSize_hintingPreference(struct seaqt_string fontData, double pixelSize, int hintingPreference);

void QRawFont_operatorAssign(QRawFont* self, QRawFont* from);
void QRawFont_swap(QRawFont* self, QRawFont* other);
bool QRawFont_isValid(const QRawFont* self);
bool QRawFont_operatorEqual(const QRawFont* self, QRawFont* other);
bool QRawFont_operatorNotEqual(const QRawFont* self, QRawFont* other);
struct seaqt_string QRawFont_familyName(const QRawFont* self);
struct seaqt_string QRawFont_styleName(const QRawFont* self);
int QRawFont_style(const QRawFont* self);
int QRawFont_weight(const QRawFont* self);
struct seaqt_array /* of unsigned int */  QRawFont_glyphIndexesForString(const QRawFont* self, struct seaqt_string text);
struct seaqt_array /* of QPointF* */  QRawFont_advancesForGlyphIndexes_glyphIndexes(const QRawFont* self, struct seaqt_array /* of unsigned int */  glyphIndexes);
struct seaqt_array /* of QPointF* */  QRawFont_advancesForGlyphIndexes_glyphIndexes_layoutFlags(const QRawFont* self, struct seaqt_array /* of unsigned int */  glyphIndexes, int layoutFlags);
bool QRawFont_glyphIndexesForChars(const QRawFont* self, QChar* chars, int numChars, unsigned int* glyphIndexes, int* numGlyphs);
bool QRawFont_advancesForGlyphIndexes_glyphIndexes_advances_numGlyphs(const QRawFont* self, const unsigned int* glyphIndexes, QPointF* advances, int numGlyphs);
bool QRawFont_advancesForGlyphIndexes_glyphIndexes_advances_numGlyphs_layoutFlags(const QRawFont* self, const unsigned int* glyphIndexes, QPointF* advances, int numGlyphs, int layoutFlags);
QImage* QRawFont_alphaMapForGlyph_glyphIndex(const QRawFont* self, unsigned int glyphIndex);
QPainterPath* QRawFont_pathForGlyph(const QRawFont* self, unsigned int glyphIndex);
QRectF* QRawFont_boundingRect(const QRawFont* self, unsigned int glyphIndex);
void QRawFont_setPixelSize(QRawFont* self, double pixelSize);
double QRawFont_pixelSize(const QRawFont* self);
int QRawFont_hintingPreference(const QRawFont* self);
double QRawFont_ascent(const QRawFont* self);
double QRawFont_capHeight(const QRawFont* self);
double QRawFont_descent(const QRawFont* self);
double QRawFont_leading(const QRawFont* self);
double QRawFont_xHeight(const QRawFont* self);
double QRawFont_averageCharWidth(const QRawFont* self);
double QRawFont_maxCharWidth(const QRawFont* self);
double QRawFont_lineThickness(const QRawFont* self);
double QRawFont_underlinePosition(const QRawFont* self);
double QRawFont_unitsPerEm(const QRawFont* self);
void QRawFont_loadFromFile(QRawFont* self, struct seaqt_string fileName, double pixelSize, int hintingPreference);
void QRawFont_loadFromData(QRawFont* self, struct seaqt_string fontData, double pixelSize, int hintingPreference);
bool QRawFont_supportsCharacter_ucs4(const QRawFont* self, unsigned int ucs4);
bool QRawFont_supportsCharacter_character(const QRawFont* self, QChar* character);
struct seaqt_array /* of int */  QRawFont_supportedWritingSystems(const QRawFont* self);
struct seaqt_string QRawFont_fontTable(const QRawFont* self, const char* tagName);
QRawFont* QRawFont_fromFont_font(QFont* font);
QImage* QRawFont_alphaMapForGlyph_glyphIndex_antialiasingType(const QRawFont* self, unsigned int glyphIndex, int antialiasingType);
QImage* QRawFont_alphaMapForGlyph_glyphIndex_antialiasingType_transform(const QRawFont* self, unsigned int glyphIndex, int antialiasingType, QTransform* transform);
QRawFont* QRawFont_fromFont_font_writingSystem(QFont* font, int writingSystem);

void QRawFont_delete(QRawFont* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
