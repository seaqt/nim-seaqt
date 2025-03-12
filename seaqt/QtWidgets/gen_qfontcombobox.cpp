#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QComboBox>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFontComboBox>
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
#include <QStyleOptionComboBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qfontcombobox.h>
#include "gen_qfontcombobox.h"
class VirtualQFontComboBox final : public QFontComboBox {
	const QFontComboBox_VTable* vtbl;
	void* vdata;
public:
	friend const QFontComboBox_VTable* QFontComboBox_vtbl(const VirtualQFontComboBox* self);
	friend void* QFontComboBox_vdata(const VirtualQFontComboBox* self);
	friend void QFontComboBox_setVdata(VirtualQFontComboBox* self, void* vdata);

	VirtualQFontComboBox(const QFontComboBox_VTable* vtbl, void* vdata, QWidget* parent): QFontComboBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFontComboBox(const QFontComboBox_VTable* vtbl, void* vdata): QFontComboBox(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFontComboBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFontComboBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFontComboBox_virtualbase_metaObject(const VirtualQFontComboBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFontComboBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFontComboBox_virtualbase_metacast(VirtualQFontComboBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFontComboBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_metacall(VirtualQFontComboBox* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFontComboBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFontComboBox_virtualbase_sizeHint(const VirtualQFontComboBox* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFontComboBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_event(VirtualQFontComboBox* self, QEvent* e);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFontComboBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFontComboBox_virtualbase_minimumSizeHint(const VirtualQFontComboBox* self);

	virtual void showPopup() override {
		if (vtbl->showPopup == 0) {
			QFontComboBox::showPopup();
			return;
		}


		vtbl->showPopup(this);

	}

	friend void QFontComboBox_virtualbase_showPopup(VirtualQFontComboBox* self);

	virtual void hidePopup() override {
		if (vtbl->hidePopup == 0) {
			QFontComboBox::hidePopup();
			return;
		}


		vtbl->hidePopup(this);

	}

	friend void QFontComboBox_virtualbase_hidePopup(VirtualQFontComboBox* self);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFontComboBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QFontComboBox_virtualbase_inputMethodQuery(const VirtualQFontComboBox* self, int param1);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QFontComboBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_focusInEvent(VirtualQFontComboBox* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QFontComboBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_focusOutEvent(VirtualQFontComboBox* self, QFocusEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QFontComboBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_changeEvent(VirtualQFontComboBox* self, QEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QFontComboBox::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_resizeEvent(VirtualQFontComboBox* self, QResizeEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QFontComboBox::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_paintEvent(VirtualQFontComboBox* self, QPaintEvent* e);

	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QFontComboBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_showEvent(VirtualQFontComboBox* self, QShowEvent* e);

	virtual void hideEvent(QHideEvent* e) override {
		if (vtbl->hideEvent == 0) {
			QFontComboBox::hideEvent(e);
			return;
		}

		QHideEvent* sigval1 = e;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_hideEvent(VirtualQFontComboBox* self, QHideEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QFontComboBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mousePressEvent(VirtualQFontComboBox* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFontComboBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseReleaseEvent(VirtualQFontComboBox* self, QMouseEvent* e);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QFontComboBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_keyPressEvent(VirtualQFontComboBox* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFontComboBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_keyReleaseEvent(VirtualQFontComboBox* self, QKeyEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QFontComboBox::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_wheelEvent(VirtualQFontComboBox* self, QWheelEvent* e);

	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QFontComboBox::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_contextMenuEvent(VirtualQFontComboBox* self, QContextMenuEvent* e);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFontComboBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_inputMethodEvent(VirtualQFontComboBox* self, QInputMethodEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFontComboBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_devType(const VirtualQFontComboBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFontComboBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_setVisible(VirtualQFontComboBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFontComboBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_heightForWidth(const VirtualQFontComboBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFontComboBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_hasHeightForWidth(const VirtualQFontComboBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFontComboBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QFontComboBox_virtualbase_paintEngine(const VirtualQFontComboBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFontComboBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseDoubleClickEvent(VirtualQFontComboBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFontComboBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseMoveEvent(VirtualQFontComboBox* self, QMouseEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFontComboBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_enterEvent(VirtualQFontComboBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFontComboBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_leaveEvent(VirtualQFontComboBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFontComboBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_moveEvent(VirtualQFontComboBox* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFontComboBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_closeEvent(VirtualQFontComboBox* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFontComboBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_tabletEvent(VirtualQFontComboBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFontComboBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_actionEvent(VirtualQFontComboBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFontComboBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragEnterEvent(VirtualQFontComboBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFontComboBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragMoveEvent(VirtualQFontComboBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFontComboBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragLeaveEvent(VirtualQFontComboBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFontComboBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dropEvent(VirtualQFontComboBox* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFontComboBox::nativeEvent(eventType, message, result);
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

	friend bool QFontComboBox_virtualbase_nativeEvent(VirtualQFontComboBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFontComboBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_metric(const VirtualQFontComboBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFontComboBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_initPainter(const VirtualQFontComboBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFontComboBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFontComboBox_virtualbase_redirected(const VirtualQFontComboBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFontComboBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QFontComboBox_virtualbase_sharedPainter(const VirtualQFontComboBox* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFontComboBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_focusNextPrevChild(VirtualQFontComboBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFontComboBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_eventFilter(VirtualQFontComboBox* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFontComboBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_timerEvent(VirtualQFontComboBox* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFontComboBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_childEvent(VirtualQFontComboBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFontComboBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_customEvent(VirtualQFontComboBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFontComboBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_connectNotify(VirtualQFontComboBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFontComboBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFontComboBox_virtualbase_disconnectNotify(VirtualQFontComboBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFontComboBox_protectedbase_initStyleOption(const VirtualQFontComboBox* self, QStyleOptionComboBox* option);
	friend void QFontComboBox_protectedbase_updateMicroFocus(VirtualQFontComboBox* self);
	friend void QFontComboBox_protectedbase_create(VirtualQFontComboBox* self);
	friend void QFontComboBox_protectedbase_destroy(VirtualQFontComboBox* self);
	friend bool QFontComboBox_protectedbase_focusNextChild(VirtualQFontComboBox* self);
	friend bool QFontComboBox_protectedbase_focusPreviousChild(VirtualQFontComboBox* self);
	friend QObject* QFontComboBox_protectedbase_sender(const VirtualQFontComboBox* self);
	friend int QFontComboBox_protectedbase_senderSignalIndex(const VirtualQFontComboBox* self);
	friend int QFontComboBox_protectedbase_receivers(const VirtualQFontComboBox* self, const char* signal);
	friend bool QFontComboBox_protectedbase_isSignalConnected(const VirtualQFontComboBox* self, QMetaMethod* signal);
};

VirtualQFontComboBox* QFontComboBox_new(const QFontComboBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQFontComboBox(vtbl, vdata, parent);
}

VirtualQFontComboBox* QFontComboBox_new2(const QFontComboBox_VTable* vtbl, void* vdata) {
	return new VirtualQFontComboBox(vtbl, vdata);
}

void QFontComboBox_virtbase(QFontComboBox* src, QComboBox** outptr_QComboBox) {
	*outptr_QComboBox = static_cast<QComboBox*>(src);
}

QMetaObject* QFontComboBox_metaObject(const QFontComboBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFontComboBox_metacast(QFontComboBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFontComboBox_metacall(QFontComboBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFontComboBox_tr(const char* s) {
	QString _ret = QFontComboBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontComboBox_trUtf8(const char* s) {
	QString _ret = QFontComboBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontComboBox_setWritingSystem(QFontComboBox* self, int writingSystem) {
	self->setWritingSystem(static_cast<QFontDatabase::WritingSystem>(writingSystem));
}

int QFontComboBox_writingSystem(const QFontComboBox* self) {
	QFontDatabase::WritingSystem _ret = self->writingSystem();
	return static_cast<int>(_ret);
}

void QFontComboBox_setFontFilters(QFontComboBox* self, int filters) {
	self->setFontFilters(static_cast<QFontComboBox::FontFilters>(filters));
}

int QFontComboBox_fontFilters(const QFontComboBox* self) {
	QFontComboBox::FontFilters _ret = self->fontFilters();
	return static_cast<int>(_ret);
}

QFont* QFontComboBox_currentFont(const QFontComboBox* self) {
	return new QFont(self->currentFont());
}

QSize* QFontComboBox_sizeHint(const QFontComboBox* self) {
	return new QSize(self->sizeHint());
}

void QFontComboBox_setCurrentFont(QFontComboBox* self, QFont* f) {
	self->setCurrentFont(*f);
}

void QFontComboBox_currentFontChanged(QFontComboBox* self, QFont* f) {
	self->currentFontChanged(*f);
}

void QFontComboBox_connect_currentFontChanged(VirtualQFontComboBox* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QFont*);
		void operator()(const QFont& f) {
			const QFont& f_ret = f;
			// Cast returned reference into pointer
			QFont* sigval1 = const_cast<QFont*>(&f_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFontComboBox::connect(self, static_cast<void (QFontComboBox::*)(const QFont&)>(&QFontComboBox::currentFontChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QFontComboBox_tr2(const char* s, const char* c) {
	QString _ret = QFontComboBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontComboBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QFontComboBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontComboBox_trUtf82(const char* s, const char* c) {
	QString _ret = QFontComboBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontComboBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFontComboBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFontComboBox_virtualbase_metaObject(const VirtualQFontComboBox* self) {

	return (QMetaObject*) self->QFontComboBox::metaObject();
}

void* QFontComboBox_virtualbase_metacast(VirtualQFontComboBox* self, const char* param1) {

	return self->QFontComboBox::qt_metacast(param1);
}

int QFontComboBox_virtualbase_metacall(VirtualQFontComboBox* self, int param1, int param2, void** param3) {

	return self->QFontComboBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QFontComboBox_virtualbase_sizeHint(const VirtualQFontComboBox* self) {

	return new QSize(self->QFontComboBox::sizeHint());
}

bool QFontComboBox_virtualbase_event(VirtualQFontComboBox* self, QEvent* e) {

	return self->QFontComboBox::event(e);
}

QSize* QFontComboBox_virtualbase_minimumSizeHint(const VirtualQFontComboBox* self) {

	return new QSize(self->QFontComboBox::minimumSizeHint());
}

void QFontComboBox_virtualbase_showPopup(VirtualQFontComboBox* self) {

	self->QFontComboBox::showPopup();
}

void QFontComboBox_virtualbase_hidePopup(VirtualQFontComboBox* self) {

	self->QFontComboBox::hidePopup();
}

QVariant* QFontComboBox_virtualbase_inputMethodQuery(const VirtualQFontComboBox* self, int param1) {

	return new QVariant(self->QFontComboBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QFontComboBox_virtualbase_focusInEvent(VirtualQFontComboBox* self, QFocusEvent* e) {

	self->QFontComboBox::focusInEvent(e);
}

void QFontComboBox_virtualbase_focusOutEvent(VirtualQFontComboBox* self, QFocusEvent* e) {

	self->QFontComboBox::focusOutEvent(e);
}

void QFontComboBox_virtualbase_changeEvent(VirtualQFontComboBox* self, QEvent* e) {

	self->QFontComboBox::changeEvent(e);
}

void QFontComboBox_virtualbase_resizeEvent(VirtualQFontComboBox* self, QResizeEvent* e) {

	self->QFontComboBox::resizeEvent(e);
}

void QFontComboBox_virtualbase_paintEvent(VirtualQFontComboBox* self, QPaintEvent* e) {

	self->QFontComboBox::paintEvent(e);
}

void QFontComboBox_virtualbase_showEvent(VirtualQFontComboBox* self, QShowEvent* e) {

	self->QFontComboBox::showEvent(e);
}

void QFontComboBox_virtualbase_hideEvent(VirtualQFontComboBox* self, QHideEvent* e) {

	self->QFontComboBox::hideEvent(e);
}

void QFontComboBox_virtualbase_mousePressEvent(VirtualQFontComboBox* self, QMouseEvent* e) {

	self->QFontComboBox::mousePressEvent(e);
}

void QFontComboBox_virtualbase_mouseReleaseEvent(VirtualQFontComboBox* self, QMouseEvent* e) {

	self->QFontComboBox::mouseReleaseEvent(e);
}

void QFontComboBox_virtualbase_keyPressEvent(VirtualQFontComboBox* self, QKeyEvent* e) {

	self->QFontComboBox::keyPressEvent(e);
}

void QFontComboBox_virtualbase_keyReleaseEvent(VirtualQFontComboBox* self, QKeyEvent* e) {

	self->QFontComboBox::keyReleaseEvent(e);
}

void QFontComboBox_virtualbase_wheelEvent(VirtualQFontComboBox* self, QWheelEvent* e) {

	self->QFontComboBox::wheelEvent(e);
}

void QFontComboBox_virtualbase_contextMenuEvent(VirtualQFontComboBox* self, QContextMenuEvent* e) {

	self->QFontComboBox::contextMenuEvent(e);
}

void QFontComboBox_virtualbase_inputMethodEvent(VirtualQFontComboBox* self, QInputMethodEvent* param1) {

	self->QFontComboBox::inputMethodEvent(param1);
}

int QFontComboBox_virtualbase_devType(const VirtualQFontComboBox* self) {

	return self->QFontComboBox::devType();
}

void QFontComboBox_virtualbase_setVisible(VirtualQFontComboBox* self, bool visible) {

	self->QFontComboBox::setVisible(visible);
}

int QFontComboBox_virtualbase_heightForWidth(const VirtualQFontComboBox* self, int param1) {

	return self->QFontComboBox::heightForWidth(static_cast<int>(param1));
}

bool QFontComboBox_virtualbase_hasHeightForWidth(const VirtualQFontComboBox* self) {

	return self->QFontComboBox::hasHeightForWidth();
}

QPaintEngine* QFontComboBox_virtualbase_paintEngine(const VirtualQFontComboBox* self) {

	return self->QFontComboBox::paintEngine();
}

void QFontComboBox_virtualbase_mouseDoubleClickEvent(VirtualQFontComboBox* self, QMouseEvent* event) {

	self->QFontComboBox::mouseDoubleClickEvent(event);
}

void QFontComboBox_virtualbase_mouseMoveEvent(VirtualQFontComboBox* self, QMouseEvent* event) {

	self->QFontComboBox::mouseMoveEvent(event);
}

void QFontComboBox_virtualbase_enterEvent(VirtualQFontComboBox* self, QEvent* event) {

	self->QFontComboBox::enterEvent(event);
}

void QFontComboBox_virtualbase_leaveEvent(VirtualQFontComboBox* self, QEvent* event) {

	self->QFontComboBox::leaveEvent(event);
}

void QFontComboBox_virtualbase_moveEvent(VirtualQFontComboBox* self, QMoveEvent* event) {

	self->QFontComboBox::moveEvent(event);
}

void QFontComboBox_virtualbase_closeEvent(VirtualQFontComboBox* self, QCloseEvent* event) {

	self->QFontComboBox::closeEvent(event);
}

void QFontComboBox_virtualbase_tabletEvent(VirtualQFontComboBox* self, QTabletEvent* event) {

	self->QFontComboBox::tabletEvent(event);
}

void QFontComboBox_virtualbase_actionEvent(VirtualQFontComboBox* self, QActionEvent* event) {

	self->QFontComboBox::actionEvent(event);
}

void QFontComboBox_virtualbase_dragEnterEvent(VirtualQFontComboBox* self, QDragEnterEvent* event) {

	self->QFontComboBox::dragEnterEvent(event);
}

void QFontComboBox_virtualbase_dragMoveEvent(VirtualQFontComboBox* self, QDragMoveEvent* event) {

	self->QFontComboBox::dragMoveEvent(event);
}

void QFontComboBox_virtualbase_dragLeaveEvent(VirtualQFontComboBox* self, QDragLeaveEvent* event) {

	self->QFontComboBox::dragLeaveEvent(event);
}

void QFontComboBox_virtualbase_dropEvent(VirtualQFontComboBox* self, QDropEvent* event) {

	self->QFontComboBox::dropEvent(event);
}

bool QFontComboBox_virtualbase_nativeEvent(VirtualQFontComboBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QFontComboBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QFontComboBox_virtualbase_metric(const VirtualQFontComboBox* self, int param1) {

	return self->QFontComboBox::metric(static_cast<VirtualQFontComboBox::PaintDeviceMetric>(param1));
}

void QFontComboBox_virtualbase_initPainter(const VirtualQFontComboBox* self, QPainter* painter) {

	self->QFontComboBox::initPainter(painter);
}

QPaintDevice* QFontComboBox_virtualbase_redirected(const VirtualQFontComboBox* self, QPoint* offset) {

	return self->QFontComboBox::redirected(offset);
}

QPainter* QFontComboBox_virtualbase_sharedPainter(const VirtualQFontComboBox* self) {

	return self->QFontComboBox::sharedPainter();
}

bool QFontComboBox_virtualbase_focusNextPrevChild(VirtualQFontComboBox* self, bool next) {

	return self->QFontComboBox::focusNextPrevChild(next);
}

bool QFontComboBox_virtualbase_eventFilter(VirtualQFontComboBox* self, QObject* watched, QEvent* event) {

	return self->QFontComboBox::eventFilter(watched, event);
}

void QFontComboBox_virtualbase_timerEvent(VirtualQFontComboBox* self, QTimerEvent* event) {

	self->QFontComboBox::timerEvent(event);
}

void QFontComboBox_virtualbase_childEvent(VirtualQFontComboBox* self, QChildEvent* event) {

	self->QFontComboBox::childEvent(event);
}

void QFontComboBox_virtualbase_customEvent(VirtualQFontComboBox* self, QEvent* event) {

	self->QFontComboBox::customEvent(event);
}

void QFontComboBox_virtualbase_connectNotify(VirtualQFontComboBox* self, QMetaMethod* signal) {

	self->QFontComboBox::connectNotify(*signal);
}

void QFontComboBox_virtualbase_disconnectNotify(VirtualQFontComboBox* self, QMetaMethod* signal) {

	self->QFontComboBox::disconnectNotify(*signal);
}

const QMetaObject* QFontComboBox_staticMetaObject() { return &QFontComboBox::staticMetaObject; }

const QFontComboBox_VTable* QFontComboBox_vtbl(const VirtualQFontComboBox* self) { return self->vtbl; }
void* QFontComboBox_vdata(const VirtualQFontComboBox* self) { return self->vdata; }
void QFontComboBox_setVdata(VirtualQFontComboBox* self, void* vdata) { self->vdata = vdata; }

void QFontComboBox_protectedbase_initStyleOption(const VirtualQFontComboBox* self, QStyleOptionComboBox* option) {
	self->initStyleOption(option);
}

void QFontComboBox_protectedbase_updateMicroFocus(VirtualQFontComboBox* self) {
	self->updateMicroFocus();
}

void QFontComboBox_protectedbase_create(VirtualQFontComboBox* self) {
	self->create();
}

void QFontComboBox_protectedbase_destroy(VirtualQFontComboBox* self) {
	self->destroy();
}

bool QFontComboBox_protectedbase_focusNextChild(VirtualQFontComboBox* self) {
	return self->focusNextChild();
}

bool QFontComboBox_protectedbase_focusPreviousChild(VirtualQFontComboBox* self) {
	return self->focusPreviousChild();
}

QObject* QFontComboBox_protectedbase_sender(const VirtualQFontComboBox* self) {
	return self->sender();
}

int QFontComboBox_protectedbase_senderSignalIndex(const VirtualQFontComboBox* self) {
	return self->senderSignalIndex();
}

int QFontComboBox_protectedbase_receivers(const VirtualQFontComboBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QFontComboBox_protectedbase_isSignalConnected(const VirtualQFontComboBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFontComboBox_delete(QFontComboBox* self) {
	delete self;
}

