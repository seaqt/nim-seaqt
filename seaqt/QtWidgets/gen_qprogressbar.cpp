#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
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
#include <QProgressBar>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionProgressBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qprogressbar.h>
#include "gen_qprogressbar.h"
class VirtualQProgressBar final : public QProgressBar {
	const QProgressBar_VTable* vtbl;
	void* vdata;
public:
	friend const QProgressBar_VTable* QProgressBar_vtbl(const VirtualQProgressBar* self);
	friend void* QProgressBar_vdata(const VirtualQProgressBar* self);
	friend void QProgressBar_setVdata(VirtualQProgressBar* self, void* vdata);

	VirtualQProgressBar(const QProgressBar_VTable* vtbl, void* vdata, QWidget* parent): QProgressBar(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQProgressBar(const QProgressBar_VTable* vtbl, void* vdata): QProgressBar(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQProgressBar() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProgressBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QProgressBar_virtualbase_metaObject(const VirtualQProgressBar* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProgressBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QProgressBar_virtualbase_metacast(VirtualQProgressBar* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProgressBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_metacall(VirtualQProgressBar* self, int param1, int param2, void** param3);

	virtual QString text() const override {
		if (vtbl->text == 0) {
			return QProgressBar::text();
		}


		struct miqt_string callback_return_value = vtbl->text(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QProgressBar_virtualbase_text(const VirtualQProgressBar* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QProgressBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QProgressBar_virtualbase_sizeHint(const VirtualQProgressBar* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QProgressBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QProgressBar_virtualbase_minimumSizeHint(const VirtualQProgressBar* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QProgressBar::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_event(VirtualQProgressBar* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QProgressBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_paintEvent(VirtualQProgressBar* self, QPaintEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QProgressBar::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_devType(const VirtualQProgressBar* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QProgressBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QProgressBar_virtualbase_setVisible(VirtualQProgressBar* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QProgressBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_heightForWidth(const VirtualQProgressBar* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QProgressBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_hasHeightForWidth(const VirtualQProgressBar* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QProgressBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QProgressBar_virtualbase_paintEngine(const VirtualQProgressBar* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QProgressBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_mousePressEvent(VirtualQProgressBar* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QProgressBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseReleaseEvent(VirtualQProgressBar* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QProgressBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseDoubleClickEvent(VirtualQProgressBar* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QProgressBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseMoveEvent(VirtualQProgressBar* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QProgressBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_wheelEvent(VirtualQProgressBar* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QProgressBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_keyPressEvent(VirtualQProgressBar* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QProgressBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_keyReleaseEvent(VirtualQProgressBar* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QProgressBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_focusInEvent(VirtualQProgressBar* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QProgressBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_focusOutEvent(VirtualQProgressBar* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QProgressBar::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_enterEvent(VirtualQProgressBar* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QProgressBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_leaveEvent(VirtualQProgressBar* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QProgressBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_moveEvent(VirtualQProgressBar* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QProgressBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_resizeEvent(VirtualQProgressBar* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QProgressBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_closeEvent(VirtualQProgressBar* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QProgressBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_contextMenuEvent(VirtualQProgressBar* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QProgressBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_tabletEvent(VirtualQProgressBar* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QProgressBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_actionEvent(VirtualQProgressBar* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QProgressBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragEnterEvent(VirtualQProgressBar* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QProgressBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragMoveEvent(VirtualQProgressBar* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QProgressBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragLeaveEvent(VirtualQProgressBar* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QProgressBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_dropEvent(VirtualQProgressBar* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QProgressBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_showEvent(VirtualQProgressBar* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QProgressBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_hideEvent(VirtualQProgressBar* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QProgressBar::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_nativeEvent(VirtualQProgressBar* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QProgressBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_changeEvent(VirtualQProgressBar* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QProgressBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_metric(const VirtualQProgressBar* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QProgressBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QProgressBar_virtualbase_initPainter(const VirtualQProgressBar* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QProgressBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QProgressBar_virtualbase_redirected(const VirtualQProgressBar* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QProgressBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QProgressBar_virtualbase_sharedPainter(const VirtualQProgressBar* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QProgressBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_inputMethodEvent(VirtualQProgressBar* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QProgressBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QProgressBar_virtualbase_inputMethodQuery(const VirtualQProgressBar* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QProgressBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_focusNextPrevChild(VirtualQProgressBar* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QProgressBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_eventFilter(VirtualQProgressBar* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProgressBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_timerEvent(VirtualQProgressBar* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProgressBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_childEvent(VirtualQProgressBar* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProgressBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QProgressBar_virtualbase_customEvent(VirtualQProgressBar* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProgressBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QProgressBar_virtualbase_connectNotify(VirtualQProgressBar* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProgressBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QProgressBar_virtualbase_disconnectNotify(VirtualQProgressBar* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QProgressBar_protectedbase_initStyleOption(const VirtualQProgressBar* self, QStyleOptionProgressBar* option);
	friend void QProgressBar_protectedbase_updateMicroFocus(VirtualQProgressBar* self);
	friend void QProgressBar_protectedbase_create(VirtualQProgressBar* self);
	friend void QProgressBar_protectedbase_destroy(VirtualQProgressBar* self);
	friend bool QProgressBar_protectedbase_focusNextChild(VirtualQProgressBar* self);
	friend bool QProgressBar_protectedbase_focusPreviousChild(VirtualQProgressBar* self);
	friend QObject* QProgressBar_protectedbase_sender(const VirtualQProgressBar* self);
	friend int QProgressBar_protectedbase_senderSignalIndex(const VirtualQProgressBar* self);
	friend int QProgressBar_protectedbase_receivers(const VirtualQProgressBar* self, const char* signal);
	friend bool QProgressBar_protectedbase_isSignalConnected(const VirtualQProgressBar* self, QMetaMethod* signal);
};

VirtualQProgressBar* QProgressBar_new(const QProgressBar_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQProgressBar(vtbl, vdata, parent);
}

VirtualQProgressBar* QProgressBar_new2(const QProgressBar_VTable* vtbl, void* vdata) {
	return new VirtualQProgressBar(vtbl, vdata);
}

void QProgressBar_virtbase(QProgressBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QProgressBar_metaObject(const QProgressBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProgressBar_metacast(QProgressBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProgressBar_metacall(QProgressBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProgressBar_tr(const char* s) {
	QString _ret = QProgressBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressBar_trUtf8(const char* s) {
	QString _ret = QProgressBar::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QProgressBar_minimum(const QProgressBar* self) {
	return self->minimum();
}

int QProgressBar_maximum(const QProgressBar* self) {
	return self->maximum();
}

int QProgressBar_value(const QProgressBar* self) {
	return self->value();
}

struct miqt_string QProgressBar_text(const QProgressBar* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressBar_setTextVisible(QProgressBar* self, bool visible) {
	self->setTextVisible(visible);
}

bool QProgressBar_isTextVisible(const QProgressBar* self) {
	return self->isTextVisible();
}

int QProgressBar_alignment(const QProgressBar* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QProgressBar_setAlignment(QProgressBar* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

QSize* QProgressBar_sizeHint(const QProgressBar* self) {
	return new QSize(self->sizeHint());
}

QSize* QProgressBar_minimumSizeHint(const QProgressBar* self) {
	return new QSize(self->minimumSizeHint());
}

int QProgressBar_orientation(const QProgressBar* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QProgressBar_setInvertedAppearance(QProgressBar* self, bool invert) {
	self->setInvertedAppearance(invert);
}

bool QProgressBar_invertedAppearance(const QProgressBar* self) {
	return self->invertedAppearance();
}

void QProgressBar_setTextDirection(QProgressBar* self, int textDirection) {
	self->setTextDirection(static_cast<QProgressBar::Direction>(textDirection));
}

int QProgressBar_textDirection(const QProgressBar* self) {
	QProgressBar::Direction _ret = self->textDirection();
	return static_cast<int>(_ret);
}

void QProgressBar_setFormat(QProgressBar* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	self->setFormat(format_QString);
}

void QProgressBar_resetFormat(QProgressBar* self) {
	self->resetFormat();
}

struct miqt_string QProgressBar_format(const QProgressBar* self) {
	QString _ret = self->format();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressBar_reset(QProgressBar* self) {
	self->reset();
}

void QProgressBar_setRange(QProgressBar* self, int minimum, int maximum) {
	self->setRange(static_cast<int>(minimum), static_cast<int>(maximum));
}

void QProgressBar_setMinimum(QProgressBar* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

void QProgressBar_setMaximum(QProgressBar* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

void QProgressBar_setValue(QProgressBar* self, int value) {
	self->setValue(static_cast<int>(value));
}

void QProgressBar_setOrientation(QProgressBar* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void QProgressBar_valueChanged(QProgressBar* self, int value) {
	self->valueChanged(static_cast<int>(value));
}

void QProgressBar_connect_valueChanged(VirtualQProgressBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQProgressBar::connect(self, static_cast<void (QProgressBar::*)(int)>(&QProgressBar::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QProgressBar_tr2(const char* s, const char* c) {
	QString _ret = QProgressBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QProgressBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressBar_trUtf82(const char* s, const char* c) {
	QString _ret = QProgressBar::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressBar_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QProgressBar::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QProgressBar_virtualbase_metaObject(const VirtualQProgressBar* self) {

	return (QMetaObject*) self->QProgressBar::metaObject();
}

void* QProgressBar_virtualbase_metacast(VirtualQProgressBar* self, const char* param1) {

	return self->QProgressBar::qt_metacast(param1);
}

int QProgressBar_virtualbase_metacall(VirtualQProgressBar* self, int param1, int param2, void** param3) {

	return self->QProgressBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProgressBar_virtualbase_text(const VirtualQProgressBar* self) {

	QString _ret = self->QProgressBar::text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QProgressBar_virtualbase_sizeHint(const VirtualQProgressBar* self) {

	return new QSize(self->QProgressBar::sizeHint());
}

QSize* QProgressBar_virtualbase_minimumSizeHint(const VirtualQProgressBar* self) {

	return new QSize(self->QProgressBar::minimumSizeHint());
}

bool QProgressBar_virtualbase_event(VirtualQProgressBar* self, QEvent* e) {

	return self->QProgressBar::event(e);
}

void QProgressBar_virtualbase_paintEvent(VirtualQProgressBar* self, QPaintEvent* param1) {

	self->QProgressBar::paintEvent(param1);
}

int QProgressBar_virtualbase_devType(const VirtualQProgressBar* self) {

	return self->QProgressBar::devType();
}

void QProgressBar_virtualbase_setVisible(VirtualQProgressBar* self, bool visible) {

	self->QProgressBar::setVisible(visible);
}

int QProgressBar_virtualbase_heightForWidth(const VirtualQProgressBar* self, int param1) {

	return self->QProgressBar::heightForWidth(static_cast<int>(param1));
}

bool QProgressBar_virtualbase_hasHeightForWidth(const VirtualQProgressBar* self) {

	return self->QProgressBar::hasHeightForWidth();
}

QPaintEngine* QProgressBar_virtualbase_paintEngine(const VirtualQProgressBar* self) {

	return self->QProgressBar::paintEngine();
}

void QProgressBar_virtualbase_mousePressEvent(VirtualQProgressBar* self, QMouseEvent* event) {

	self->QProgressBar::mousePressEvent(event);
}

void QProgressBar_virtualbase_mouseReleaseEvent(VirtualQProgressBar* self, QMouseEvent* event) {

	self->QProgressBar::mouseReleaseEvent(event);
}

void QProgressBar_virtualbase_mouseDoubleClickEvent(VirtualQProgressBar* self, QMouseEvent* event) {

	self->QProgressBar::mouseDoubleClickEvent(event);
}

void QProgressBar_virtualbase_mouseMoveEvent(VirtualQProgressBar* self, QMouseEvent* event) {

	self->QProgressBar::mouseMoveEvent(event);
}

void QProgressBar_virtualbase_wheelEvent(VirtualQProgressBar* self, QWheelEvent* event) {

	self->QProgressBar::wheelEvent(event);
}

void QProgressBar_virtualbase_keyPressEvent(VirtualQProgressBar* self, QKeyEvent* event) {

	self->QProgressBar::keyPressEvent(event);
}

void QProgressBar_virtualbase_keyReleaseEvent(VirtualQProgressBar* self, QKeyEvent* event) {

	self->QProgressBar::keyReleaseEvent(event);
}

void QProgressBar_virtualbase_focusInEvent(VirtualQProgressBar* self, QFocusEvent* event) {

	self->QProgressBar::focusInEvent(event);
}

void QProgressBar_virtualbase_focusOutEvent(VirtualQProgressBar* self, QFocusEvent* event) {

	self->QProgressBar::focusOutEvent(event);
}

void QProgressBar_virtualbase_enterEvent(VirtualQProgressBar* self, QEvent* event) {

	self->QProgressBar::enterEvent(event);
}

void QProgressBar_virtualbase_leaveEvent(VirtualQProgressBar* self, QEvent* event) {

	self->QProgressBar::leaveEvent(event);
}

void QProgressBar_virtualbase_moveEvent(VirtualQProgressBar* self, QMoveEvent* event) {

	self->QProgressBar::moveEvent(event);
}

void QProgressBar_virtualbase_resizeEvent(VirtualQProgressBar* self, QResizeEvent* event) {

	self->QProgressBar::resizeEvent(event);
}

void QProgressBar_virtualbase_closeEvent(VirtualQProgressBar* self, QCloseEvent* event) {

	self->QProgressBar::closeEvent(event);
}

void QProgressBar_virtualbase_contextMenuEvent(VirtualQProgressBar* self, QContextMenuEvent* event) {

	self->QProgressBar::contextMenuEvent(event);
}

void QProgressBar_virtualbase_tabletEvent(VirtualQProgressBar* self, QTabletEvent* event) {

	self->QProgressBar::tabletEvent(event);
}

void QProgressBar_virtualbase_actionEvent(VirtualQProgressBar* self, QActionEvent* event) {

	self->QProgressBar::actionEvent(event);
}

void QProgressBar_virtualbase_dragEnterEvent(VirtualQProgressBar* self, QDragEnterEvent* event) {

	self->QProgressBar::dragEnterEvent(event);
}

void QProgressBar_virtualbase_dragMoveEvent(VirtualQProgressBar* self, QDragMoveEvent* event) {

	self->QProgressBar::dragMoveEvent(event);
}

void QProgressBar_virtualbase_dragLeaveEvent(VirtualQProgressBar* self, QDragLeaveEvent* event) {

	self->QProgressBar::dragLeaveEvent(event);
}

void QProgressBar_virtualbase_dropEvent(VirtualQProgressBar* self, QDropEvent* event) {

	self->QProgressBar::dropEvent(event);
}

void QProgressBar_virtualbase_showEvent(VirtualQProgressBar* self, QShowEvent* event) {

	self->QProgressBar::showEvent(event);
}

void QProgressBar_virtualbase_hideEvent(VirtualQProgressBar* self, QHideEvent* event) {

	self->QProgressBar::hideEvent(event);
}

bool QProgressBar_virtualbase_nativeEvent(VirtualQProgressBar* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QProgressBar::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QProgressBar_virtualbase_changeEvent(VirtualQProgressBar* self, QEvent* param1) {

	self->QProgressBar::changeEvent(param1);
}

int QProgressBar_virtualbase_metric(const VirtualQProgressBar* self, int param1) {

	return self->QProgressBar::metric(static_cast<VirtualQProgressBar::PaintDeviceMetric>(param1));
}

void QProgressBar_virtualbase_initPainter(const VirtualQProgressBar* self, QPainter* painter) {

	self->QProgressBar::initPainter(painter);
}

QPaintDevice* QProgressBar_virtualbase_redirected(const VirtualQProgressBar* self, QPoint* offset) {

	return self->QProgressBar::redirected(offset);
}

QPainter* QProgressBar_virtualbase_sharedPainter(const VirtualQProgressBar* self) {

	return self->QProgressBar::sharedPainter();
}

void QProgressBar_virtualbase_inputMethodEvent(VirtualQProgressBar* self, QInputMethodEvent* param1) {

	self->QProgressBar::inputMethodEvent(param1);
}

QVariant* QProgressBar_virtualbase_inputMethodQuery(const VirtualQProgressBar* self, int param1) {

	return new QVariant(self->QProgressBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QProgressBar_virtualbase_focusNextPrevChild(VirtualQProgressBar* self, bool next) {

	return self->QProgressBar::focusNextPrevChild(next);
}

bool QProgressBar_virtualbase_eventFilter(VirtualQProgressBar* self, QObject* watched, QEvent* event) {

	return self->QProgressBar::eventFilter(watched, event);
}

void QProgressBar_virtualbase_timerEvent(VirtualQProgressBar* self, QTimerEvent* event) {

	self->QProgressBar::timerEvent(event);
}

void QProgressBar_virtualbase_childEvent(VirtualQProgressBar* self, QChildEvent* event) {

	self->QProgressBar::childEvent(event);
}

void QProgressBar_virtualbase_customEvent(VirtualQProgressBar* self, QEvent* event) {

	self->QProgressBar::customEvent(event);
}

void QProgressBar_virtualbase_connectNotify(VirtualQProgressBar* self, QMetaMethod* signal) {

	self->QProgressBar::connectNotify(*signal);
}

void QProgressBar_virtualbase_disconnectNotify(VirtualQProgressBar* self, QMetaMethod* signal) {

	self->QProgressBar::disconnectNotify(*signal);
}

const QMetaObject* QProgressBar_staticMetaObject() { return &QProgressBar::staticMetaObject; }

const QProgressBar_VTable* QProgressBar_vtbl(const VirtualQProgressBar* self) { return self->vtbl; }
void* QProgressBar_vdata(const VirtualQProgressBar* self) { return self->vdata; }
void QProgressBar_setVdata(VirtualQProgressBar* self, void* vdata) { self->vdata = vdata; }

void QProgressBar_protectedbase_initStyleOption(const VirtualQProgressBar* self, QStyleOptionProgressBar* option) {
	self->initStyleOption(option);
}

void QProgressBar_protectedbase_updateMicroFocus(VirtualQProgressBar* self) {
	self->updateMicroFocus();
}

void QProgressBar_protectedbase_create(VirtualQProgressBar* self) {
	self->create();
}

void QProgressBar_protectedbase_destroy(VirtualQProgressBar* self) {
	self->destroy();
}

bool QProgressBar_protectedbase_focusNextChild(VirtualQProgressBar* self) {
	return self->focusNextChild();
}

bool QProgressBar_protectedbase_focusPreviousChild(VirtualQProgressBar* self) {
	return self->focusPreviousChild();
}

QObject* QProgressBar_protectedbase_sender(const VirtualQProgressBar* self) {
	return self->sender();
}

int QProgressBar_protectedbase_senderSignalIndex(const VirtualQProgressBar* self) {
	return self->senderSignalIndex();
}

int QProgressBar_protectedbase_receivers(const VirtualQProgressBar* self, const char* signal) {
	return self->receivers(signal);
}

bool QProgressBar_protectedbase_isSignalConnected(const VirtualQProgressBar* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QProgressBar_delete(QProgressBar* self) {
	delete self;
}

