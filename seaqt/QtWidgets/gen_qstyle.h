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

struct QStyle_VTable {
	void (*destructor)(struct QStyle_VTable* vtbl, QStyle* self);
	QMetaObject* (*metaObject)(struct QStyle_VTable* vtbl, const QStyle* self);
	void* (*metacast)(struct QStyle_VTable* vtbl, QStyle* self, const char* param1);
	int (*metacall)(struct QStyle_VTable* vtbl, QStyle* self, int param1, int param2, void** param3);
	void (*polish)(struct QStyle_VTable* vtbl, QStyle* self, QWidget* widget);
	void (*unpolish)(struct QStyle_VTable* vtbl, QStyle* self, QWidget* widget);
	void (*polishWithApplication)(struct QStyle_VTable* vtbl, QStyle* self, QApplication* application);
	void (*unpolishWithApplication)(struct QStyle_VTable* vtbl, QStyle* self, QApplication* application);
	void (*polishWithPalette)(struct QStyle_VTable* vtbl, QStyle* self, QPalette* palette);
	QRect* (*itemTextRect)(struct QStyle_VTable* vtbl, const QStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
	QRect* (*itemPixmapRect)(struct QStyle_VTable* vtbl, const QStyle* self, QRect* r, int flags, QPixmap* pixmap);
	void (*drawItemText)(struct QStyle_VTable* vtbl, const QStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
	void (*drawItemPixmap)(struct QStyle_VTable* vtbl, const QStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
	QPalette* (*standardPalette)(struct QStyle_VTable* vtbl, const QStyle* self);
	void (*drawPrimitive)(struct QStyle_VTable* vtbl, const QStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
	void (*drawControl)(struct QStyle_VTable* vtbl, const QStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
	QRect* (*subElementRect)(struct QStyle_VTable* vtbl, const QStyle* self, int subElement, QStyleOption* option, QWidget* widget);
	void (*drawComplexControl)(struct QStyle_VTable* vtbl, const QStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
	int (*hitTestComplexControl)(struct QStyle_VTable* vtbl, const QStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
	QRect* (*subControlRect)(struct QStyle_VTable* vtbl, const QStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
	int (*pixelMetric)(struct QStyle_VTable* vtbl, const QStyle* self, int metric, QStyleOption* option, QWidget* widget);
	QSize* (*sizeFromContents)(struct QStyle_VTable* vtbl, const QStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
	int (*styleHint)(struct QStyle_VTable* vtbl, const QStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
	QPixmap* (*standardPixmap)(struct QStyle_VTable* vtbl, const QStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
	QIcon* (*standardIcon)(struct QStyle_VTable* vtbl, const QStyle* self, int standardIcon, QStyleOption* option, QWidget* widget);
	QPixmap* (*generatedIconPixmap)(struct QStyle_VTable* vtbl, const QStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
	int (*layoutSpacing)(struct QStyle_VTable* vtbl, const QStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
	bool (*event)(struct QStyle_VTable* vtbl, QStyle* self, QEvent* event);
	bool (*eventFilter)(struct QStyle_VTable* vtbl, QStyle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStyle_VTable* vtbl, QStyle* self, QTimerEvent* event);
	void (*childEvent)(struct QStyle_VTable* vtbl, QStyle* self, QChildEvent* event);
	void (*customEvent)(struct QStyle_VTable* vtbl, QStyle* self, QEvent* event);
	void (*connectNotify)(struct QStyle_VTable* vtbl, QStyle* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStyle_VTable* vtbl, QStyle* self, QMetaMethod* signal);
};
QStyle* QStyle_new(struct QStyle_VTable* vtbl);
void QStyle_virtbase(QStyle* src, QObject** outptr_QObject);
QMetaObject* QStyle_metaObject(const QStyle* self);
void* QStyle_metacast(QStyle* self, const char* param1);
int QStyle_metacall(QStyle* self, int param1, int param2, void** param3);
struct miqt_string QStyle_tr(const char* s);
struct miqt_string QStyle_trUtf8(const char* s);
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
struct miqt_string QStyle_trUtf82(const char* s, const char* c);
struct miqt_string QStyle_trUtf83(const char* s, const char* c, int n);
int QStyle_sliderPositionFromValue5(int min, int max, int val, int space, bool upsideDown);
int QStyle_sliderValueFromPosition5(int min, int max, int pos, int space, bool upsideDown);
int QStyle_combinedLayoutSpacing4(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option);
int QStyle_combinedLayoutSpacing5(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option, QWidget* widget);
QMetaObject* QStyle_virtualbase_metaObject(const void* self);
void* QStyle_virtualbase_metacast(void* self, const char* param1);
int QStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QStyle_virtualbase_polish(void* self, QWidget* widget);
void QStyle_virtualbase_unpolish(void* self, QWidget* widget);
void QStyle_virtualbase_polishWithApplication(void* self, QApplication* application);
void QStyle_virtualbase_unpolishWithApplication(void* self, QApplication* application);
void QStyle_virtualbase_polishWithPalette(void* self, QPalette* palette);
QRect* QStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);
QRect* QStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap);
void QStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);
void QStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);
QPalette* QStyle_virtualbase_standardPalette(const void* self);
void QStyle_virtualbase_drawPrimitive(const void* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w);
void QStyle_virtualbase_drawControl(const void* self, int element, QStyleOption* opt, QPainter* p, QWidget* w);
QRect* QStyle_virtualbase_subElementRect(const void* self, int subElement, QStyleOption* option, QWidget* widget);
void QStyle_virtualbase_drawComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget);
int QStyle_virtualbase_hitTestComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget);
QRect* QStyle_virtualbase_subControlRect(const void* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);
int QStyle_virtualbase_pixelMetric(const void* self, int metric, QStyleOption* option, QWidget* widget);
QSize* QStyle_virtualbase_sizeFromContents(const void* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w);
int QStyle_virtualbase_styleHint(const void* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData);
QPixmap* QStyle_virtualbase_standardPixmap(const void* self, int standardPixmap, QStyleOption* opt, QWidget* widget);
QIcon* QStyle_virtualbase_standardIcon(const void* self, int standardIcon, QStyleOption* option, QWidget* widget);
QPixmap* QStyle_virtualbase_generatedIconPixmap(const void* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);
int QStyle_virtualbase_layoutSpacing(const void* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);
bool QStyle_virtualbase_event(void* self, QEvent* event);
bool QStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStyle_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStyle_virtualbase_childEvent(void* self, QChildEvent* event);
void QStyle_virtualbase_customEvent(void* self, QEvent* event);
void QStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QStyle_protectedbase_sender(const void* self);
int QStyle_protectedbase_senderSignalIndex(const void* self);
int QStyle_protectedbase_receivers(const void* self, const char* signal);
bool QStyle_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QStyle_staticMetaObject();
void QStyle_delete(QStyle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
