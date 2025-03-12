#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QPROXYSTYLE_H
#define SEAQT_QTWIDGETS_GEN_QPROXYSTYLE_H

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
class QProxyStyle;
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
typedef struct QProxyStyle QProxyStyle;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QStyle QStyle;
typedef struct QStyleHintReturn QStyleHintReturn;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionComplex QStyleOptionComplex;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQProxyStyle VirtualQProxyStyle;
typedef struct QProxyStyle_VTable{
	void (*destructor)(VirtualQProxyStyle* self);
	QMetaObject* (*metaObject)(const VirtualQProxyStyle* self);
	void* (*metacast)(VirtualQProxyStyle* self, const char* param1);
	int (*metacall)(VirtualQProxyStyle* self, int param1, int param2, void** param3);
	void (*drawPrimitive)(const VirtualQProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
	void (*drawControl)(const VirtualQProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
	void (*drawComplexControl)(const VirtualQProxyStyle* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget);
	void (*drawItemText)(const VirtualQProxyStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
	void (*drawItemPixmap)(const VirtualQProxyStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
	QSize* (*sizeFromContents)(const VirtualQProxyStyle* self, int type, QStyleOption* option, QSize* size, QWidget* widget);
	QRect* (*subElementRect)(const VirtualQProxyStyle* self, int element, QStyleOption* option, QWidget* widget);
	QRect* (*subControlRect)(const VirtualQProxyStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
	QRect* (*itemTextRect)(const VirtualQProxyStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
	QRect* (*itemPixmapRect)(const VirtualQProxyStyle* self, QRect* r, int flags, QPixmap* pixmap);
	int (*hitTestComplexControl)(const VirtualQProxyStyle* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget);
	int (*styleHint)(const VirtualQProxyStyle* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData);
	int (*pixelMetric)(const VirtualQProxyStyle* self, int metric, QStyleOption* option, QWidget* widget);
	int (*layoutSpacing)(const VirtualQProxyStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
	QIcon* (*standardIcon)(const VirtualQProxyStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
	QPixmap* (*standardPixmap)(const VirtualQProxyStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
	QPixmap* (*generatedIconPixmap)(const VirtualQProxyStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
	QPalette* (*standardPalette)(const VirtualQProxyStyle* self);
	void (*polish)(VirtualQProxyStyle* self, QWidget* widget);
	void (*polishWithPal)(VirtualQProxyStyle* self, QPalette* pal);
	void (*polishWithApp)(VirtualQProxyStyle* self, QApplication* app);
	void (*unpolish)(VirtualQProxyStyle* self, QWidget* widget);
	void (*unpolishWithApp)(VirtualQProxyStyle* self, QApplication* app);
	bool (*event)(VirtualQProxyStyle* self, QEvent* e);
	bool (*eventFilter)(VirtualQProxyStyle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQProxyStyle* self, QTimerEvent* event);
	void (*childEvent)(VirtualQProxyStyle* self, QChildEvent* event);
	void (*customEvent)(VirtualQProxyStyle* self, QEvent* event);
	void (*connectNotify)(VirtualQProxyStyle* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQProxyStyle* self, QMetaMethod* signal);
}QProxyStyle_VTable;

const QProxyStyle_VTable* QProxyStyle_vtbl(const VirtualQProxyStyle* self);
void* QProxyStyle_vdata(const VirtualQProxyStyle* self);
void QProxyStyle_setVdata(VirtualQProxyStyle* self, void* vdata);

VirtualQProxyStyle* QProxyStyle_new(const QProxyStyle_VTable* vtbl, void* vdata);
VirtualQProxyStyle* QProxyStyle_new2(const QProxyStyle_VTable* vtbl, void* vdata, struct miqt_string key);
VirtualQProxyStyle* QProxyStyle_new3(const QProxyStyle_VTable* vtbl, void* vdata, QStyle* style);

void QProxyStyle_virtbase(QProxyStyle* src, QCommonStyle** outptr_QCommonStyle);
QMetaObject* QProxyStyle_metaObject(const QProxyStyle* self);
void* QProxyStyle_metacast(QProxyStyle* self, const char* param1);
int QProxyStyle_metacall(QProxyStyle* self, int param1, int param2, void** param3);
struct miqt_string QProxyStyle_tr(const char* s);
QStyle* QProxyStyle_baseStyle(const QProxyStyle* self);
void QProxyStyle_setBaseStyle(QProxyStyle* self, QStyle* style);
void QProxyStyle_drawPrimitive(const QProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
void QProxyStyle_drawControl(const QProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
void QProxyStyle_drawComplexControl(const QProxyStyle* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget);
void QProxyStyle_drawItemText(const QProxyStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QProxyStyle_drawItemPixmap(const QProxyStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QSize* QProxyStyle_sizeFromContents(const QProxyStyle* self, int type, QStyleOption* option, QSize* size, QWidget* widget);
QRect* QProxyStyle_subElementRect(const QProxyStyle* self, int element, QStyleOption* option, QWidget* widget);
QRect* QProxyStyle_subControlRect(const QProxyStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
QRect* QProxyStyle_itemTextRect(const QProxyStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QProxyStyle_itemPixmapRect(const QProxyStyle* self, QRect* r, int flags, QPixmap* pixmap);
int QProxyStyle_hitTestComplexControl(const QProxyStyle* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget);
int QProxyStyle_styleHint(const QProxyStyle* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData);
int QProxyStyle_pixelMetric(const QProxyStyle* self, int metric, QStyleOption* option, QWidget* widget);
int QProxyStyle_layoutSpacing(const QProxyStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QIcon* QProxyStyle_standardIcon(const QProxyStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QPixmap* QProxyStyle_standardPixmap(const QProxyStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QPixmap* QProxyStyle_generatedIconPixmap(const QProxyStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QPalette* QProxyStyle_standardPalette(const QProxyStyle* self);
void QProxyStyle_polish(QProxyStyle* self, QWidget* widget);
void QProxyStyle_polishWithPal(QProxyStyle* self, QPalette* pal);
void QProxyStyle_polishWithApp(QProxyStyle* self, QApplication* app);
void QProxyStyle_unpolish(QProxyStyle* self, QWidget* widget);
void QProxyStyle_unpolishWithApp(QProxyStyle* self, QApplication* app);
bool QProxyStyle_event(QProxyStyle* self, QEvent* e);
struct miqt_string QProxyStyle_tr2(const char* s, const char* c);
struct miqt_string QProxyStyle_tr3(const char* s, const char* c, int n);

QMetaObject* QProxyStyle_virtualbase_metaObject(const VirtualQProxyStyle* self);
void* QProxyStyle_virtualbase_metacast(VirtualQProxyStyle* self, const char* param1);
int QProxyStyle_virtualbase_metacall(VirtualQProxyStyle* self, int param1, int param2, void** param3);
void QProxyStyle_virtualbase_drawPrimitive(const VirtualQProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
void QProxyStyle_virtualbase_drawControl(const VirtualQProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);
void QProxyStyle_virtualbase_drawComplexControl(const VirtualQProxyStyle* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget);
void QProxyStyle_virtualbase_drawItemText(const VirtualQProxyStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QProxyStyle_virtualbase_drawItemPixmap(const VirtualQProxyStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QSize* QProxyStyle_virtualbase_sizeFromContents(const VirtualQProxyStyle* self, int type, QStyleOption* option, QSize* size, QWidget* widget);
QRect* QProxyStyle_virtualbase_subElementRect(const VirtualQProxyStyle* self, int element, QStyleOption* option, QWidget* widget);
QRect* QProxyStyle_virtualbase_subControlRect(const VirtualQProxyStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
QRect* QProxyStyle_virtualbase_itemTextRect(const VirtualQProxyStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QProxyStyle_virtualbase_itemPixmapRect(const VirtualQProxyStyle* self, QRect* r, int flags, QPixmap* pixmap);
int QProxyStyle_virtualbase_hitTestComplexControl(const VirtualQProxyStyle* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget);
int QProxyStyle_virtualbase_styleHint(const VirtualQProxyStyle* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData);
int QProxyStyle_virtualbase_pixelMetric(const VirtualQProxyStyle* self, int metric, QStyleOption* option, QWidget* widget);
int QProxyStyle_virtualbase_layoutSpacing(const VirtualQProxyStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
QIcon* QProxyStyle_virtualbase_standardIcon(const VirtualQProxyStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QPixmap* QProxyStyle_virtualbase_standardPixmap(const VirtualQProxyStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QPixmap* QProxyStyle_virtualbase_generatedIconPixmap(const VirtualQProxyStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QPalette* QProxyStyle_virtualbase_standardPalette(const VirtualQProxyStyle* self);
void QProxyStyle_virtualbase_polish(VirtualQProxyStyle* self, QWidget* widget);
void QProxyStyle_virtualbase_polishWithPal(VirtualQProxyStyle* self, QPalette* pal);
void QProxyStyle_virtualbase_polishWithApp(VirtualQProxyStyle* self, QApplication* app);
void QProxyStyle_virtualbase_unpolish(VirtualQProxyStyle* self, QWidget* widget);
void QProxyStyle_virtualbase_unpolishWithApp(VirtualQProxyStyle* self, QApplication* app);
bool QProxyStyle_virtualbase_event(VirtualQProxyStyle* self, QEvent* e);
bool QProxyStyle_virtualbase_eventFilter(VirtualQProxyStyle* self, QObject* watched, QEvent* event);
void QProxyStyle_virtualbase_timerEvent(VirtualQProxyStyle* self, QTimerEvent* event);
void QProxyStyle_virtualbase_childEvent(VirtualQProxyStyle* self, QChildEvent* event);
void QProxyStyle_virtualbase_customEvent(VirtualQProxyStyle* self, QEvent* event);
void QProxyStyle_virtualbase_connectNotify(VirtualQProxyStyle* self, QMetaMethod* signal);
void QProxyStyle_virtualbase_disconnectNotify(VirtualQProxyStyle* self, QMetaMethod* signal);

QObject* QProxyStyle_protectedbase_sender(const VirtualQProxyStyle* self);
int QProxyStyle_protectedbase_senderSignalIndex(const VirtualQProxyStyle* self);
int QProxyStyle_protectedbase_receivers(const VirtualQProxyStyle* self, const char* signal);
bool QProxyStyle_protectedbase_isSignalConnected(const VirtualQProxyStyle* self, QMetaMethod* signal);

const QMetaObject* QProxyStyle_staticMetaObject();
void QProxyStyle_delete(QProxyStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
