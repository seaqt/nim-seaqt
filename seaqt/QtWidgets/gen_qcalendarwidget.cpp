#include <QActionEvent>
#include <QByteArray>
#include <QCalendar>
#include <QCalendarWidget>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDate>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTextCharFormat>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcalendarwidget.h>
#include "gen_qcalendarwidget.h"
class VirtualQCalendarWidget final : public QCalendarWidget {
	const QCalendarWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QCalendarWidget_VTable* QCalendarWidget_vtbl(const VirtualQCalendarWidget* self);
	friend void* QCalendarWidget_vdata(const VirtualQCalendarWidget* self);
	friend void QCalendarWidget_setVdata(VirtualQCalendarWidget* self, void* vdata);

	VirtualQCalendarWidget(const QCalendarWidget_VTable* vtbl, void* vdata, QWidget* parent): QCalendarWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCalendarWidget(const QCalendarWidget_VTable* vtbl, void* vdata): QCalendarWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCalendarWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCalendarWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QCalendarWidget_virtualbase_metaObject(const VirtualQCalendarWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCalendarWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QCalendarWidget_virtualbase_metacast(VirtualQCalendarWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCalendarWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_metacall(VirtualQCalendarWidget* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCalendarWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCalendarWidget_virtualbase_sizeHint(const VirtualQCalendarWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCalendarWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCalendarWidget_virtualbase_minimumSizeHint(const VirtualQCalendarWidget* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCalendarWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_event(VirtualQCalendarWidget* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCalendarWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_eventFilter(VirtualQCalendarWidget* self, QObject* watched, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QCalendarWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mousePressEvent(VirtualQCalendarWidget* self, QMouseEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCalendarWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_resizeEvent(VirtualQCalendarWidget* self, QResizeEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QCalendarWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_keyPressEvent(VirtualQCalendarWidget* self, QKeyEvent* event);

	virtual void paintCell(QPainter* painter, const QRect& rect, QDate date) const override {
		if (vtbl->paintCell == 0) {
			QCalendarWidget::paintCell(painter, rect, date);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		QDate* sigval3 = new QDate(date);

		vtbl->paintCell(this, sigval1, sigval2, sigval3);

	}

	friend void QCalendarWidget_virtualbase_paintCell(const VirtualQCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCalendarWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_devType(const VirtualQCalendarWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCalendarWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_setVisible(VirtualQCalendarWidget* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCalendarWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_heightForWidth(const VirtualQCalendarWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCalendarWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_hasHeightForWidth(const VirtualQCalendarWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCalendarWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const VirtualQCalendarWidget* self);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCalendarWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseReleaseEvent(VirtualQCalendarWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCalendarWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseDoubleClickEvent(VirtualQCalendarWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCalendarWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_mouseMoveEvent(VirtualQCalendarWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCalendarWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_wheelEvent(VirtualQCalendarWidget* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCalendarWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_keyReleaseEvent(VirtualQCalendarWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QCalendarWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_focusInEvent(VirtualQCalendarWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QCalendarWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_focusOutEvent(VirtualQCalendarWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCalendarWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_enterEvent(VirtualQCalendarWidget* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCalendarWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_leaveEvent(VirtualQCalendarWidget* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QCalendarWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_paintEvent(VirtualQCalendarWidget* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCalendarWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_moveEvent(VirtualQCalendarWidget* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCalendarWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_closeEvent(VirtualQCalendarWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCalendarWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_contextMenuEvent(VirtualQCalendarWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCalendarWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_tabletEvent(VirtualQCalendarWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCalendarWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_actionEvent(VirtualQCalendarWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCalendarWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragEnterEvent(VirtualQCalendarWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCalendarWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragMoveEvent(VirtualQCalendarWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCalendarWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dragLeaveEvent(VirtualQCalendarWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCalendarWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_dropEvent(VirtualQCalendarWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCalendarWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_showEvent(VirtualQCalendarWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCalendarWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_hideEvent(VirtualQCalendarWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCalendarWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_nativeEvent(VirtualQCalendarWidget* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QCalendarWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_changeEvent(VirtualQCalendarWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCalendarWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCalendarWidget_virtualbase_metric(const VirtualQCalendarWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCalendarWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_initPainter(const VirtualQCalendarWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCalendarWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCalendarWidget_virtualbase_redirected(const VirtualQCalendarWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCalendarWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QCalendarWidget_virtualbase_sharedPainter(const VirtualQCalendarWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCalendarWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_inputMethodEvent(VirtualQCalendarWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCalendarWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const VirtualQCalendarWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCalendarWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QCalendarWidget_virtualbase_focusNextPrevChild(VirtualQCalendarWidget* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCalendarWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_timerEvent(VirtualQCalendarWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCalendarWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_childEvent(VirtualQCalendarWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCalendarWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_customEvent(VirtualQCalendarWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCalendarWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_connectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCalendarWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QCalendarWidget_virtualbase_disconnectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCalendarWidget_protectedbase_updateCell(VirtualQCalendarWidget* self, QDate* date);
	friend void QCalendarWidget_protectedbase_updateCells(VirtualQCalendarWidget* self);
	friend void QCalendarWidget_protectedbase_updateMicroFocus(VirtualQCalendarWidget* self);
	friend void QCalendarWidget_protectedbase_create(VirtualQCalendarWidget* self);
	friend void QCalendarWidget_protectedbase_destroy(VirtualQCalendarWidget* self);
	friend bool QCalendarWidget_protectedbase_focusNextChild(VirtualQCalendarWidget* self);
	friend bool QCalendarWidget_protectedbase_focusPreviousChild(VirtualQCalendarWidget* self);
	friend QObject* QCalendarWidget_protectedbase_sender(const VirtualQCalendarWidget* self);
	friend int QCalendarWidget_protectedbase_senderSignalIndex(const VirtualQCalendarWidget* self);
	friend int QCalendarWidget_protectedbase_receivers(const VirtualQCalendarWidget* self, const char* signal);
	friend bool QCalendarWidget_protectedbase_isSignalConnected(const VirtualQCalendarWidget* self, QMetaMethod* signal);
};

VirtualQCalendarWidget* QCalendarWidget_new(const QCalendarWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQCalendarWidget(vtbl, vdata, parent);
}

VirtualQCalendarWidget* QCalendarWidget_new2(const QCalendarWidget_VTable* vtbl, void* vdata) {
	return new VirtualQCalendarWidget(vtbl, vdata);
}

void QCalendarWidget_virtbase(QCalendarWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QCalendarWidget_metaObject(const QCalendarWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCalendarWidget_metacast(QCalendarWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCalendarWidget_metacall(QCalendarWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCalendarWidget_tr(const char* s) {
	QString _ret = QCalendarWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QCalendarWidget_sizeHint(const QCalendarWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QCalendarWidget_minimumSizeHint(const QCalendarWidget* self) {
	return new QSize(self->minimumSizeHint());
}

QDate* QCalendarWidget_selectedDate(const QCalendarWidget* self) {
	return new QDate(self->selectedDate());
}

int QCalendarWidget_yearShown(const QCalendarWidget* self) {
	return self->yearShown();
}

int QCalendarWidget_monthShown(const QCalendarWidget* self) {
	return self->monthShown();
}

QDate* QCalendarWidget_minimumDate(const QCalendarWidget* self) {
	return new QDate(self->minimumDate());
}

void QCalendarWidget_setMinimumDate(QCalendarWidget* self, QDate* date) {
	self->setMinimumDate(*date);
}

QDate* QCalendarWidget_maximumDate(const QCalendarWidget* self) {
	return new QDate(self->maximumDate());
}

void QCalendarWidget_setMaximumDate(QCalendarWidget* self, QDate* date) {
	self->setMaximumDate(*date);
}

int QCalendarWidget_firstDayOfWeek(const QCalendarWidget* self) {
	Qt::DayOfWeek _ret = self->firstDayOfWeek();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setFirstDayOfWeek(QCalendarWidget* self, int dayOfWeek) {
	self->setFirstDayOfWeek(static_cast<Qt::DayOfWeek>(dayOfWeek));
}

bool QCalendarWidget_isNavigationBarVisible(const QCalendarWidget* self) {
	return self->isNavigationBarVisible();
}

bool QCalendarWidget_isGridVisible(const QCalendarWidget* self) {
	return self->isGridVisible();
}

QCalendar* QCalendarWidget_calendar(const QCalendarWidget* self) {
	return new QCalendar(self->calendar());
}

void QCalendarWidget_setCalendar(QCalendarWidget* self, QCalendar* calendar) {
	self->setCalendar(*calendar);
}

int QCalendarWidget_selectionMode(const QCalendarWidget* self) {
	QCalendarWidget::SelectionMode _ret = self->selectionMode();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setSelectionMode(QCalendarWidget* self, int mode) {
	self->setSelectionMode(static_cast<QCalendarWidget::SelectionMode>(mode));
}

int QCalendarWidget_horizontalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::HorizontalHeaderFormat _ret = self->horizontalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setHorizontalHeaderFormat(QCalendarWidget* self, int format) {
	self->setHorizontalHeaderFormat(static_cast<QCalendarWidget::HorizontalHeaderFormat>(format));
}

int QCalendarWidget_verticalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::VerticalHeaderFormat _ret = self->verticalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setVerticalHeaderFormat(QCalendarWidget* self, int format) {
	self->setVerticalHeaderFormat(static_cast<QCalendarWidget::VerticalHeaderFormat>(format));
}

QTextCharFormat* QCalendarWidget_headerTextFormat(const QCalendarWidget* self) {
	return new QTextCharFormat(self->headerTextFormat());
}

void QCalendarWidget_setHeaderTextFormat(QCalendarWidget* self, QTextCharFormat* format) {
	self->setHeaderTextFormat(*format);
}

QTextCharFormat* QCalendarWidget_weekdayTextFormat(const QCalendarWidget* self, int dayOfWeek) {
	return new QTextCharFormat(self->weekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek)));
}

void QCalendarWidget_setWeekdayTextFormat(QCalendarWidget* self, int dayOfWeek, QTextCharFormat* format) {
	self->setWeekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek), *format);
}

struct miqt_map /* of QDate* to QTextCharFormat* */  QCalendarWidget_dateTextFormat(const QCalendarWidget* self) {
	QMap<QDate, QTextCharFormat> _ret = self->dateTextFormat();
	// Convert QMap<> from C++ memory to manually-managed C memory
	QDate** _karr = static_cast<QDate**>(malloc(sizeof(QDate*) * _ret.size()));
	QTextCharFormat** _varr = static_cast<QTextCharFormat**>(malloc(sizeof(QTextCharFormat*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = new QDate(_itr->first);
		_varr[_ctr] = new QTextCharFormat(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QTextCharFormat* QCalendarWidget_dateTextFormatWithDate(const QCalendarWidget* self, QDate* date) {
	return new QTextCharFormat(self->dateTextFormat(*date));
}

void QCalendarWidget_setDateTextFormat(QCalendarWidget* self, QDate* date, QTextCharFormat* format) {
	self->setDateTextFormat(*date, *format);
}

bool QCalendarWidget_isDateEditEnabled(const QCalendarWidget* self) {
	return self->isDateEditEnabled();
}

void QCalendarWidget_setDateEditEnabled(QCalendarWidget* self, bool enable) {
	self->setDateEditEnabled(enable);
}

int QCalendarWidget_dateEditAcceptDelay(const QCalendarWidget* self) {
	return self->dateEditAcceptDelay();
}

void QCalendarWidget_setDateEditAcceptDelay(QCalendarWidget* self, int delay) {
	self->setDateEditAcceptDelay(static_cast<int>(delay));
}

void QCalendarWidget_setSelectedDate(QCalendarWidget* self, QDate* date) {
	self->setSelectedDate(*date);
}

void QCalendarWidget_setDateRange(QCalendarWidget* self, QDate* min, QDate* max) {
	self->setDateRange(*min, *max);
}

void QCalendarWidget_setCurrentPage(QCalendarWidget* self, int year, int month) {
	self->setCurrentPage(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_setGridVisible(QCalendarWidget* self, bool show) {
	self->setGridVisible(show);
}

void QCalendarWidget_setNavigationBarVisible(QCalendarWidget* self, bool visible) {
	self->setNavigationBarVisible(visible);
}

void QCalendarWidget_showNextMonth(QCalendarWidget* self) {
	self->showNextMonth();
}

void QCalendarWidget_showPreviousMonth(QCalendarWidget* self) {
	self->showPreviousMonth();
}

void QCalendarWidget_showNextYear(QCalendarWidget* self) {
	self->showNextYear();
}

void QCalendarWidget_showPreviousYear(QCalendarWidget* self) {
	self->showPreviousYear();
}

void QCalendarWidget_showSelectedDate(QCalendarWidget* self) {
	self->showSelectedDate();
}

void QCalendarWidget_showToday(QCalendarWidget* self) {
	self->showToday();
}

void QCalendarWidget_selectionChanged(QCalendarWidget* self) {
	self->selectionChanged();
}

void QCalendarWidget_connect_selectionChanged(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)()>(&QCalendarWidget::selectionChanged), self, local_caller{slot, callback, release});
}

void QCalendarWidget_clicked(QCalendarWidget* self, QDate* date) {
	self->clicked(*date);
}

void QCalendarWidget_connect_clicked(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDate*);
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			callback(slot, sigval1);
		}
	};
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(QDate)>(&QCalendarWidget::clicked), self, local_caller{slot, callback, release});
}

void QCalendarWidget_activated(QCalendarWidget* self, QDate* date) {
	self->activated(*date);
}

void QCalendarWidget_connect_activated(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDate*);
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			callback(slot, sigval1);
		}
	};
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(QDate)>(&QCalendarWidget::activated), self, local_caller{slot, callback, release});
}

void QCalendarWidget_currentPageChanged(QCalendarWidget* self, int year, int month) {
	self->currentPageChanged(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_connect_currentPageChanged(VirtualQCalendarWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int year, int month) {
			int sigval1 = year;
			int sigval2 = month;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(int, int)>(&QCalendarWidget::currentPageChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QCalendarWidget_tr2(const char* s, const char* c) {
	QString _ret = QCalendarWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QCalendarWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCalendarWidget_virtualbase_metaObject(const VirtualQCalendarWidget* self) {

	return (QMetaObject*) self->QCalendarWidget::metaObject();
}

void* QCalendarWidget_virtualbase_metacast(VirtualQCalendarWidget* self, const char* param1) {

	return self->QCalendarWidget::qt_metacast(param1);
}

int QCalendarWidget_virtualbase_metacall(VirtualQCalendarWidget* self, int param1, int param2, void** param3) {

	return self->QCalendarWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QCalendarWidget_virtualbase_sizeHint(const VirtualQCalendarWidget* self) {

	return new QSize(self->QCalendarWidget::sizeHint());
}

QSize* QCalendarWidget_virtualbase_minimumSizeHint(const VirtualQCalendarWidget* self) {

	return new QSize(self->QCalendarWidget::minimumSizeHint());
}

bool QCalendarWidget_virtualbase_event(VirtualQCalendarWidget* self, QEvent* event) {

	return self->QCalendarWidget::event(event);
}

bool QCalendarWidget_virtualbase_eventFilter(VirtualQCalendarWidget* self, QObject* watched, QEvent* event) {

	return self->QCalendarWidget::eventFilter(watched, event);
}

void QCalendarWidget_virtualbase_mousePressEvent(VirtualQCalendarWidget* self, QMouseEvent* event) {

	self->QCalendarWidget::mousePressEvent(event);
}

void QCalendarWidget_virtualbase_resizeEvent(VirtualQCalendarWidget* self, QResizeEvent* event) {

	self->QCalendarWidget::resizeEvent(event);
}

void QCalendarWidget_virtualbase_keyPressEvent(VirtualQCalendarWidget* self, QKeyEvent* event) {

	self->QCalendarWidget::keyPressEvent(event);
}

void QCalendarWidget_virtualbase_paintCell(const VirtualQCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date) {

	self->QCalendarWidget::paintCell(painter, *rect, *date);
}

int QCalendarWidget_virtualbase_devType(const VirtualQCalendarWidget* self) {

	return self->QCalendarWidget::devType();
}

void QCalendarWidget_virtualbase_setVisible(VirtualQCalendarWidget* self, bool visible) {

	self->QCalendarWidget::setVisible(visible);
}

int QCalendarWidget_virtualbase_heightForWidth(const VirtualQCalendarWidget* self, int param1) {

	return self->QCalendarWidget::heightForWidth(static_cast<int>(param1));
}

bool QCalendarWidget_virtualbase_hasHeightForWidth(const VirtualQCalendarWidget* self) {

	return self->QCalendarWidget::hasHeightForWidth();
}

QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const VirtualQCalendarWidget* self) {

	return self->QCalendarWidget::paintEngine();
}

void QCalendarWidget_virtualbase_mouseReleaseEvent(VirtualQCalendarWidget* self, QMouseEvent* event) {

	self->QCalendarWidget::mouseReleaseEvent(event);
}

void QCalendarWidget_virtualbase_mouseDoubleClickEvent(VirtualQCalendarWidget* self, QMouseEvent* event) {

	self->QCalendarWidget::mouseDoubleClickEvent(event);
}

void QCalendarWidget_virtualbase_mouseMoveEvent(VirtualQCalendarWidget* self, QMouseEvent* event) {

	self->QCalendarWidget::mouseMoveEvent(event);
}

void QCalendarWidget_virtualbase_wheelEvent(VirtualQCalendarWidget* self, QWheelEvent* event) {

	self->QCalendarWidget::wheelEvent(event);
}

void QCalendarWidget_virtualbase_keyReleaseEvent(VirtualQCalendarWidget* self, QKeyEvent* event) {

	self->QCalendarWidget::keyReleaseEvent(event);
}

void QCalendarWidget_virtualbase_focusInEvent(VirtualQCalendarWidget* self, QFocusEvent* event) {

	self->QCalendarWidget::focusInEvent(event);
}

void QCalendarWidget_virtualbase_focusOutEvent(VirtualQCalendarWidget* self, QFocusEvent* event) {

	self->QCalendarWidget::focusOutEvent(event);
}

void QCalendarWidget_virtualbase_enterEvent(VirtualQCalendarWidget* self, QEnterEvent* event) {

	self->QCalendarWidget::enterEvent(event);
}

void QCalendarWidget_virtualbase_leaveEvent(VirtualQCalendarWidget* self, QEvent* event) {

	self->QCalendarWidget::leaveEvent(event);
}

void QCalendarWidget_virtualbase_paintEvent(VirtualQCalendarWidget* self, QPaintEvent* event) {

	self->QCalendarWidget::paintEvent(event);
}

void QCalendarWidget_virtualbase_moveEvent(VirtualQCalendarWidget* self, QMoveEvent* event) {

	self->QCalendarWidget::moveEvent(event);
}

void QCalendarWidget_virtualbase_closeEvent(VirtualQCalendarWidget* self, QCloseEvent* event) {

	self->QCalendarWidget::closeEvent(event);
}

void QCalendarWidget_virtualbase_contextMenuEvent(VirtualQCalendarWidget* self, QContextMenuEvent* event) {

	self->QCalendarWidget::contextMenuEvent(event);
}

void QCalendarWidget_virtualbase_tabletEvent(VirtualQCalendarWidget* self, QTabletEvent* event) {

	self->QCalendarWidget::tabletEvent(event);
}

void QCalendarWidget_virtualbase_actionEvent(VirtualQCalendarWidget* self, QActionEvent* event) {

	self->QCalendarWidget::actionEvent(event);
}

void QCalendarWidget_virtualbase_dragEnterEvent(VirtualQCalendarWidget* self, QDragEnterEvent* event) {

	self->QCalendarWidget::dragEnterEvent(event);
}

void QCalendarWidget_virtualbase_dragMoveEvent(VirtualQCalendarWidget* self, QDragMoveEvent* event) {

	self->QCalendarWidget::dragMoveEvent(event);
}

void QCalendarWidget_virtualbase_dragLeaveEvent(VirtualQCalendarWidget* self, QDragLeaveEvent* event) {

	self->QCalendarWidget::dragLeaveEvent(event);
}

void QCalendarWidget_virtualbase_dropEvent(VirtualQCalendarWidget* self, QDropEvent* event) {

	self->QCalendarWidget::dropEvent(event);
}

void QCalendarWidget_virtualbase_showEvent(VirtualQCalendarWidget* self, QShowEvent* event) {

	self->QCalendarWidget::showEvent(event);
}

void QCalendarWidget_virtualbase_hideEvent(VirtualQCalendarWidget* self, QHideEvent* event) {

	self->QCalendarWidget::hideEvent(event);
}

bool QCalendarWidget_virtualbase_nativeEvent(VirtualQCalendarWidget* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QCalendarWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QCalendarWidget_virtualbase_changeEvent(VirtualQCalendarWidget* self, QEvent* param1) {

	self->QCalendarWidget::changeEvent(param1);
}

int QCalendarWidget_virtualbase_metric(const VirtualQCalendarWidget* self, int param1) {

	return self->QCalendarWidget::metric(static_cast<VirtualQCalendarWidget::PaintDeviceMetric>(param1));
}

void QCalendarWidget_virtualbase_initPainter(const VirtualQCalendarWidget* self, QPainter* painter) {

	self->QCalendarWidget::initPainter(painter);
}

QPaintDevice* QCalendarWidget_virtualbase_redirected(const VirtualQCalendarWidget* self, QPoint* offset) {

	return self->QCalendarWidget::redirected(offset);
}

QPainter* QCalendarWidget_virtualbase_sharedPainter(const VirtualQCalendarWidget* self) {

	return self->QCalendarWidget::sharedPainter();
}

void QCalendarWidget_virtualbase_inputMethodEvent(VirtualQCalendarWidget* self, QInputMethodEvent* param1) {

	self->QCalendarWidget::inputMethodEvent(param1);
}

QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const VirtualQCalendarWidget* self, int param1) {

	return new QVariant(self->QCalendarWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QCalendarWidget_virtualbase_focusNextPrevChild(VirtualQCalendarWidget* self, bool next) {

	return self->QCalendarWidget::focusNextPrevChild(next);
}

void QCalendarWidget_virtualbase_timerEvent(VirtualQCalendarWidget* self, QTimerEvent* event) {

	self->QCalendarWidget::timerEvent(event);
}

void QCalendarWidget_virtualbase_childEvent(VirtualQCalendarWidget* self, QChildEvent* event) {

	self->QCalendarWidget::childEvent(event);
}

void QCalendarWidget_virtualbase_customEvent(VirtualQCalendarWidget* self, QEvent* event) {

	self->QCalendarWidget::customEvent(event);
}

void QCalendarWidget_virtualbase_connectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal) {

	self->QCalendarWidget::connectNotify(*signal);
}

void QCalendarWidget_virtualbase_disconnectNotify(VirtualQCalendarWidget* self, QMetaMethod* signal) {

	self->QCalendarWidget::disconnectNotify(*signal);
}

const QMetaObject* QCalendarWidget_staticMetaObject() { return &QCalendarWidget::staticMetaObject; }

const QCalendarWidget_VTable* QCalendarWidget_vtbl(const VirtualQCalendarWidget* self) { return self->vtbl; }
void* QCalendarWidget_vdata(const VirtualQCalendarWidget* self) { return self->vdata; }
void QCalendarWidget_setVdata(VirtualQCalendarWidget* self, void* vdata) { self->vdata = vdata; }

void QCalendarWidget_protectedbase_updateCell(VirtualQCalendarWidget* self, QDate* date) {
	self->updateCell(*date);
}

void QCalendarWidget_protectedbase_updateCells(VirtualQCalendarWidget* self) {
	self->updateCells();
}

void QCalendarWidget_protectedbase_updateMicroFocus(VirtualQCalendarWidget* self) {
	self->updateMicroFocus();
}

void QCalendarWidget_protectedbase_create(VirtualQCalendarWidget* self) {
	self->create();
}

void QCalendarWidget_protectedbase_destroy(VirtualQCalendarWidget* self) {
	self->destroy();
}

bool QCalendarWidget_protectedbase_focusNextChild(VirtualQCalendarWidget* self) {
	return self->focusNextChild();
}

bool QCalendarWidget_protectedbase_focusPreviousChild(VirtualQCalendarWidget* self) {
	return self->focusPreviousChild();
}

QObject* QCalendarWidget_protectedbase_sender(const VirtualQCalendarWidget* self) {
	return self->sender();
}

int QCalendarWidget_protectedbase_senderSignalIndex(const VirtualQCalendarWidget* self) {
	return self->senderSignalIndex();
}

int QCalendarWidget_protectedbase_receivers(const VirtualQCalendarWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QCalendarWidget_protectedbase_isSignalConnected(const VirtualQCalendarWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QCalendarWidget_delete(QCalendarWidget* self) {
	delete self;
}

