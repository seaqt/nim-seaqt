#pragma once
#ifndef SEAQT_QTGUI_GEN_QICON_H
#define SEAQT_QTGUI_GEN_QICON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QIcon;
class QIconEngine;
class QMetaObject;
class QPainter;
class QPixmap;
class QRect;
class QSize;
class QVariant;
class QWindow;
#else
typedef struct QIcon QIcon;
typedef struct QIconEngine QIconEngine;
typedef struct QMetaObject QMetaObject;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
typedef struct QWindow QWindow;
#endif

QIcon* QIcon_new();
QIcon* QIcon_new_pixmap(QPixmap* pixmap);
QIcon* QIcon_new_from(QIcon* from);
QIcon* QIcon_new_fileName(struct seaqt_string fileName);
QIcon* QIcon_new_engine(QIconEngine* engine);

void QIcon_operatorAssign(QIcon* self, QIcon* from);
void QIcon_swap(QIcon* self, QIcon* other);
QVariant* QIcon_ToQVariant(const QIcon* self);
QPixmap* QIcon_pixmap_size(const QIcon* self, QSize* size);
QPixmap* QIcon_pixmap_w_h(const QIcon* self, int w, int h);
QPixmap* QIcon_pixmap_extent(const QIcon* self, int extent);
QPixmap* QIcon_pixmap_size_devicePixelRatio(const QIcon* self, QSize* size, double devicePixelRatio);
QPixmap* QIcon_pixmap_window_size(const QIcon* self, QWindow* window, QSize* size);
QSize* QIcon_actualSize_size(const QIcon* self, QSize* size);
QSize* QIcon_actualSize_window_size(const QIcon* self, QWindow* window, QSize* size);
struct seaqt_string QIcon_name(const QIcon* self);
void QIcon_paint_painter_rect(const QIcon* self, QPainter* painter, QRect* rect);
void QIcon_paint_painter_x_y_w_h(const QIcon* self, QPainter* painter, int x, int y, int w, int h);
bool QIcon_isNull(const QIcon* self);
bool QIcon_isDetached(const QIcon* self);
void QIcon_detach(QIcon* self);
long long QIcon_cacheKey(const QIcon* self);
void QIcon_addPixmap_pixmap(QIcon* self, QPixmap* pixmap);
void QIcon_addFile_fileName(QIcon* self, struct seaqt_string fileName);
struct seaqt_array /* of QSize* */  QIcon_availableSizes(const QIcon* self);
void QIcon_setIsMask(QIcon* self, bool isMask);
bool QIcon_isMask(const QIcon* self);
QIcon* QIcon_fromTheme_name(struct seaqt_string name);
QIcon* QIcon_fromTheme_name_fallback(struct seaqt_string name, QIcon* fallback);
bool QIcon_hasThemeIcon_name(struct seaqt_string name);
QIcon* QIcon_fromTheme_icon(int icon);
QIcon* QIcon_fromTheme_icon_fallback(int icon, QIcon* fallback);
bool QIcon_hasThemeIcon_icon(int icon);
struct seaqt_array /* of struct seaqt_string */  QIcon_themeSearchPaths();
void QIcon_setThemeSearchPaths(struct seaqt_array /* of struct seaqt_string */  searchpath);
struct seaqt_array /* of struct seaqt_string */  QIcon_fallbackSearchPaths();
void QIcon_setFallbackSearchPaths(struct seaqt_array /* of struct seaqt_string */  paths);
struct seaqt_string QIcon_themeName();
void QIcon_setThemeName(struct seaqt_string path);
struct seaqt_string QIcon_fallbackThemeName();
void QIcon_setFallbackThemeName(struct seaqt_string name);
QPixmap* QIcon_pixmap_size_mode(const QIcon* self, QSize* size, int mode);
QPixmap* QIcon_pixmap_size_mode_state(const QIcon* self, QSize* size, int mode, int state);
QPixmap* QIcon_pixmap_w_h_mode(const QIcon* self, int w, int h, int mode);
QPixmap* QIcon_pixmap_w_h_mode_state(const QIcon* self, int w, int h, int mode, int state);
QPixmap* QIcon_pixmap_extent_mode(const QIcon* self, int extent, int mode);
QPixmap* QIcon_pixmap_extent_mode_state(const QIcon* self, int extent, int mode, int state);
QPixmap* QIcon_pixmap_size_devicePixelRatio_mode(const QIcon* self, QSize* size, double devicePixelRatio, int mode);
QPixmap* QIcon_pixmap_size_devicePixelRatio_mode_state(const QIcon* self, QSize* size, double devicePixelRatio, int mode, int state);
QPixmap* QIcon_pixmap_window_size_mode(const QIcon* self, QWindow* window, QSize* size, int mode);
QPixmap* QIcon_pixmap_window_size_mode_state(const QIcon* self, QWindow* window, QSize* size, int mode, int state);
QSize* QIcon_actualSize_size_mode(const QIcon* self, QSize* size, int mode);
QSize* QIcon_actualSize_size_mode_state(const QIcon* self, QSize* size, int mode, int state);
QSize* QIcon_actualSize_window_size_mode(const QIcon* self, QWindow* window, QSize* size, int mode);
QSize* QIcon_actualSize_window_size_mode_state(const QIcon* self, QWindow* window, QSize* size, int mode, int state);
void QIcon_paint_painter_rect_alignment(const QIcon* self, QPainter* painter, QRect* rect, int alignment);
void QIcon_paint_painter_rect_alignment_mode(const QIcon* self, QPainter* painter, QRect* rect, int alignment, int mode);
void QIcon_paint_painter_rect_alignment_mode_state(const QIcon* self, QPainter* painter, QRect* rect, int alignment, int mode, int state);
void QIcon_paint_painter_x_y_w_h_alignment(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment);
void QIcon_paint_painter_x_y_w_h_alignment_mode(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode);
void QIcon_paint_painter_x_y_w_h_alignment_mode_state(const QIcon* self, QPainter* painter, int x, int y, int w, int h, int alignment, int mode, int state);
void QIcon_addPixmap_pixmap_mode(QIcon* self, QPixmap* pixmap, int mode);
void QIcon_addPixmap_pixmap_mode_state(QIcon* self, QPixmap* pixmap, int mode, int state);
void QIcon_addFile_fileName_size(QIcon* self, struct seaqt_string fileName, QSize* size);
void QIcon_addFile_fileName_size_mode(QIcon* self, struct seaqt_string fileName, QSize* size, int mode);
void QIcon_addFile_fileName_size_mode_state(QIcon* self, struct seaqt_string fileName, QSize* size, int mode, int state);
struct seaqt_array /* of QSize* */  QIcon_availableSizes_mode(const QIcon* self, int mode);
struct seaqt_array /* of QSize* */  QIcon_availableSizes_mode_state(const QIcon* self, int mode, int state);

const QMetaObject* QIcon_staticMetaObject();
void QIcon_delete(QIcon* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
