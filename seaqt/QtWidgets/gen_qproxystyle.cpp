#include <QApplication>
#include <QChildEvent>
#include <QCommonStyle>
#include <QEvent>
#include <QFontMetrics>
#include <QIcon>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPalette>
#include <QPixmap>
#include <QPoint>
#include <QProxyStyle>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStyleHintReturn>
#include <QStyleOption>
#include <QStyleOptionComplex>
#include <QTimerEvent>
#include <QWidget>
#include <qproxystyle.h>
#include "gen_qproxystyle.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQProxyStyle final : public QProxyStyle {
	struct QProxyStyle_VTable* vtbl;
public:

	VirtualQProxyStyle(struct QProxyStyle_VTable* vtbl): QProxyStyle(), vtbl(vtbl) {};
	VirtualQProxyStyle(struct QProxyStyle_VTable* vtbl, const QString& key): QProxyStyle(key), vtbl(vtbl) {};
	VirtualQProxyStyle(struct QProxyStyle_VTable* vtbl, QStyle* style): QProxyStyle(style), vtbl(vtbl) {};

	virtual ~VirtualQProxyStyle() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProxyStyle::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QProxyStyle_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProxyStyle::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QProxyStyle_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProxyStyle::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProxyStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void drawPrimitive(QStyle::PrimitiveElement element, const QStyleOption* option, QPainter* painter, const QWidget* widget) const override {
		if (vtbl->drawPrimitive == 0) {
			QProxyStyle::drawPrimitive(element, option, painter, widget);
			return;
		}

		QStyle::PrimitiveElement element_ret = element;
		int sigval1 = static_cast<int>(element_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QPainter* sigval3 = painter;
		QWidget* sigval4 = (QWidget*) widget;

		vtbl->drawPrimitive(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QProxyStyle_virtualbase_drawPrimitive(const void* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void drawControl(QStyle::ControlElement element, const QStyleOption* option, QPainter* painter, const QWidget* widget) const override {
		if (vtbl->drawControl == 0) {
			QProxyStyle::drawControl(element, option, painter, widget);
			return;
		}

		QStyle::ControlElement element_ret = element;
		int sigval1 = static_cast<int>(element_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QPainter* sigval3 = painter;
		QWidget* sigval4 = (QWidget*) widget;

		vtbl->drawControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QProxyStyle_virtualbase_drawControl(const void* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void drawComplexControl(QStyle::ComplexControl control, const QStyleOptionComplex* option, QPainter* painter, const QWidget* widget) const override {
		if (vtbl->drawComplexControl == 0) {
			QProxyStyle::drawComplexControl(control, option, painter, widget);
			return;
		}

		QStyle::ComplexControl control_ret = control;
		int sigval1 = static_cast<int>(control_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) option;
		QPainter* sigval3 = painter;
		QWidget* sigval4 = (QWidget*) widget;

		vtbl->drawComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QProxyStyle_virtualbase_drawComplexControl(const void* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void drawItemText(QPainter* painter, const QRect& rect, int flags, const QPalette& pal, bool enabled, const QString& text, QPalette::ColorRole textRole) const override {
		if (vtbl->drawItemText == 0) {
			QProxyStyle::drawItemText(painter, rect, flags, pal, enabled, text, textRole);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		int sigval3 = flags;
		const QPalette& pal_ret = pal;
		// Cast returned reference into pointer
		QPalette* sigval4 = const_cast<QPalette*>(&pal_ret);
		bool sigval5 = enabled;
		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval6 = text_ms;
		QPalette::ColorRole textRole_ret = textRole;
		int sigval7 = static_cast<int>(textRole_ret);

		vtbl->drawItemText(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5, sigval6, sigval7);

	}

	friend void QProxyStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);

	// Subclass to allow providing a Go implementation
	virtual void drawItemPixmap(QPainter* painter, const QRect& rect, int alignment, const QPixmap& pixmap) const override {
		if (vtbl->drawItemPixmap == 0) {
			QProxyStyle::drawItemPixmap(painter, rect, alignment, pixmap);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		int sigval3 = alignment;
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval4 = const_cast<QPixmap*>(&pixmap_ret);

		vtbl->drawItemPixmap(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QProxyStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeFromContents(QStyle::ContentsType type, const QStyleOption* option, const QSize& size, const QWidget* widget) const override {
		if (vtbl->sizeFromContents == 0) {
			return QProxyStyle::sizeFromContents(type, option, size, widget);
		}

		QStyle::ContentsType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		const QSize& size_ret = size;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&size_ret);
		QWidget* sigval4 = (QWidget*) widget;

		QSize* callback_return_value = vtbl->sizeFromContents(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return *callback_return_value;
	}

	friend QSize* QProxyStyle_virtualbase_sizeFromContents(const void* self, int type, QStyleOption* option, QSize* size, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QRect subElementRect(QStyle::SubElement element, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->subElementRect == 0) {
			return QProxyStyle::subElementRect(element, option, widget);
		}

		QStyle::SubElement element_ret = element;
		int sigval1 = static_cast<int>(element_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		QRect* callback_return_value = vtbl->subElementRect(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QRect* QProxyStyle_virtualbase_subElementRect(const void* self, int element, QStyleOption* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QRect subControlRect(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, QStyle::SubControl sc, const QWidget* widget) const override {
		if (vtbl->subControlRect == 0) {
			return QProxyStyle::subControlRect(cc, opt, sc, widget);
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		QStyle::SubControl sc_ret = sc;
		int sigval3 = static_cast<int>(sc_ret);
		QWidget* sigval4 = (QWidget*) widget;

		QRect* callback_return_value = vtbl->subControlRect(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return *callback_return_value;
	}

	friend QRect* QProxyStyle_virtualbase_subControlRect(const void* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QRect itemTextRect(const QFontMetrics& fm, const QRect& r, int flags, bool enabled, const QString& text) const override {
		if (vtbl->itemTextRect == 0) {
			return QProxyStyle::itemTextRect(fm, r, flags, enabled, text);
		}

		const QFontMetrics& fm_ret = fm;
		// Cast returned reference into pointer
		QFontMetrics* sigval1 = const_cast<QFontMetrics*>(&fm_ret);
		const QRect& r_ret = r;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&r_ret);
		int sigval3 = flags;
		bool sigval4 = enabled;
		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval5 = text_ms;

		QRect* callback_return_value = vtbl->itemTextRect(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return *callback_return_value;
	}

	friend QRect* QProxyStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);

	// Subclass to allow providing a Go implementation
	virtual QRect itemPixmapRect(const QRect& r, int flags, const QPixmap& pixmap) const override {
		if (vtbl->itemPixmapRect == 0) {
			return QProxyStyle::itemPixmapRect(r, flags, pixmap);
		}

		const QRect& r_ret = r;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&r_ret);
		int sigval2 = flags;
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval3 = const_cast<QPixmap*>(&pixmap_ret);

		QRect* callback_return_value = vtbl->itemPixmapRect(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QRect* QProxyStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap);

	// Subclass to allow providing a Go implementation
	virtual QStyle::SubControl hitTestComplexControl(QStyle::ComplexControl control, const QStyleOptionComplex* option, const QPoint& pos, const QWidget* widget) const override {
		if (vtbl->hitTestComplexControl == 0) {
			return QProxyStyle::hitTestComplexControl(control, option, pos, widget);
		}

		QStyle::ComplexControl control_ret = control;
		int sigval1 = static_cast<int>(control_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) option;
		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval3 = const_cast<QPoint*>(&pos_ret);
		QWidget* sigval4 = (QWidget*) widget;

		int callback_return_value = vtbl->hitTestComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<QStyle::SubControl>(callback_return_value);
	}

	friend int QProxyStyle_virtualbase_hitTestComplexControl(const void* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual int styleHint(QStyle::StyleHint hint, const QStyleOption* option, const QWidget* widget, QStyleHintReturn* returnData) const override {
		if (vtbl->styleHint == 0) {
			return QProxyStyle::styleHint(hint, option, widget, returnData);
		}

		QStyle::StyleHint hint_ret = hint;
		int sigval1 = static_cast<int>(hint_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;
		QStyleHintReturn* sigval4 = returnData;

		int callback_return_value = vtbl->styleHint(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<int>(callback_return_value);
	}

	friend int QProxyStyle_virtualbase_styleHint(const void* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData);

	// Subclass to allow providing a Go implementation
	virtual int pixelMetric(QStyle::PixelMetric metric, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->pixelMetric == 0) {
			return QProxyStyle::pixelMetric(metric, option, widget);
		}

		QStyle::PixelMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		int callback_return_value = vtbl->pixelMetric(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProxyStyle_virtualbase_pixelMetric(const void* self, int metric, QStyleOption* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->layoutSpacing == 0) {
			return QProxyStyle::layoutSpacing(control1, control2, orientation, option, widget);
		}

		QSizePolicy::ControlType control1_ret = control1;
		int sigval1 = static_cast<int>(control1_ret);
		QSizePolicy::ControlType control2_ret = control2;
		int sigval2 = static_cast<int>(control2_ret);
		Qt::Orientation orientation_ret = orientation;
		int sigval3 = static_cast<int>(orientation_ret);
		QStyleOption* sigval4 = (QStyleOption*) option;
		QWidget* sigval5 = (QWidget*) widget;

		int callback_return_value = vtbl->layoutSpacing(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return static_cast<int>(callback_return_value);
	}

	friend int QProxyStyle_virtualbase_layoutSpacing(const void* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QIcon standardIcon(QStyle::StandardPixmap standardIcon, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->standardIcon == 0) {
			return QProxyStyle::standardIcon(standardIcon, option, widget);
		}

		QStyle::StandardPixmap standardIcon_ret = standardIcon;
		int sigval1 = static_cast<int>(standardIcon_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		QIcon* callback_return_value = vtbl->standardIcon(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QIcon* QProxyStyle_virtualbase_standardIcon(const void* self, int standardIcon, QStyleOption* option, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QPixmap standardPixmap(QStyle::StandardPixmap standardPixmap, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->standardPixmap == 0) {
			return QProxyStyle::standardPixmap(standardPixmap, opt, widget);
		}

		QStyle::StandardPixmap standardPixmap_ret = standardPixmap;
		int sigval1 = static_cast<int>(standardPixmap_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		QPixmap* callback_return_value = vtbl->standardPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QPixmap* QProxyStyle_virtualbase_standardPixmap(const void* self, int standardPixmap, QStyleOption* opt, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap& pixmap, const QStyleOption* opt) const override {
		if (vtbl->generatedIconPixmap == 0) {
			return QProxyStyle::generatedIconPixmap(iconMode, pixmap, opt);
		}

		QIcon::Mode iconMode_ret = iconMode;
		int sigval1 = static_cast<int>(iconMode_ret);
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval2 = const_cast<QPixmap*>(&pixmap_ret);
		QStyleOption* sigval3 = (QStyleOption*) opt;

		QPixmap* callback_return_value = vtbl->generatedIconPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QPixmap* QProxyStyle_virtualbase_generatedIconPixmap(const void* self, int iconMode, QPixmap* pixmap, QStyleOption* opt);

	// Subclass to allow providing a Go implementation
	virtual QPalette standardPalette() const override {
		if (vtbl->standardPalette == 0) {
			return QProxyStyle::standardPalette();
		}


		QPalette* callback_return_value = vtbl->standardPalette(vtbl, this);

		return *callback_return_value;
	}

	friend QPalette* QProxyStyle_virtualbase_standardPalette(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void polish(QWidget* widget) override {
		if (vtbl->polish == 0) {
			QProxyStyle::polish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->polish(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_polish(void* self, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void polish(QPalette& pal) override {
		if (vtbl->polishWithPal == 0) {
			QProxyStyle::polish(pal);
			return;
		}

		QPalette& pal_ret = pal;
		// Cast returned reference into pointer
		QPalette* sigval1 = &pal_ret;

		vtbl->polishWithPal(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_polishWithPal(void* self, QPalette* pal);

	// Subclass to allow providing a Go implementation
	virtual void polish(QApplication* app) override {
		if (vtbl->polishWithApp == 0) {
			QProxyStyle::polish(app);
			return;
		}

		QApplication* sigval1 = app;

		vtbl->polishWithApp(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_polishWithApp(void* self, QApplication* app);

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QWidget* widget) override {
		if (vtbl->unpolish == 0) {
			QProxyStyle::unpolish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->unpolish(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_unpolish(void* self, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QApplication* app) override {
		if (vtbl->unpolishWithApp == 0) {
			QProxyStyle::unpolish(app);
			return;
		}

		QApplication* sigval1 = app;

		vtbl->unpolishWithApp(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_unpolishWithApp(void* self, QApplication* app);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QProxyStyle::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QProxyStyle_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QProxyStyle::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProxyStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProxyStyle::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProxyStyle::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProxyStyle::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProxyStyle::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProxyStyle::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QProxyStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QProxyStyle_protectedbase_sender(const void* self);
	friend int QProxyStyle_protectedbase_senderSignalIndex(const void* self);
	friend int QProxyStyle_protectedbase_receivers(const void* self, const char* signal);
	friend bool QProxyStyle_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QProxyStyle* QProxyStyle_new(struct QProxyStyle_VTable* vtbl) {
	return new VirtualQProxyStyle(vtbl);
}

QProxyStyle* QProxyStyle_new2(struct QProxyStyle_VTable* vtbl, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new VirtualQProxyStyle(vtbl, key_QString);
}

QProxyStyle* QProxyStyle_new3(struct QProxyStyle_VTable* vtbl, QStyle* style) {
	return new VirtualQProxyStyle(vtbl, style);
}

void QProxyStyle_virtbase(QProxyStyle* src, QCommonStyle** outptr_QCommonStyle) {
	*outptr_QCommonStyle = static_cast<QCommonStyle*>(src);
}

QMetaObject* QProxyStyle_metaObject(const QProxyStyle* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProxyStyle_metacast(QProxyStyle* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProxyStyle_metacall(QProxyStyle* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProxyStyle_tr(const char* s) {
	QString _ret = QProxyStyle::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProxyStyle_trUtf8(const char* s) {
	QString _ret = QProxyStyle::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStyle* QProxyStyle_baseStyle(const QProxyStyle* self) {
	return self->baseStyle();
}

void QProxyStyle_setBaseStyle(QProxyStyle* self, QStyle* style) {
	self->setBaseStyle(style);
}

void QProxyStyle_drawPrimitive(const QProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget) {
	self->drawPrimitive(static_cast<QStyle::PrimitiveElement>(element), option, painter, widget);
}

void QProxyStyle_drawControl(const QProxyStyle* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget) {
	self->drawControl(static_cast<QStyle::ControlElement>(element), option, painter, widget);
}

void QProxyStyle_drawComplexControl(const QProxyStyle* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget) {
	self->drawComplexControl(static_cast<QStyle::ComplexControl>(control), option, painter, widget);
}

void QProxyStyle_drawItemText(const QProxyStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawItemText(painter, *rect, static_cast<int>(flags), *pal, enabled, text_QString, static_cast<QPalette::ColorRole>(textRole));
}

void QProxyStyle_drawItemPixmap(const QProxyStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) {
	self->drawItemPixmap(painter, *rect, static_cast<int>(alignment), *pixmap);
}

QSize* QProxyStyle_sizeFromContents(const QProxyStyle* self, int type, QStyleOption* option, QSize* size, QWidget* widget) {
	return new QSize(self->sizeFromContents(static_cast<QStyle::ContentsType>(type), option, *size, widget));
}

QRect* QProxyStyle_subElementRect(const QProxyStyle* self, int element, QStyleOption* option, QWidget* widget) {
	return new QRect(self->subElementRect(static_cast<QStyle::SubElement>(element), option, widget));
}

QRect* QProxyStyle_subControlRect(const QProxyStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget) {
	return new QRect(self->subControlRect(static_cast<QStyle::ComplexControl>(cc), opt, static_cast<QStyle::SubControl>(sc), widget));
}

QRect* QProxyStyle_itemTextRect(const QProxyStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRect(self->itemTextRect(*fm, *r, static_cast<int>(flags), enabled, text_QString));
}

QRect* QProxyStyle_itemPixmapRect(const QProxyStyle* self, QRect* r, int flags, QPixmap* pixmap) {
	return new QRect(self->itemPixmapRect(*r, static_cast<int>(flags), *pixmap));
}

int QProxyStyle_hitTestComplexControl(const QProxyStyle* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget) {
	QStyle::SubControl _ret = self->hitTestComplexControl(static_cast<QStyle::ComplexControl>(control), option, *pos, widget);
	return static_cast<int>(_ret);
}

int QProxyStyle_styleHint(const QProxyStyle* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData) {
	return self->styleHint(static_cast<QStyle::StyleHint>(hint), option, widget, returnData);
}

int QProxyStyle_pixelMetric(const QProxyStyle* self, int metric, QStyleOption* option, QWidget* widget) {
	return self->pixelMetric(static_cast<QStyle::PixelMetric>(metric), option, widget);
}

int QProxyStyle_layoutSpacing(const QProxyStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) {
	return self->layoutSpacing(static_cast<QSizePolicy::ControlType>(control1), static_cast<QSizePolicy::ControlType>(control2), static_cast<Qt::Orientation>(orientation), option, widget);
}

QIcon* QProxyStyle_standardIcon(const QProxyStyle* self, int standardIcon, QStyleOption* option, QWidget* widget) {
	return new QIcon(self->standardIcon(static_cast<QStyle::StandardPixmap>(standardIcon), option, widget));
}

QPixmap* QProxyStyle_standardPixmap(const QProxyStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget) {
	return new QPixmap(self->standardPixmap(static_cast<QStyle::StandardPixmap>(standardPixmap), opt, widget));
}

QPixmap* QProxyStyle_generatedIconPixmap(const QProxyStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt) {
	return new QPixmap(self->generatedIconPixmap(static_cast<QIcon::Mode>(iconMode), *pixmap, opt));
}

QPalette* QProxyStyle_standardPalette(const QProxyStyle* self) {
	return new QPalette(self->standardPalette());
}

void QProxyStyle_polish(QProxyStyle* self, QWidget* widget) {
	self->polish(widget);
}

void QProxyStyle_polishWithPal(QProxyStyle* self, QPalette* pal) {
	self->polish(*pal);
}

void QProxyStyle_polishWithApp(QProxyStyle* self, QApplication* app) {
	self->polish(app);
}

void QProxyStyle_unpolish(QProxyStyle* self, QWidget* widget) {
	self->unpolish(widget);
}

void QProxyStyle_unpolishWithApp(QProxyStyle* self, QApplication* app) {
	self->unpolish(app);
}

struct miqt_string QProxyStyle_tr2(const char* s, const char* c) {
	QString _ret = QProxyStyle::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProxyStyle_tr3(const char* s, const char* c, int n) {
	QString _ret = QProxyStyle::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProxyStyle_trUtf82(const char* s, const char* c) {
	QString _ret = QProxyStyle::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProxyStyle_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QProxyStyle::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QProxyStyle_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQProxyStyle*)(self) )->QProxyStyle::metaObject();

}

void* QProxyStyle_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQProxyStyle*)(self) )->QProxyStyle::qt_metacast(param1);

}

int QProxyStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQProxyStyle*)(self) )->QProxyStyle::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QProxyStyle_virtualbase_drawPrimitive(const void* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget) {

	( (const VirtualQProxyStyle*)(self) )->QProxyStyle::drawPrimitive(static_cast<VirtualQProxyStyle::PrimitiveElement>(element), option, painter, widget);

}

void QProxyStyle_virtualbase_drawControl(const void* self, int element, QStyleOption* option, QPainter* painter, QWidget* widget) {

	( (const VirtualQProxyStyle*)(self) )->QProxyStyle::drawControl(static_cast<VirtualQProxyStyle::ControlElement>(element), option, painter, widget);

}

void QProxyStyle_virtualbase_drawComplexControl(const void* self, int control, QStyleOptionComplex* option, QPainter* painter, QWidget* widget) {

	( (const VirtualQProxyStyle*)(self) )->QProxyStyle::drawComplexControl(static_cast<VirtualQProxyStyle::ComplexControl>(control), option, painter, widget);

}

void QProxyStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	( (const VirtualQProxyStyle*)(self) )->QProxyStyle::drawItemText(painter, *rect, static_cast<int>(flags), *pal, enabled, text_QString, static_cast<QPalette::ColorRole>(textRole));

}

void QProxyStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) {

	( (const VirtualQProxyStyle*)(self) )->QProxyStyle::drawItemPixmap(painter, *rect, static_cast<int>(alignment), *pixmap);

}

QSize* QProxyStyle_virtualbase_sizeFromContents(const void* self, int type, QStyleOption* option, QSize* size, QWidget* widget) {

	return new QSize(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::sizeFromContents(static_cast<VirtualQProxyStyle::ContentsType>(type), option, *size, widget));

}

QRect* QProxyStyle_virtualbase_subElementRect(const void* self, int element, QStyleOption* option, QWidget* widget) {

	return new QRect(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::subElementRect(static_cast<VirtualQProxyStyle::SubElement>(element), option, widget));

}

QRect* QProxyStyle_virtualbase_subControlRect(const void* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget) {

	return new QRect(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::subControlRect(static_cast<VirtualQProxyStyle::ComplexControl>(cc), opt, static_cast<VirtualQProxyStyle::SubControl>(sc), widget));

}

QRect* QProxyStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QRect(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::itemTextRect(*fm, *r, static_cast<int>(flags), enabled, text_QString));

}

QRect* QProxyStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap) {

	return new QRect(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::itemPixmapRect(*r, static_cast<int>(flags), *pixmap));

}

int QProxyStyle_virtualbase_hitTestComplexControl(const void* self, int control, QStyleOptionComplex* option, QPoint* pos, QWidget* widget) {

	VirtualQProxyStyle::SubControl _ret = ( (const VirtualQProxyStyle*)(self) )->QProxyStyle::hitTestComplexControl(static_cast<VirtualQProxyStyle::ComplexControl>(control), option, *pos, widget);
	return static_cast<int>(_ret);

}

int QProxyStyle_virtualbase_styleHint(const void* self, int hint, QStyleOption* option, QWidget* widget, QStyleHintReturn* returnData) {

	return ( (const VirtualQProxyStyle*)(self) )->QProxyStyle::styleHint(static_cast<VirtualQProxyStyle::StyleHint>(hint), option, widget, returnData);

}

int QProxyStyle_virtualbase_pixelMetric(const void* self, int metric, QStyleOption* option, QWidget* widget) {

	return ( (const VirtualQProxyStyle*)(self) )->QProxyStyle::pixelMetric(static_cast<VirtualQProxyStyle::PixelMetric>(metric), option, widget);

}

int QProxyStyle_virtualbase_layoutSpacing(const void* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) {

	return ( (const VirtualQProxyStyle*)(self) )->QProxyStyle::layoutSpacing(static_cast<QSizePolicy::ControlType>(control1), static_cast<QSizePolicy::ControlType>(control2), static_cast<Qt::Orientation>(orientation), option, widget);

}

QIcon* QProxyStyle_virtualbase_standardIcon(const void* self, int standardIcon, QStyleOption* option, QWidget* widget) {

	return new QIcon(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::standardIcon(static_cast<VirtualQProxyStyle::StandardPixmap>(standardIcon), option, widget));

}

QPixmap* QProxyStyle_virtualbase_standardPixmap(const void* self, int standardPixmap, QStyleOption* opt, QWidget* widget) {

	return new QPixmap(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::standardPixmap(static_cast<VirtualQProxyStyle::StandardPixmap>(standardPixmap), opt, widget));

}

QPixmap* QProxyStyle_virtualbase_generatedIconPixmap(const void* self, int iconMode, QPixmap* pixmap, QStyleOption* opt) {

	return new QPixmap(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::generatedIconPixmap(static_cast<QIcon::Mode>(iconMode), *pixmap, opt));

}

QPalette* QProxyStyle_virtualbase_standardPalette(const void* self) {

	return new QPalette(( (const VirtualQProxyStyle*)(self) )->QProxyStyle::standardPalette());

}

void QProxyStyle_virtualbase_polish(void* self, QWidget* widget) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::polish(widget);

}

void QProxyStyle_virtualbase_polishWithPal(void* self, QPalette* pal) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::polish(*pal);

}

void QProxyStyle_virtualbase_polishWithApp(void* self, QApplication* app) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::polish(app);

}

void QProxyStyle_virtualbase_unpolish(void* self, QWidget* widget) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::unpolish(widget);

}

void QProxyStyle_virtualbase_unpolishWithApp(void* self, QApplication* app) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::unpolish(app);

}

bool QProxyStyle_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQProxyStyle*)(self) )->QProxyStyle::event(e);

}

bool QProxyStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQProxyStyle*)(self) )->QProxyStyle::eventFilter(watched, event);

}

void QProxyStyle_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::timerEvent(event);

}

void QProxyStyle_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::childEvent(event);

}

void QProxyStyle_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::customEvent(event);

}

void QProxyStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::connectNotify(*signal);

}

void QProxyStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProxyStyle*)(self) )->QProxyStyle::disconnectNotify(*signal);

}

const QMetaObject* QProxyStyle_staticMetaObject() { return &QProxyStyle::staticMetaObject; }
QObject* QProxyStyle_protectedbase_sender(const void* self) {
	VirtualQProxyStyle* self_cast = static_cast<VirtualQProxyStyle*>( (QProxyStyle*)(self) );
	
	return self_cast->sender();

}

int QProxyStyle_protectedbase_senderSignalIndex(const void* self) {
	VirtualQProxyStyle* self_cast = static_cast<VirtualQProxyStyle*>( (QProxyStyle*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QProxyStyle_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQProxyStyle* self_cast = static_cast<VirtualQProxyStyle*>( (QProxyStyle*)(self) );
	
	return self_cast->receivers(signal);

}

bool QProxyStyle_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQProxyStyle* self_cast = static_cast<VirtualQProxyStyle*>( (QProxyStyle*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QProxyStyle_delete(QProxyStyle* self) {
	delete self;
}

