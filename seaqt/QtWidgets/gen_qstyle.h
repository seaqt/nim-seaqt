#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTYLE_H
#define SEAQT_QTWIDGETS_GEN_QSTYLE_H

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

typedef struct VirtualQStyle VirtualQStyle;
typedef struct QStyle_VTable{
	void (*destructor)(VirtualQStyle* self);
	QMetaObject* (*metaObject)(const VirtualQStyle* self);
	void* (*metacast)(VirtualQStyle* self, const char* param1);
	int (*metacall)(VirtualQStyle* self, int param1, int param2, void** param3);
	void (*polish)(VirtualQStyle* self, QWidget* widget);
	void (*unpolish)(VirtualQStyle* self, QWidget* widget);
	void (*polishWithApplication)(VirtualQStyle* self, QApplication* application);
	void (*unpolishWithApplication)(VirtualQStyle* self, QApplication* application);
	void (*polishWithPalette)(VirtualQStyle* self, QPalette* palette);
	QRect* (*itemTextRect)(const VirtualQStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
	QRect* (*itemPixmapRect)(const VirtualQStyle* self, QRect* r, int flags, QPixmap* pixmap);
	void (*drawItemText)(const VirtualQStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
	void (*drawItemPixmap)(const VirtualQStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
	QPalette* (*standardPalette)(const VirtualQStyle* self);
	void (*drawPrimitive)(const VirtualQStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
	void (*drawControl)(const VirtualQStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
	QRect* (*subElementRect)(const VirtualQStyle* self, int subElement, QStyleOption* option, QWidget* widget);
	void (*drawComplexControl)(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
	int (*hitTestComplexControl)(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
	QRect* (*subControlRect)(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
	int (*pixelMetric)(const VirtualQStyle* self, int metric, QStyleOption* option, QWidget* widget);
	QSize* (*sizeFromContents)(const VirtualQStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
	int (*styleHint)(const VirtualQStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
	QPixmap* (*standardPixmap)(const VirtualQStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
	QIcon* (*standardIcon)(const VirtualQStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
	QPixmap* (*generatedIconPixmap)(const VirtualQStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
	int (*layoutSpacing)(const VirtualQStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
	bool (*event)(VirtualQStyle* self, QEvent* event);
	bool (*eventFilter)(VirtualQStyle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStyle* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStyle* self, QChildEvent* event);
	void (*customEvent)(VirtualQStyle* self, QEvent* event);
	void (*connectNotify)(VirtualQStyle* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStyle* self, QMetaMethod* signal);
}QStyle_VTable;

const QStyle_VTable* QStyle_vtbl(const VirtualQStyle* self);
void* QStyle_vdata(const VirtualQStyle* self);
void QStyle_setVdata(VirtualQStyle* self, void* vdata);

VirtualQStyle* QStyle_new(const QStyle_VTable* vtbl, void* vdata);

void QStyle_virtbase(QStyle* src, QObject** outptr_QObject);
QMetaObject* QStyle_metaObject(const QStyle* self);
void* QStyle_metacast(QStyle* self, const char* param1);
int QStyle_metacall(QStyle* self, int param1, int param2, void** param3);
struct miqt_string QStyle_tr(const char* s);
struct miqt_string QStyle_name(const QStyle* self);
void QStyle_polish(QStyle* self, QWidget* widget);
void QStyle_unpolish(QStyle* self, QWidget* widget);
void QStyle_polishWithApplication(QStyle* self, QApplication* application);
void QStyle_unpolishWithApplication(QStyle* self, QApplication* application);
void QStyle_polishWithPalette(QStyle* self, QPalette* palette);
QRect* QStyle_itemTextRect(const QStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QStyle_itemPixmapRect(const QStyle* self, QRect* r, int flags, QPixmap* pixmap);
void QStyle_drawItemText(const QStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QStyle_drawItemPixmap(const QStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QPalette* QStyle_standardPalette(const QStyle* self);
void QStyle_drawPrimitive(const QStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QStyle_drawControl(const QStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QStyle_subElementRect(const QStyle* self, int subElement, QStyleOption* option, QWidget* widget);
void QStyle_drawComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
int QStyle_hitTestComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
QRect* QStyle_subControlRect(const QStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
int QStyle_pixelMetric(const QStyle* self, int metric, QStyleOption* option, QWidget* widget);
QSize* QStyle_sizeFromContents(const QStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
int QStyle_styleHint(const QStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
QPixmap* QStyle_standardPixmap(const QStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QIcon* QStyle_standardIcon(const QStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QPixmap* QStyle_generatedIconPixmap(const QStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
QRect* QStyle_visualRect(int direction, QRect* boundingRect, QRect* logicalRect);
QPoint* QStyle_visualPos(int direction, QRect* boundingRect, QPoint* logicalPos);
int QStyle_sliderPositionFromValue(int min, int max, int val, int space);
int QStyle_sliderValueFromPosition(int min, int max, int pos, int space);
int QStyle_visualAlignment(int direction, int alignment);
QRect* QStyle_alignedRect(int direction, int alignment, QSize* size, QRect* rectangle);
int QStyle_layoutSpacing(const QStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
int QStyle_combinedLayoutSpacing(const QStyle* self, int controls1, int controls2, int orientation);
QStyle* QStyle_proxy(const QStyle* self);
struct miqt_string QStyle_tr2(const char* s, const char* c);
struct miqt_string QStyle_tr3(const char* s, const char* c, int n);
int QStyle_sliderPositionFromValue5(int min, int max, int val, int space, bool upsideDown);
int QStyle_sliderValueFromPosition5(int min, int max, int pos, int space, bool upsideDown);
int QStyle_combinedLayoutSpacing4(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option);
int QStyle_combinedLayoutSpacing5(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option, QWidget* widget);

QMetaObject* QStyle_virtualbase_metaObject(const VirtualQStyle* self);
void* QStyle_virtualbase_metacast(VirtualQStyle* self, const char* param1);
int QStyle_virtualbase_metacall(VirtualQStyle* self, int param1, int param2, void** param3);
void QStyle_virtualbase_polish(VirtualQStyle* self, QWidget* widget);
void QStyle_virtualbase_unpolish(VirtualQStyle* self, QWidget* widget);
void QStyle_virtualbase_polishWithApplication(VirtualQStyle* self, QApplication* application);
void QStyle_virtualbase_unpolishWithApplication(VirtualQStyle* self, QApplication* application);
void QStyle_virtualbase_polishWithPalette(VirtualQStyle* self, QPalette* palette);
QRect* QStyle_virtualbase_itemTextRect(const VirtualQStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QStyle_virtualbase_itemPixmapRect(const VirtualQStyle* self, QRect* r, int flags, QPixmap* pixmap);
void QStyle_virtualbase_drawItemText(const VirtualQStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QStyle_virtualbase_drawItemPixmap(const VirtualQStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QPalette* QStyle_virtualbase_standardPalette(const VirtualQStyle* self);
void QStyle_virtualbase_drawPrimitive(const VirtualQStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QStyle_virtualbase_drawControl(const VirtualQStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QStyle_virtualbase_subElementRect(const VirtualQStyle* self, int subElement, QStyleOption* option, QWidget* widget);
void QStyle_virtualbase_drawComplexControl(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
int QStyle_virtualbase_hitTestComplexControl(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
QRect* QStyle_virtualbase_subControlRect(const VirtualQStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
int QStyle_virtualbase_pixelMetric(const VirtualQStyle* self, int metric, QStyleOption* option, QWidget* widget);
QSize* QStyle_virtualbase_sizeFromContents(const VirtualQStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
int QStyle_virtualbase_styleHint(const VirtualQStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
QPixmap* QStyle_virtualbase_standardPixmap(const VirtualQStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QIcon* QStyle_virtualbase_standardIcon(const VirtualQStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
QPixmap* QStyle_virtualbase_generatedIconPixmap(const VirtualQStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
int QStyle_virtualbase_layoutSpacing(const VirtualQStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
bool QStyle_virtualbase_event(VirtualQStyle* self, QEvent* event);
bool QStyle_virtualbase_eventFilter(VirtualQStyle* self, QObject* watched, QEvent* event);
void QStyle_virtualbase_timerEvent(VirtualQStyle* self, QTimerEvent* event);
void QStyle_virtualbase_childEvent(VirtualQStyle* self, QChildEvent* event);
void QStyle_virtualbase_customEvent(VirtualQStyle* self, QEvent* event);
void QStyle_virtualbase_connectNotify(VirtualQStyle* self, QMetaMethod* signal);
void QStyle_virtualbase_disconnectNotify(VirtualQStyle* self, QMetaMethod* signal);

QObject* QStyle_protectedbase_sender(const VirtualQStyle* self);
int QStyle_protectedbase_senderSignalIndex(const VirtualQStyle* self);
int QStyle_protectedbase_receivers(const VirtualQStyle* self, const char* signal);
bool QStyle_protectedbase_isSignalConnected(const VirtualQStyle* self, QMetaMethod* signal);

const QMetaObject* QStyle_staticMetaObject();
void QStyle_delete(QStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
