#include <QApplication>
#include <QChildEvent>
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
#include <qstyle.h>
#include "gen_qstyle.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStyle final : public QStyle {
	struct QStyle_VTable* vtbl;
public:

	VirtualQStyle(struct QStyle_VTable* vtbl): QStyle(), vtbl(vtbl) {};

	virtual ~VirtualQStyle() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStyle::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStyle_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStyle::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStyle_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStyle::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void polish(QWidget* widget) override {
		if (vtbl->polish == 0) {
			QStyle::polish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->polish(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_polish(void* self, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QWidget* widget) override {
		if (vtbl->unpolish == 0) {
			QStyle::unpolish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->unpolish(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_unpolish(void* self, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual void polish(QApplication* application) override {
		if (vtbl->polishWithApplication == 0) {
			QStyle::polish(application);
			return;
		}

		QApplication* sigval1 = application;

		vtbl->polishWithApplication(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_polishWithApplication(void* self, QApplication* application);

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QApplication* application) override {
		if (vtbl->unpolishWithApplication == 0) {
			QStyle::unpolish(application);
			return;
		}

		QApplication* sigval1 = application;

		vtbl->unpolishWithApplication(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_unpolishWithApplication(void* self, QApplication* application);

	// Subclass to allow providing a Go implementation
	virtual void polish(QPalette& palette) override {
		if (vtbl->polishWithPalette == 0) {
			QStyle::polish(palette);
			return;
		}

		QPalette& palette_ret = palette;
		// Cast returned reference into pointer
		QPalette* sigval1 = &palette_ret;

		vtbl->polishWithPalette(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_polishWithPalette(void* self, QPalette* palette);

	// Subclass to allow providing a Go implementation
	virtual QRect itemTextRect(const QFontMetrics& fm, const QRect& r, int flags, bool enabled, const QString& text) const override {
		if (vtbl->itemTextRect == 0) {
			return QStyle::itemTextRect(fm, r, flags, enabled, text);
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

	friend QRect* QStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text);

	// Subclass to allow providing a Go implementation
	virtual QRect itemPixmapRect(const QRect& r, int flags, const QPixmap& pixmap) const override {
		if (vtbl->itemPixmapRect == 0) {
			return QStyle::itemPixmapRect(r, flags, pixmap);
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

	friend QRect* QStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap);

	// Subclass to allow providing a Go implementation
	virtual void drawItemText(QPainter* painter, const QRect& rect, int flags, const QPalette& pal, bool enabled, const QString& text, QPalette::ColorRole textRole) const override {
		if (vtbl->drawItemText == 0) {
			QStyle::drawItemText(painter, rect, flags, pal, enabled, text, textRole);
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

	friend void QStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole);

	// Subclass to allow providing a Go implementation
	virtual void drawItemPixmap(QPainter* painter, const QRect& rect, int alignment, const QPixmap& pixmap) const override {
		if (vtbl->drawItemPixmap == 0) {
			QStyle::drawItemPixmap(painter, rect, alignment, pixmap);
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

	friend void QStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap);

	// Subclass to allow providing a Go implementation
	virtual QPalette standardPalette() const override {
		if (vtbl->standardPalette == 0) {
			return QStyle::standardPalette();
		}


		QPalette* callback_return_value = vtbl->standardPalette(vtbl, this);

		return *callback_return_value;
	}

	friend QPalette* QStyle_virtualbase_standardPalette(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption* opt, QPainter* p, const QWidget* w) const override {
		if (vtbl->drawPrimitive == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QStyle::PrimitiveElement pe_ret = pe;
		int sigval1 = static_cast<int>(pe_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) w;

		vtbl->drawPrimitive(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawControl(QStyle::ControlElement element, const QStyleOption* opt, QPainter* p, const QWidget* w) const override {
		if (vtbl->drawControl == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QStyle::ControlElement element_ret = element;
		int sigval1 = static_cast<int>(element_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) w;

		vtbl->drawControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect subElementRect(QStyle::SubElement subElement, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->subElementRect == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}

		QStyle::SubElement subElement_ret = subElement;
		int sigval1 = static_cast<int>(subElement_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		QRect* callback_return_value = vtbl->subElementRect(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, QPainter* p, const QWidget* widget) const override {
		if (vtbl->drawComplexControl == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) widget;

		vtbl->drawComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Subclass to allow providing a Go implementation
	virtual QStyle::SubControl hitTestComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, const QPoint& pt, const QWidget* widget) const override {
		if (vtbl->hitTestComplexControl == 0) {
			return (QStyle::SubControl)(0); // Pure virtual, there is no base we can call
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		const QPoint& pt_ret = pt;
		// Cast returned reference into pointer
		QPoint* sigval3 = const_cast<QPoint*>(&pt_ret);
		QWidget* sigval4 = (QWidget*) widget;

		int callback_return_value = vtbl->hitTestComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<QStyle::SubControl>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QRect subControlRect(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, QStyle::SubControl sc, const QWidget* widget) const override {
		if (vtbl->subControlRect == 0) {
			return QRect(); // Pure virtual, there is no base we can call
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

	// Subclass to allow providing a Go implementation
	virtual int pixelMetric(QStyle::PixelMetric metric, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->pixelMetric == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		QStyle::PixelMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		int callback_return_value = vtbl->pixelMetric(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeFromContents(QStyle::ContentsType ct, const QStyleOption* opt, const QSize& contentsSize, const QWidget* w) const override {
		if (vtbl->sizeFromContents == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}

		QStyle::ContentsType ct_ret = ct;
		int sigval1 = static_cast<int>(ct_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		const QSize& contentsSize_ret = contentsSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&contentsSize_ret);
		QWidget* sigval4 = (QWidget*) w;

		QSize* callback_return_value = vtbl->sizeFromContents(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int styleHint(QStyle::StyleHint stylehint, const QStyleOption* opt, const QWidget* widget, QStyleHintReturn* returnData) const override {
		if (vtbl->styleHint == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		QStyle::StyleHint stylehint_ret = stylehint;
		int sigval1 = static_cast<int>(stylehint_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;
		QStyleHintReturn* sigval4 = returnData;

		int callback_return_value = vtbl->styleHint(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QPixmap standardPixmap(QStyle::StandardPixmap standardPixmap, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->standardPixmap == 0) {
			return QPixmap(); // Pure virtual, there is no base we can call
		}

		QStyle::StandardPixmap standardPixmap_ret = standardPixmap;
		int sigval1 = static_cast<int>(standardPixmap_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		QPixmap* callback_return_value = vtbl->standardPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QIcon standardIcon(QStyle::StandardPixmap standardIcon, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->standardIcon == 0) {
			return QIcon(); // Pure virtual, there is no base we can call
		}

		QStyle::StandardPixmap standardIcon_ret = standardIcon;
		int sigval1 = static_cast<int>(standardIcon_ret);
		QStyleOption* sigval2 = (QStyleOption*) option;
		QWidget* sigval3 = (QWidget*) widget;

		QIcon* callback_return_value = vtbl->standardIcon(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap& pixmap, const QStyleOption* opt) const override {
		if (vtbl->generatedIconPixmap == 0) {
			return QPixmap(); // Pure virtual, there is no base we can call
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

	// Subclass to allow providing a Go implementation
	virtual int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->layoutSpacing == 0) {
			return 0; // Pure virtual, there is no base we can call
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

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStyle::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStyle_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStyle::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStyle::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStyle::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStyle::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStyle::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStyle::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QStyle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QStyle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QStyle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QStyle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QStyle* QStyle_new(struct QStyle_VTable* vtbl) {
	return new VirtualQStyle(vtbl);
}

void QStyle_virtbase(QStyle* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QStyle_metaObject(const QStyle* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStyle_metacast(QStyle* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStyle_metacall(QStyle* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStyle_tr(const char* s) {
	QString _ret = QStyle::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyle_name(const QStyle* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStyle_polish(QStyle* self, QWidget* widget) {
	self->polish(widget);
}

void QStyle_unpolish(QStyle* self, QWidget* widget) {
	self->unpolish(widget);
}

void QStyle_polishWithApplication(QStyle* self, QApplication* application) {
	self->polish(application);
}

void QStyle_unpolishWithApplication(QStyle* self, QApplication* application) {
	self->unpolish(application);
}

void QStyle_polishWithPalette(QStyle* self, QPalette* palette) {
	self->polish(*palette);
}

QRect* QStyle_itemTextRect(const QStyle* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRect(self->itemTextRect(*fm, *r, static_cast<int>(flags), enabled, text_QString));
}

QRect* QStyle_itemPixmapRect(const QStyle* self, QRect* r, int flags, QPixmap* pixmap) {
	return new QRect(self->itemPixmapRect(*r, static_cast<int>(flags), *pixmap));
}

void QStyle_drawItemText(const QStyle* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->drawItemText(painter, *rect, static_cast<int>(flags), *pal, enabled, text_QString, static_cast<QPalette::ColorRole>(textRole));
}

void QStyle_drawItemPixmap(const QStyle* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) {
	self->drawItemPixmap(painter, *rect, static_cast<int>(alignment), *pixmap);
}

QPalette* QStyle_standardPalette(const QStyle* self) {
	return new QPalette(self->standardPalette());
}

void QStyle_drawPrimitive(const QStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w) {
	self->drawPrimitive(static_cast<QStyle::PrimitiveElement>(pe), opt, p, w);
}

void QStyle_drawControl(const QStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w) {
	self->drawControl(static_cast<QStyle::ControlElement>(element), opt, p, w);
}

QRect* QStyle_subElementRect(const QStyle* self, int subElement, QStyleOption* option, QWidget* widget) {
	return new QRect(self->subElementRect(static_cast<QStyle::SubElement>(subElement), option, widget));
}

void QStyle_drawComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* widget) {
	self->drawComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, p, widget);
}

int QStyle_hitTestComplexControl(const QStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* widget) {
	QStyle::SubControl _ret = self->hitTestComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, *pt, widget);
	return static_cast<int>(_ret);
}

QRect* QStyle_subControlRect(const QStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* widget) {
	return new QRect(self->subControlRect(static_cast<QStyle::ComplexControl>(cc), opt, static_cast<QStyle::SubControl>(sc), widget));
}

int QStyle_pixelMetric(const QStyle* self, int metric, QStyleOption* option, QWidget* widget) {
	return self->pixelMetric(static_cast<QStyle::PixelMetric>(metric), option, widget);
}

QSize* QStyle_sizeFromContents(const QStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* w) {
	return new QSize(self->sizeFromContents(static_cast<QStyle::ContentsType>(ct), opt, *contentsSize, w));
}

int QStyle_styleHint(const QStyle* self, int stylehint, QStyleOption* opt, QWidget* widget, QStyleHintReturn* returnData) {
	return self->styleHint(static_cast<QStyle::StyleHint>(stylehint), opt, widget, returnData);
}

QPixmap* QStyle_standardPixmap(const QStyle* self, int standardPixmap, QStyleOption* opt, QWidget* widget) {
	return new QPixmap(self->standardPixmap(static_cast<QStyle::StandardPixmap>(standardPixmap), opt, widget));
}

QIcon* QStyle_standardIcon(const QStyle* self, int standardIcon, QStyleOption* option, QWidget* widget) {
	return new QIcon(self->standardIcon(static_cast<QStyle::StandardPixmap>(standardIcon), option, widget));
}

QPixmap* QStyle_generatedIconPixmap(const QStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt) {
	return new QPixmap(self->generatedIconPixmap(static_cast<QIcon::Mode>(iconMode), *pixmap, opt));
}

QRect* QStyle_visualRect(int direction, QRect* boundingRect, QRect* logicalRect) {
	return new QRect(QStyle::visualRect(static_cast<Qt::LayoutDirection>(direction), *boundingRect, *logicalRect));
}

QPoint* QStyle_visualPos(int direction, QRect* boundingRect, QPoint* logicalPos) {
	return new QPoint(QStyle::visualPos(static_cast<Qt::LayoutDirection>(direction), *boundingRect, *logicalPos));
}

int QStyle_sliderPositionFromValue(int min, int max, int val, int space) {
	return QStyle::sliderPositionFromValue(static_cast<int>(min), static_cast<int>(max), static_cast<int>(val), static_cast<int>(space));
}

int QStyle_sliderValueFromPosition(int min, int max, int pos, int space) {
	return QStyle::sliderValueFromPosition(static_cast<int>(min), static_cast<int>(max), static_cast<int>(pos), static_cast<int>(space));
}

int QStyle_visualAlignment(int direction, int alignment) {
	Qt::Alignment _ret = QStyle::visualAlignment(static_cast<Qt::LayoutDirection>(direction), static_cast<Qt::Alignment>(alignment));
	return static_cast<int>(_ret);
}

QRect* QStyle_alignedRect(int direction, int alignment, QSize* size, QRect* rectangle) {
	return new QRect(QStyle::alignedRect(static_cast<Qt::LayoutDirection>(direction), static_cast<Qt::Alignment>(alignment), *size, *rectangle));
}

int QStyle_layoutSpacing(const QStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) {
	return self->layoutSpacing(static_cast<QSizePolicy::ControlType>(control1), static_cast<QSizePolicy::ControlType>(control2), static_cast<Qt::Orientation>(orientation), option, widget);
}

int QStyle_combinedLayoutSpacing(const QStyle* self, int controls1, int controls2, int orientation) {
	return self->combinedLayoutSpacing(static_cast<QSizePolicy::ControlTypes>(controls1), static_cast<QSizePolicy::ControlTypes>(controls2), static_cast<Qt::Orientation>(orientation));
}

QStyle* QStyle_proxy(const QStyle* self) {
	return (QStyle*) self->proxy();
}

struct miqt_string QStyle_tr2(const char* s, const char* c) {
	QString _ret = QStyle::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyle_tr3(const char* s, const char* c, int n) {
	QString _ret = QStyle::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStyle_sliderPositionFromValue5(int min, int max, int val, int space, bool upsideDown) {
	return QStyle::sliderPositionFromValue(static_cast<int>(min), static_cast<int>(max), static_cast<int>(val), static_cast<int>(space), upsideDown);
}

int QStyle_sliderValueFromPosition5(int min, int max, int pos, int space, bool upsideDown) {
	return QStyle::sliderValueFromPosition(static_cast<int>(min), static_cast<int>(max), static_cast<int>(pos), static_cast<int>(space), upsideDown);
}

int QStyle_combinedLayoutSpacing4(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option) {
	return self->combinedLayoutSpacing(static_cast<QSizePolicy::ControlTypes>(controls1), static_cast<QSizePolicy::ControlTypes>(controls2), static_cast<Qt::Orientation>(orientation), option);
}

int QStyle_combinedLayoutSpacing5(const QStyle* self, int controls1, int controls2, int orientation, QStyleOption* option, QWidget* widget) {
	return self->combinedLayoutSpacing(static_cast<QSizePolicy::ControlTypes>(controls1), static_cast<QSizePolicy::ControlTypes>(controls2), static_cast<Qt::Orientation>(orientation), option, widget);
}

QMetaObject* QStyle_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStyle*)(self) )->QStyle::metaObject();

}

void* QStyle_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStyle*)(self) )->QStyle::qt_metacast(param1);

}

int QStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStyle*)(self) )->QStyle::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QStyle_virtualbase_polish(void* self, QWidget* widget) {

	( (VirtualQStyle*)(self) )->QStyle::polish(widget);

}

void QStyle_virtualbase_unpolish(void* self, QWidget* widget) {

	( (VirtualQStyle*)(self) )->QStyle::unpolish(widget);

}

void QStyle_virtualbase_polishWithApplication(void* self, QApplication* application) {

	( (VirtualQStyle*)(self) )->QStyle::polish(application);

}

void QStyle_virtualbase_unpolishWithApplication(void* self, QApplication* application) {

	( (VirtualQStyle*)(self) )->QStyle::unpolish(application);

}

void QStyle_virtualbase_polishWithPalette(void* self, QPalette* palette) {

	( (VirtualQStyle*)(self) )->QStyle::polish(*palette);

}

QRect* QStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QRect(( (const VirtualQStyle*)(self) )->QStyle::itemTextRect(*fm, *r, static_cast<int>(flags), enabled, text_QString));

}

QRect* QStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap) {

	return new QRect(( (const VirtualQStyle*)(self) )->QStyle::itemPixmapRect(*r, static_cast<int>(flags), *pixmap));

}

void QStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	( (const VirtualQStyle*)(self) )->QStyle::drawItemText(painter, *rect, static_cast<int>(flags), *pal, enabled, text_QString, static_cast<QPalette::ColorRole>(textRole));

}

void QStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) {

	( (const VirtualQStyle*)(self) )->QStyle::drawItemPixmap(painter, *rect, static_cast<int>(alignment), *pixmap);

}

QPalette* QStyle_virtualbase_standardPalette(const void* self) {

	return new QPalette(( (const VirtualQStyle*)(self) )->QStyle::standardPalette());

}

bool QStyle_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQStyle*)(self) )->QStyle::event(event);

}

bool QStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStyle*)(self) )->QStyle::eventFilter(watched, event);

}

void QStyle_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStyle*)(self) )->QStyle::timerEvent(event);

}

void QStyle_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQStyle*)(self) )->QStyle::childEvent(event);

}

void QStyle_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStyle*)(self) )->QStyle::customEvent(event);

}

void QStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStyle*)(self) )->QStyle::connectNotify(*signal);

}

void QStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStyle*)(self) )->QStyle::disconnectNotify(*signal);

}

const QMetaObject* QStyle_staticMetaObject() { return &QStyle::staticMetaObject; }
QObject* QStyle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQStyle* self_cast = dynamic_cast<VirtualQStyle*>( (QStyle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QStyle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQStyle* self_cast = dynamic_cast<VirtualQStyle*>( (QStyle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QStyle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQStyle* self_cast = dynamic_cast<VirtualQStyle*>( (QStyle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QStyle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQStyle* self_cast = dynamic_cast<VirtualQStyle*>( (QStyle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QStyle_delete(QStyle* self) {
	delete self;
}

