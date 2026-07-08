#pragma once
#ifndef SEAQT_QTGUI_GEN_QFONT_H
#define SEAQT_QTGUI_GEN_QFONT_H

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
class QMetaObject;
class QPaintDevice;
class QVariant;
#else
typedef struct QFont QFont;
typedef struct QMetaObject QMetaObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QVariant QVariant;
#endif

QFont* QFont_new();
QFont* QFont_new_family(struct seaqt_string family);
QFont* QFont_new_families(struct seaqt_array /* of struct seaqt_string */  families);
QFont* QFont_new_font_pd(QFont* font, QPaintDevice* pd);
QFont* QFont_new_from(QFont* from);
QFont* QFont_new_family_pointSize(struct seaqt_string family, int pointSize);
QFont* QFont_new_family_pointSize_weight(struct seaqt_string family, int pointSize, int weight);
QFont* QFont_new_family_pointSize_weight_italic(struct seaqt_string family, int pointSize, int weight, bool italic);
QFont* QFont_new_families_pointSize(struct seaqt_array /* of struct seaqt_string */  families, int pointSize);
QFont* QFont_new_families_pointSize_weight(struct seaqt_array /* of struct seaqt_string */  families, int pointSize, int weight);
QFont* QFont_new_families_pointSize_weight_italic(struct seaqt_array /* of struct seaqt_string */  families, int pointSize, int weight, bool italic);

void QFont_swap(QFont* self, QFont* other);
struct seaqt_string QFont_family(const QFont* self);
void QFont_setFamily(QFont* self, struct seaqt_string family);
struct seaqt_array /* of struct seaqt_string */  QFont_families(const QFont* self);
void QFont_setFamilies(QFont* self, struct seaqt_array /* of struct seaqt_string */  families);
struct seaqt_string QFont_styleName(const QFont* self);
void QFont_setStyleName(QFont* self, struct seaqt_string styleName);
int QFont_pointSize(const QFont* self);
void QFont_setPointSize(QFont* self, int pointSize);
double QFont_pointSizeF(const QFont* self);
void QFont_setPointSizeF(QFont* self, double pointSizeF);
int QFont_pixelSize(const QFont* self);
void QFont_setPixelSize(QFont* self, int pixelSize);
int QFont_weight(const QFont* self);
void QFont_setWeight(QFont* self, int weight);
bool QFont_bold(const QFont* self);
void QFont_setBold(QFont* self, bool bold);
void QFont_setStyle(QFont* self, int style);
int QFont_style(const QFont* self);
bool QFont_italic(const QFont* self);
void QFont_setItalic(QFont* self, bool b);
bool QFont_underline(const QFont* self);
void QFont_setUnderline(QFont* self, bool underline);
bool QFont_overline(const QFont* self);
void QFont_setOverline(QFont* self, bool overline);
bool QFont_strikeOut(const QFont* self);
void QFont_setStrikeOut(QFont* self, bool strikeOut);
bool QFont_fixedPitch(const QFont* self);
void QFont_setFixedPitch(QFont* self, bool fixedPitch);
bool QFont_kerning(const QFont* self);
void QFont_setKerning(QFont* self, bool kerning);
int QFont_styleHint(const QFont* self);
int QFont_styleStrategy(const QFont* self);
void QFont_setStyleHint_QFont_StyleHint(QFont* self, int param1);
void QFont_setStyleStrategy(QFont* self, int s);
int QFont_stretch(const QFont* self);
void QFont_setStretch(QFont* self, int stretch);
double QFont_letterSpacing(const QFont* self);
int QFont_letterSpacingType(const QFont* self);
void QFont_setLetterSpacing(QFont* self, int type, double spacing);
double QFont_wordSpacing(const QFont* self);
void QFont_setWordSpacing(QFont* self, double spacing);
void QFont_setCapitalization(QFont* self, int capitalization);
int QFont_capitalization(const QFont* self);
void QFont_setHintingPreference(QFont* self, int hintingPreference);
int QFont_hintingPreference(const QFont* self);
bool QFont_exactMatch(const QFont* self);
void QFont_operatorAssign(QFont* self, QFont* from);
bool QFont_operatorEqual(const QFont* self, QFont* param1);
bool QFont_operatorNotEqual(const QFont* self, QFont* param1);
bool QFont_operatorLesser(const QFont* self, QFont* param1);
QVariant* QFont_ToQVariant(const QFont* self);
bool QFont_isCopyOf(const QFont* self, QFont* param1);
struct seaqt_string QFont_key(const QFont* self);
struct seaqt_string QFont_toString(const QFont* self);
bool QFont_fromString(QFont* self, struct seaqt_string param1);
struct seaqt_string QFont_substitute(struct seaqt_string param1);
struct seaqt_array /* of struct seaqt_string */  QFont_substitutes(struct seaqt_string param1);
struct seaqt_array /* of struct seaqt_string */  QFont_substitutions();
void QFont_insertSubstitution(struct seaqt_string param1, struct seaqt_string param2);
void QFont_insertSubstitutions(struct seaqt_string param1, struct seaqt_array /* of struct seaqt_string */  param2);
void QFont_removeSubstitutions(struct seaqt_string param1);
void QFont_initialize();
void QFont_cleanup();
void QFont_cacheStatistics();
struct seaqt_string QFont_defaultFamily(const QFont* self);
QFont* QFont_resolve(const QFont* self, QFont* param1);
unsigned int QFont_resolveMask(const QFont* self);
void QFont_setResolveMask(QFont* self, unsigned int mask);
void QFont_setLegacyWeight(QFont* self, int legacyWeight);
int QFont_legacyWeight(const QFont* self);
void QFont_setStyleHint_QFont_StyleHint_QFont_StyleStrategy(QFont* self, int param1, int param2);

void QFont_delete(QFont* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
