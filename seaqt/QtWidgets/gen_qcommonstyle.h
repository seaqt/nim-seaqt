#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QCOMMONSTYLE_H
#define SEAQT_QTWIDGETS_GEN_QCOMMONSTYLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QApplication;
class QChildEvent;
class QCommonStyle;
class QEvent;
class QFontMetrics;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPalette;
class QPixmap;
class QPoint;
class QRect;
class QSize;
class QStyle;
class QStyleHintReturn;
class QStyleOption;
class QStyleOptionComplex;
class QTimerEvent;
class QWidget;
#else
typedef struct QApplication QApplication;
typedef struct QChildEvent QChildEvent;
typedef struct QCommonStyle QCommonStyle;
typedef struct QEvent QEvent;
typedef struct QFontMetrics QFontMetrics;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPalette QPalette;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QStyle QStyle;
typedef struct QStyleHintReturn QStyleHintReturn;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionComplex QStyleOptionComplex;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

struct QCommonStyle_VTable {
	void (*destructor)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self);
	QMetaObject* (*metaObject)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self);
	void* (*metacast)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, const char* param1);
	int (*metacall)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, int param1, int param2, void** param3);
	void (*drawPrimitive)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
	void (*drawControl)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
	QRect* (*subElementRect)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
	void (*drawComplexControl)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
	int (*hitTestComplexControl)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
	QRect* (*subControlRect)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
	QSize* (*sizeFromContents)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
	int (*pixelMetric)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
	int (*styleHint)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
	QIcon* (*standardIcon)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
	QPixmap* (*standardPixmap)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
	QPixmap* (*generatedIconPixmap)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
	int (*layoutSpacing)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
	void (*polish)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QPalette* param1);
	void (*polishWithApp)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QApplication* app);
	void (*polishWithWidget)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QWidget* widget);
	void (*unpolish)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QWidget* widget);
	void (*unpolishWithApplication)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QApplication* application);
	QRect* (*itemTextRect)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
	QRect* (*itemPixmapRect)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, QRect* r, int flags, QPixmap* pixmap);
	void (*drawItemText)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
	void (*drawItemPixmap)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
	QPalette* (*standardPalette)(struct QCommonStyle_VTable* vtbl, const QCommonStyle* self);
	bool (*event)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QEvent* event);
	bool (*eventFilter)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QTimerEvent* event);
	void (*childEvent)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QChildEvent* event);
	void (*customEvent)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QEvent* event);
	void (*connectNotify)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCommonStyle_VTable* vtbl, QCommonStyle* self, QMetaMethod* signal);
};
QCommonStyle* QCommonStyle_new(struct QCommonStyle_VTable* vtbl);
void QCommonStyle_virtbase(QCommonStyle* src, QStyle** outptr_QStyle);
QMetaObject* QCommonStyle_metaObject(const QCommonStyle* self);
void* QCommonStyle_metacast(QCommonStyle* self, const char* param1);
int QCommonStyle_metacall(QCommonStyle* self, int param1, int param2, void** param3);
struct miqt_string QCommonStyle_tr(const char* s);
void QCommonStyle_drawPrimitive(const QCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QCommonStyle_drawControl(const QCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QCommonStyle_subElementRect(const QCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
void QCommonStyle_drawComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
int QCommonStyle_hitTestComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
QRect* QCommonStyle_subControlRect(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
QSize* QCommonStyle_sizeFromContents(const QCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
int QCommonStyle_pixelMetric(const QCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
int QCommonStyle_styleHint(const QCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
QIcon* QCommonStyle_standardIcon(const QCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_standardPixmap(const QCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_generatedIconPixmap(const QCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
int QCommonStyle_layoutSpacing(const QCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
void QCommonStyle_polish(QCommonStyle* self, QPalette* param1);
void QCommonStyle_polishWithApp(QCommonStyle* self, QApplication* app);
void QCommonStyle_polishWithWidget(QCommonStyle* self, QWidget* widget);
void QCommonStyle_unpolish(QCommonStyle* self, QWidget* widget);
void QCommonStyle_unpolishWithApplication(QCommonStyle* self, QApplication* application);
struct miqt_string QCommonStyle_tr2(const char* s, const char* c);
struct miqt_string QCommonStyle_tr3(const char* s, const char* c, int n);
QMetaObject* QCommonStyle_virtualbase_metaObject(const void* self);
void* QCommonStyle_virtualbase_metacast(void* self, const char* param1);
int QCommonStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QCommonStyle_virtualbase_drawPrimitive(const void* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QCommonStyle_virtualbase_drawControl(const void* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QCommonStyle_virtualbase_subElementRect(const void* self, int r, QStyleOption* opt, QWidget* widget);
void QCommonStyle_virtualbase_drawComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
int QCommonStyle_virtualbase_hitTestComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
QRect* QCommonStyle_virtualbase_subControlRect(const void* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
QSize* QCommonStyle_virtualbase_sizeFromContents(const void* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
int QCommonStyle_virtualbase_pixelMetric(const void* self, int m, QStyleOption* opt, QWidget* widget);
int QCommonStyle_virtualbase_styleHint(const void* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
QIcon* QCommonStyle_virtualbase_standardIcon(const void* self, int standardIcon, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_virtualbase_standardPixmap(const void* self, int sp, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_virtualbase_generatedIconPixmap(const void* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
int QCommonStyle_virtualbase_layoutSpacing(const void* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
void QCommonStyle_virtualbase_polish(void* self, QPalette* param1);
void QCommonStyle_virtualbase_polishWithApp(void* self, QApplication* app);
void QCommonStyle_virtualbase_polishWithWidget(void* self, QWidget* widget);
void QCommonStyle_virtualbase_unpolish(void* self, QWidget* widget);
void QCommonStyle_virtualbase_unpolishWithApplication(void* self, QApplication* application);
QRect* QCommonStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QCommonStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap);
void QCommonStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QCommonStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QPalette* QCommonStyle_virtualbase_standardPalette(const void* self);
bool QCommonStyle_virtualbase_event(void* self, QEvent* event);
bool QCommonStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCommonStyle_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCommonStyle_virtualbase_childEvent(void* self, QChildEvent* event);
void QCommonStyle_virtualbase_customEvent(void* self, QEvent* event);
void QCommonStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCommonStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QCommonStyle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QCommonStyle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QCommonStyle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QCommonStyle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QCommonStyle_staticMetaObject();
void QCommonStyle_delete(QCommonStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
