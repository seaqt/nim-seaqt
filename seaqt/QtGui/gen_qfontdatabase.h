#pragma once
#ifndef SEAQT_QTGUI_GEN_QFONTDATABASE_H
#define SEAQT_QTGUI_GEN_QFONTDATABASE_H

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
class QFontDatabase;
class QFontInfo;
class QMetaObject;
#else
typedef struct QFont QFont;
typedef struct QFontDatabase QFontDatabase;
typedef struct QFontInfo QFontInfo;
typedef struct QMetaObject QMetaObject;
#endif

QFontDatabase* QFontDatabase_new();

struct seaqt_array /* of int */  QFontDatabase_standardSizes();
struct seaqt_array /* of int */  QFontDatabase_writingSystems();
struct seaqt_array /* of int */  QFontDatabase_writingSystemsWithFamily(struct seaqt_string family);
struct seaqt_array /* of struct seaqt_string */  QFontDatabase_families();
struct seaqt_array /* of struct seaqt_string */  QFontDatabase_styles(struct seaqt_string family);
struct seaqt_array /* of int */  QFontDatabase_pointSizes(struct seaqt_string family);
struct seaqt_array /* of int */  QFontDatabase_smoothSizes(struct seaqt_string family, struct seaqt_string style);
struct seaqt_string QFontDatabase_styleString(QFont* font);
struct seaqt_string QFontDatabase_styleStringWithFontInfo(QFontInfo* fontInfo);
QFont* QFontDatabase_font(struct seaqt_string family, struct seaqt_string style, int pointSize);
bool QFontDatabase_isBitmapScalable(struct seaqt_string family);
bool QFontDatabase_isSmoothlyScalable(struct seaqt_string family);
bool QFontDatabase_isScalable(struct seaqt_string family);
bool QFontDatabase_isFixedPitch(struct seaqt_string family);
bool QFontDatabase_italic(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_bold(struct seaqt_string family, struct seaqt_string style);
int QFontDatabase_weight(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_hasFamily(struct seaqt_string family);
bool QFontDatabase_isPrivateFamily(struct seaqt_string family);
struct seaqt_string QFontDatabase_writingSystemName(int writingSystem);
struct seaqt_string QFontDatabase_writingSystemSample(int writingSystem);
int QFontDatabase_addApplicationFont(struct seaqt_string fileName);
int QFontDatabase_addApplicationFontFromData(struct seaqt_string fontData);
struct seaqt_array /* of struct seaqt_string */  QFontDatabase_applicationFontFamilies(int id);
bool QFontDatabase_removeApplicationFont(int id);
bool QFontDatabase_removeAllApplicationFonts();
QFont* QFontDatabase_systemFont(int type);
struct seaqt_array /* of struct seaqt_string */  QFontDatabase_familiesWithWritingSystem(int writingSystem);
struct seaqt_array /* of int */  QFontDatabase_pointSizes2(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_isBitmapScalable2(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_isSmoothlyScalable2(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_isScalable2(struct seaqt_string family, struct seaqt_string style);
bool QFontDatabase_isFixedPitch2(struct seaqt_string family, struct seaqt_string style);

const QMetaObject* QFontDatabase_staticMetaObject();
void QFontDatabase_delete(QFontDatabase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
