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
#include <QGroupBox>
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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionGroupBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qgroupbox.h>
#include "gen_qgroupbox.h"
class VirtualQGroupBox final : public QGroupBox {
	const QGroupBox_VTable* vtbl;
	void* vdata;
public:
	friend const QGroupBox_VTable* QGroupBox_vtbl(const VirtualQGroupBox* self);
	friend void* QGroupBox_vdata(const VirtualQGroupBox* self);
	friend void QGroupBox_setVdata(VirtualQGroupBox* self, void* vdata);

	VirtualQGroupBox(const QGroupBox_VTable* vtbl, void* vdata, QWidget* parent): QGroupBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGroupBox(const QGroupBox_VTable* vtbl, void* vdata): QGroupBox(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGroupBox(const QGroupBox_VTable* vtbl, void* vdata, const QString& title): QGroupBox(title), vtbl(vtbl), vdata(vdata) {}
	VirtualQGroupBox(const QGroupBox_VTable* vtbl, void* vdata, const QString& title, QWidget* parent): QGroupBox(title, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGroupBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGroupBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGroupBox_virtualbase_metaObject(const VirtualQGroupBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGroupBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGroupBox_virtualbase_metacast(VirtualQGroupBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGroupBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGroupBox_virtualbase_metacall(VirtualQGroupBox* self, int param1, int param2, void** param3);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QGroupBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGroupBox_virtualbase_minimumSizeHint(const VirtualQGroupBox* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGroupBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGroupBox_virtualbase_event(VirtualQGroupBox* self, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGroupBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_childEvent(VirtualQGroupBox* self, QChildEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGroupBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_resizeEvent(VirtualQGroupBox* self, QResizeEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QGroupBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_paintEvent(VirtualQGroupBox* self, QPaintEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGroupBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_focusInEvent(VirtualQGroupBox* self, QFocusEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGroupBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_changeEvent(VirtualQGroupBox* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGroupBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_mousePressEvent(VirtualQGroupBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGroupBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_mouseMoveEvent(VirtualQGroupBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGroupBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_mouseReleaseEvent(VirtualQGroupBox* self, QMouseEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QGroupBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGroupBox_virtualbase_devType(const VirtualQGroupBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QGroupBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QGroupBox_virtualbase_setVisible(VirtualQGroupBox* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QGroupBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QGroupBox_virtualbase_sizeHint(const VirtualQGroupBox* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QGroupBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGroupBox_virtualbase_heightForWidth(const VirtualQGroupBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QGroupBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QGroupBox_virtualbase_hasHeightForWidth(const VirtualQGroupBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QGroupBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QGroupBox_virtualbase_paintEngine(const VirtualQGroupBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGroupBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_mouseDoubleClickEvent(VirtualQGroupBox* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGroupBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_wheelEvent(VirtualQGroupBox* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGroupBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_keyPressEvent(VirtualQGroupBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGroupBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_keyReleaseEvent(VirtualQGroupBox* self, QKeyEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGroupBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_focusOutEvent(VirtualQGroupBox* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QGroupBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_enterEvent(VirtualQGroupBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QGroupBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_leaveEvent(VirtualQGroupBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGroupBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_moveEvent(VirtualQGroupBox* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGroupBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_closeEvent(VirtualQGroupBox* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGroupBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_contextMenuEvent(VirtualQGroupBox* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QGroupBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_tabletEvent(VirtualQGroupBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QGroupBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_actionEvent(VirtualQGroupBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGroupBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_dragEnterEvent(VirtualQGroupBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGroupBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_dragMoveEvent(VirtualQGroupBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGroupBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_dragLeaveEvent(VirtualQGroupBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGroupBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_dropEvent(VirtualQGroupBox* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGroupBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_showEvent(VirtualQGroupBox* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGroupBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_hideEvent(VirtualQGroupBox* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QGroupBox::nativeEvent(eventType, message, result);
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

	friend bool QGroupBox_virtualbase_nativeEvent(VirtualQGroupBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QGroupBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGroupBox_virtualbase_metric(const VirtualQGroupBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QGroupBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QGroupBox_virtualbase_initPainter(const VirtualQGroupBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QGroupBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QGroupBox_virtualbase_redirected(const VirtualQGroupBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QGroupBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QGroupBox_virtualbase_sharedPainter(const VirtualQGroupBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QGroupBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_inputMethodEvent(VirtualQGroupBox* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGroupBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QGroupBox_virtualbase_inputMethodQuery(const VirtualQGroupBox* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGroupBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QGroupBox_virtualbase_focusNextPrevChild(VirtualQGroupBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGroupBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGroupBox_virtualbase_eventFilter(VirtualQGroupBox* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGroupBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_timerEvent(VirtualQGroupBox* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGroupBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGroupBox_virtualbase_customEvent(VirtualQGroupBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGroupBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGroupBox_virtualbase_connectNotify(VirtualQGroupBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGroupBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGroupBox_virtualbase_disconnectNotify(VirtualQGroupBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGroupBox_protectedbase_initStyleOption(const VirtualQGroupBox* self, QStyleOptionGroupBox* option);
	friend void QGroupBox_protectedbase_updateMicroFocus(VirtualQGroupBox* self);
	friend void QGroupBox_protectedbase_create(VirtualQGroupBox* self);
	friend void QGroupBox_protectedbase_destroy(VirtualQGroupBox* self);
	friend bool QGroupBox_protectedbase_focusNextChild(VirtualQGroupBox* self);
	friend bool QGroupBox_protectedbase_focusPreviousChild(VirtualQGroupBox* self);
	friend QObject* QGroupBox_protectedbase_sender(const VirtualQGroupBox* self);
	friend int QGroupBox_protectedbase_senderSignalIndex(const VirtualQGroupBox* self);
	friend int QGroupBox_protectedbase_receivers(const VirtualQGroupBox* self, const char* signal);
	friend bool QGroupBox_protectedbase_isSignalConnected(const VirtualQGroupBox* self, QMetaMethod* signal);
};

VirtualQGroupBox* QGroupBox_new(const QGroupBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQGroupBox(vtbl, vdata, parent);
}

VirtualQGroupBox* QGroupBox_new2(const QGroupBox_VTable* vtbl, void* vdata) {
	return new VirtualQGroupBox(vtbl, vdata);
}

VirtualQGroupBox* QGroupBox_new3(const QGroupBox_VTable* vtbl, void* vdata, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQGroupBox(vtbl, vdata, title_QString);
}

VirtualQGroupBox* QGroupBox_new4(const QGroupBox_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQGroupBox(vtbl, vdata, title_QString, parent);
}

void QGroupBox_virtbase(QGroupBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QGroupBox_metaObject(const QGroupBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGroupBox_metacast(QGroupBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGroupBox_metacall(QGroupBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGroupBox_tr(const char* s) {
	QString _ret = QGroupBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_trUtf8(const char* s) {
	QString _ret = QGroupBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_title(const QGroupBox* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGroupBox_setTitle(QGroupBox* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

int QGroupBox_alignment(const QGroupBox* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QGroupBox_setAlignment(QGroupBox* self, int alignment) {
	self->setAlignment(static_cast<int>(alignment));
}

QSize* QGroupBox_minimumSizeHint(const QGroupBox* self) {
	return new QSize(self->minimumSizeHint());
}

bool QGroupBox_isFlat(const QGroupBox* self) {
	return self->isFlat();
}

void QGroupBox_setFlat(QGroupBox* self, bool flat) {
	self->setFlat(flat);
}

bool QGroupBox_isCheckable(const QGroupBox* self) {
	return self->isCheckable();
}

void QGroupBox_setCheckable(QGroupBox* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QGroupBox_isChecked(const QGroupBox* self) {
	return self->isChecked();
}

void QGroupBox_setChecked(QGroupBox* self, bool checked) {
	self->setChecked(checked);
}

void QGroupBox_clicked(QGroupBox* self) {
	self->clicked();
}

void QGroupBox_connect_clicked(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::clicked), self, local_caller{slot, callback, release});
}

void QGroupBox_toggled(QGroupBox* self, bool param1) {
	self->toggled(param1);
}

void QGroupBox_connect_toggled(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::toggled), self, local_caller{slot, callback, release});
}

struct miqt_string QGroupBox_tr2(const char* s, const char* c) {
	QString _ret = QGroupBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QGroupBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_trUtf82(const char* s, const char* c) {
	QString _ret = QGroupBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGroupBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGroupBox_clicked1(QGroupBox* self, bool checked) {
	self->clicked(checked);
}

void QGroupBox_connect_clicked1(VirtualQGroupBox* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool checked) {
			bool sigval1 = checked;
			callback(slot, sigval1);
		}
	};
	VirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::clicked), self, local_caller{slot, callback, release});
}

QMetaObject* QGroupBox_virtualbase_metaObject(const VirtualQGroupBox* self) {

	return (QMetaObject*) self->QGroupBox::metaObject();
}

void* QGroupBox_virtualbase_metacast(VirtualQGroupBox* self, const char* param1) {

	return self->QGroupBox::qt_metacast(param1);
}

int QGroupBox_virtualbase_metacall(VirtualQGroupBox* self, int param1, int param2, void** param3) {

	return self->QGroupBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QGroupBox_virtualbase_minimumSizeHint(const VirtualQGroupBox* self) {

	return new QSize(self->QGroupBox::minimumSizeHint());
}

bool QGroupBox_virtualbase_event(VirtualQGroupBox* self, QEvent* event) {

	return self->QGroupBox::event(event);
}

void QGroupBox_virtualbase_childEvent(VirtualQGroupBox* self, QChildEvent* event) {

	self->QGroupBox::childEvent(event);
}

void QGroupBox_virtualbase_resizeEvent(VirtualQGroupBox* self, QResizeEvent* event) {

	self->QGroupBox::resizeEvent(event);
}

void QGroupBox_virtualbase_paintEvent(VirtualQGroupBox* self, QPaintEvent* event) {

	self->QGroupBox::paintEvent(event);
}

void QGroupBox_virtualbase_focusInEvent(VirtualQGroupBox* self, QFocusEvent* event) {

	self->QGroupBox::focusInEvent(event);
}

void QGroupBox_virtualbase_changeEvent(VirtualQGroupBox* self, QEvent* event) {

	self->QGroupBox::changeEvent(event);
}

void QGroupBox_virtualbase_mousePressEvent(VirtualQGroupBox* self, QMouseEvent* event) {

	self->QGroupBox::mousePressEvent(event);
}

void QGroupBox_virtualbase_mouseMoveEvent(VirtualQGroupBox* self, QMouseEvent* event) {

	self->QGroupBox::mouseMoveEvent(event);
}

void QGroupBox_virtualbase_mouseReleaseEvent(VirtualQGroupBox* self, QMouseEvent* event) {

	self->QGroupBox::mouseReleaseEvent(event);
}

int QGroupBox_virtualbase_devType(const VirtualQGroupBox* self) {

	return self->QGroupBox::devType();
}

void QGroupBox_virtualbase_setVisible(VirtualQGroupBox* self, bool visible) {

	self->QGroupBox::setVisible(visible);
}

QSize* QGroupBox_virtualbase_sizeHint(const VirtualQGroupBox* self) {

	return new QSize(self->QGroupBox::sizeHint());
}

int QGroupBox_virtualbase_heightForWidth(const VirtualQGroupBox* self, int param1) {

	return self->QGroupBox::heightForWidth(static_cast<int>(param1));
}

bool QGroupBox_virtualbase_hasHeightForWidth(const VirtualQGroupBox* self) {

	return self->QGroupBox::hasHeightForWidth();
}

QPaintEngine* QGroupBox_virtualbase_paintEngine(const VirtualQGroupBox* self) {

	return self->QGroupBox::paintEngine();
}

void QGroupBox_virtualbase_mouseDoubleClickEvent(VirtualQGroupBox* self, QMouseEvent* event) {

	self->QGroupBox::mouseDoubleClickEvent(event);
}

void QGroupBox_virtualbase_wheelEvent(VirtualQGroupBox* self, QWheelEvent* event) {

	self->QGroupBox::wheelEvent(event);
}

void QGroupBox_virtualbase_keyPressEvent(VirtualQGroupBox* self, QKeyEvent* event) {

	self->QGroupBox::keyPressEvent(event);
}

void QGroupBox_virtualbase_keyReleaseEvent(VirtualQGroupBox* self, QKeyEvent* event) {

	self->QGroupBox::keyReleaseEvent(event);
}

void QGroupBox_virtualbase_focusOutEvent(VirtualQGroupBox* self, QFocusEvent* event) {

	self->QGroupBox::focusOutEvent(event);
}

void QGroupBox_virtualbase_enterEvent(VirtualQGroupBox* self, QEvent* event) {

	self->QGroupBox::enterEvent(event);
}

void QGroupBox_virtualbase_leaveEvent(VirtualQGroupBox* self, QEvent* event) {

	self->QGroupBox::leaveEvent(event);
}

void QGroupBox_virtualbase_moveEvent(VirtualQGroupBox* self, QMoveEvent* event) {

	self->QGroupBox::moveEvent(event);
}

void QGroupBox_virtualbase_closeEvent(VirtualQGroupBox* self, QCloseEvent* event) {

	self->QGroupBox::closeEvent(event);
}

void QGroupBox_virtualbase_contextMenuEvent(VirtualQGroupBox* self, QContextMenuEvent* event) {

	self->QGroupBox::contextMenuEvent(event);
}

void QGroupBox_virtualbase_tabletEvent(VirtualQGroupBox* self, QTabletEvent* event) {

	self->QGroupBox::tabletEvent(event);
}

void QGroupBox_virtualbase_actionEvent(VirtualQGroupBox* self, QActionEvent* event) {

	self->QGroupBox::actionEvent(event);
}

void QGroupBox_virtualbase_dragEnterEvent(VirtualQGroupBox* self, QDragEnterEvent* event) {

	self->QGroupBox::dragEnterEvent(event);
}

void QGroupBox_virtualbase_dragMoveEvent(VirtualQGroupBox* self, QDragMoveEvent* event) {

	self->QGroupBox::dragMoveEvent(event);
}

void QGroupBox_virtualbase_dragLeaveEvent(VirtualQGroupBox* self, QDragLeaveEvent* event) {

	self->QGroupBox::dragLeaveEvent(event);
}

void QGroupBox_virtualbase_dropEvent(VirtualQGroupBox* self, QDropEvent* event) {

	self->QGroupBox::dropEvent(event);
}

void QGroupBox_virtualbase_showEvent(VirtualQGroupBox* self, QShowEvent* event) {

	self->QGroupBox::showEvent(event);
}

void QGroupBox_virtualbase_hideEvent(VirtualQGroupBox* self, QHideEvent* event) {

	self->QGroupBox::hideEvent(event);
}

bool QGroupBox_virtualbase_nativeEvent(VirtualQGroupBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QGroupBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QGroupBox_virtualbase_metric(const VirtualQGroupBox* self, int param1) {

	return self->QGroupBox::metric(static_cast<VirtualQGroupBox::PaintDeviceMetric>(param1));
}

void QGroupBox_virtualbase_initPainter(const VirtualQGroupBox* self, QPainter* painter) {

	self->QGroupBox::initPainter(painter);
}

QPaintDevice* QGroupBox_virtualbase_redirected(const VirtualQGroupBox* self, QPoint* offset) {

	return self->QGroupBox::redirected(offset);
}

QPainter* QGroupBox_virtualbase_sharedPainter(const VirtualQGroupBox* self) {

	return self->QGroupBox::sharedPainter();
}

void QGroupBox_virtualbase_inputMethodEvent(VirtualQGroupBox* self, QInputMethodEvent* param1) {

	self->QGroupBox::inputMethodEvent(param1);
}

QVariant* QGroupBox_virtualbase_inputMethodQuery(const VirtualQGroupBox* self, int param1) {

	return new QVariant(self->QGroupBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QGroupBox_virtualbase_focusNextPrevChild(VirtualQGroupBox* self, bool next) {

	return self->QGroupBox::focusNextPrevChild(next);
}

bool QGroupBox_virtualbase_eventFilter(VirtualQGroupBox* self, QObject* watched, QEvent* event) {

	return self->QGroupBox::eventFilter(watched, event);
}

void QGroupBox_virtualbase_timerEvent(VirtualQGroupBox* self, QTimerEvent* event) {

	self->QGroupBox::timerEvent(event);
}

void QGroupBox_virtualbase_customEvent(VirtualQGroupBox* self, QEvent* event) {

	self->QGroupBox::customEvent(event);
}

void QGroupBox_virtualbase_connectNotify(VirtualQGroupBox* self, QMetaMethod* signal) {

	self->QGroupBox::connectNotify(*signal);
}

void QGroupBox_virtualbase_disconnectNotify(VirtualQGroupBox* self, QMetaMethod* signal) {

	self->QGroupBox::disconnectNotify(*signal);
}

const QMetaObject* QGroupBox_staticMetaObject() { return &QGroupBox::staticMetaObject; }

const QGroupBox_VTable* QGroupBox_vtbl(const VirtualQGroupBox* self) { return self->vtbl; }
void* QGroupBox_vdata(const VirtualQGroupBox* self) { return self->vdata; }
void QGroupBox_setVdata(VirtualQGroupBox* self, void* vdata) { self->vdata = vdata; }

void QGroupBox_protectedbase_initStyleOption(const VirtualQGroupBox* self, QStyleOptionGroupBox* option) {
	self->initStyleOption(option);
}

void QGroupBox_protectedbase_updateMicroFocus(VirtualQGroupBox* self) {
	self->updateMicroFocus();
}

void QGroupBox_protectedbase_create(VirtualQGroupBox* self) {
	self->create();
}

void QGroupBox_protectedbase_destroy(VirtualQGroupBox* self) {
	self->destroy();
}

bool QGroupBox_protectedbase_focusNextChild(VirtualQGroupBox* self) {
	return self->focusNextChild();
}

bool QGroupBox_protectedbase_focusPreviousChild(VirtualQGroupBox* self) {
	return self->focusPreviousChild();
}

QObject* QGroupBox_protectedbase_sender(const VirtualQGroupBox* self) {
	return self->sender();
}

int QGroupBox_protectedbase_senderSignalIndex(const VirtualQGroupBox* self) {
	return self->senderSignalIndex();
}

int QGroupBox_protectedbase_receivers(const VirtualQGroupBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QGroupBox_protectedbase_isSignalConnected(const VirtualQGroupBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGroupBox_delete(QGroupBox* self) {
	delete self;
}

