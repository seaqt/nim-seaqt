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

typedef struct VirtualQCommonStyle VirtualQCommonStyle;
typedef struct QCommonStyle_VTable{
	void (*destructor)(VirtualQCommonStyle* self);
	QMetaObject* (*metaObject)(const VirtualQCommonStyle* self);
	void* (*metacast)(VirtualQCommonStyle* self, const char* param1);
	int (*metacall)(VirtualQCommonStyle* self, int param1, int param2, void** param3);
	void (*drawPrimitive)(const VirtualQCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
	void (*drawControl)(const VirtualQCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
	QRect* (*subElementRect)(const VirtualQCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
	void (*drawComplexControl)(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
	int (*hitTestComplexControl)(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
	QRect* (*subControlRect)(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
	QSize* (*sizeFromContents)(const VirtualQCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
	int (*pixelMetric)(const VirtualQCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
	int (*styleHint)(const VirtualQCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
	QIcon* (*standardIcon)(const VirtualQCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
	QPixmap* (*standardPixmap)(const VirtualQCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
	QPixmap* (*generatedIconPixmap)(const VirtualQCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
	int (*layoutSpacing)(const VirtualQCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
	void (*polish)(VirtualQCommonStyle* self, QPalette* param1);
	void (*polishWithApp)(VirtualQCommonStyle* self, QApplication* app);
	void (*polishWithWidget)(VirtualQCommonStyle* self, QWidget* widget);
	void (*unpolish)(VirtualQCommonStyle* self, QWidget* widget);
	void (*unpolishWithApplication)(VirtualQCommonStyle* self, QApplication* application);
	QRect* (*itemTextRect)(const VirtualQCommonStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
	QRect* (*itemPixmapRect)(const VirtualQCommonStyle* self, QRect* r, int flags, QPixmap* pixmap);
	void (*drawItemText)(const VirtualQCommonStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
	void (*drawItemPixmap)(const VirtualQCommonStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
	QPalette* (*standardPalette)(const VirtualQCommonStyle* self);
	bool (*event)(VirtualQCommonStyle* self, QEvent* event);
	bool (*eventFilter)(VirtualQCommonStyle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQCommonStyle* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCommonStyle* self, QChildEvent* event);
	void (*customEvent)(VirtualQCommonStyle* self, QEvent* event);
	void (*connectNotify)(VirtualQCommonStyle* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCommonStyle* self, QMetaMethod* signal);
}QCommonStyle_VTable;

const QCommonStyle_VTable* QCommonStyle_vtbl(const VirtualQCommonStyle* self);
void* QCommonStyle_vdata(const VirtualQCommonStyle* self);
void QCommonStyle_setVdata(VirtualQCommonStyle* self, void* vdata);

VirtualQCommonStyle* QCommonStyle_new(const QCommonStyle_VTable* vtbl, void* vdata);

void QCommonStyle_virtbase(QCommonStyle* src, QStyle** outptr_QStyle);
QMetaObject* QCommonStyle_metaObject(const QCommonStyle* self);
void* QCommonStyle_metacast(QCommonStyle* self, const char* param1);
int QCommonStyle_metacall(QCommonStyle* self, int param1, int param2, void** param3);
struct miqt_string QCommonStyle_tr(const char* s);
struct miqt_string QCommonStyle_trUtf8(const char* s);
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
struct miqt_string QCommonStyle_trUtf82(const char* s, const char* c);
struct miqt_string QCommonStyle_trUtf83(const char* s, const char* c, int n);

QMetaObject* QCommonStyle_virtualbase_metaObject(const VirtualQCommonStyle* self);
void* QCommonStyle_virtualbase_metacast(VirtualQCommonStyle* self, const char* param1);
int QCommonStyle_virtualbase_metacall(VirtualQCommonStyle* self, int param1, int param2, void** param3);
void QCommonStyle_virtualbase_drawPrimitive(const VirtualQCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QCommonStyle_virtualbase_drawControl(const VirtualQCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QCommonStyle_virtualbase_subElementRect(const VirtualQCommonStyle* self, int r, QStyleOption* opt, QWidget* widget);
void QCommonStyle_virtualbase_drawComplexControl(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w);
int QCommonStyle_virtualbase_hitTestComplexControl(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w);
QRect* QCommonStyle_virtualbase_subControlRect(const VirtualQCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w);
QSize* QCommonStyle_virtualbase_sizeFromContents(const VirtualQCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget);
int QCommonStyle_virtualbase_pixelMetric(const VirtualQCommonStyle* self, int m, QStyleOption* opt, QWidget* widget);
int QCommonStyle_virtualbase_styleHint(const VirtualQCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret);
QIcon* QCommonStyle_virtualbase_standardIcon(const VirtualQCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_virtualbase_standardPixmap(const VirtualQCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget);
QPixmap* QCommonStyle_virtualbase_generatedIconPixmap(const VirtualQCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
int QCommonStyle_virtualbase_layoutSpacing(const VirtualQCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
void QCommonStyle_virtualbase_polish(VirtualQCommonStyle* self, QPalette* param1);
void QCommonStyle_virtualbase_polishWithApp(VirtualQCommonStyle* self, QApplication* app);
void QCommonStyle_virtualbase_polishWithWidget(VirtualQCommonStyle* self, QWidget* widget);
void QCommonStyle_virtualbase_unpolish(VirtualQCommonStyle* self, QWidget* widget);
void QCommonStyle_virtualbase_unpolishWithApplication(VirtualQCommonStyle* self, QApplication* application);
QRect* QCommonStyle_virtualbase_itemTextRect(const VirtualQCommonStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QCommonStyle_virtualbase_itemPixmapRect(const VirtualQCommonStyle* self, QRect* r, int flags, QPixmap* pixmap);
void QCommonStyle_virtualbase_drawItemText(const VirtualQCommonStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QCommonStyle_virtualbase_drawItemPixmap(const VirtualQCommonStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QPalette* QCommonStyle_virtualbase_standardPalette(const VirtualQCommonStyle* self);
bool QCommonStyle_virtualbase_event(VirtualQCommonStyle* self, QEvent* event);
bool QCommonStyle_virtualbase_eventFilter(VirtualQCommonStyle* self, QObject* watched, QEvent* event);
void QCommonStyle_virtualbase_timerEvent(VirtualQCommonStyle* self, QTimerEvent* event);
void QCommonStyle_virtualbase_childEvent(VirtualQCommonStyle* self, QChildEvent* event);
void QCommonStyle_virtualbase_customEvent(VirtualQCommonStyle* self, QEvent* event);
void QCommonStyle_virtualbase_connectNotify(VirtualQCommonStyle* self, QMetaMethod* signal);
void QCommonStyle_virtualbase_disconnectNotify(VirtualQCommonStyle* self, QMetaMethod* signal);

QObject* QCommonStyle_protectedbase_sender(const VirtualQCommonStyle* self);
int QCommonStyle_protectedbase_senderSignalIndex(const VirtualQCommonStyle* self);
int QCommonStyle_protectedbase_receivers(const VirtualQCommonStyle* self, const char* signal);
bool QCommonStyle_protectedbase_isSignalConnected(const VirtualQCommonStyle* self, QMetaMethod* signal);

const QMetaObject* QCommonStyle_staticMetaObject();
void QCommonStyle_delete(QCommonStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
