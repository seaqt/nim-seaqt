#include <QEventPoint>
#include <QPoint>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventWidgetSequence
#include <QWidget>
#include <qtestsupport_widgets.h>
#include "gen_qtestsupport_widgets.h"
class VirtualQTestQTouchEventWidgetSequence final : public QTest::QTouchEventWidgetSequence {
	const QTest__QTouchEventWidgetSequence_VTable* vtbl;
	void* vdata;
public:
	friend const QTest__QTouchEventWidgetSequence_VTable* QTest__QTouchEventWidgetSequence_vtbl(const VirtualQTestQTouchEventWidgetSequence* self);
	friend void* QTest__QTouchEventWidgetSequence_vdata(const VirtualQTestQTouchEventWidgetSequence* self);
	friend void QTest__QTouchEventWidgetSequence_setVdata(VirtualQTestQTouchEventWidgetSequence* self, void* vdata);

	VirtualQTestQTouchEventWidgetSequence(const QTest__QTouchEventWidgetSequence_VTable* vtbl, void* vdata, const QTest::QTouchEventWidgetSequence& param1): QTest::QTouchEventWidgetSequence(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTestQTouchEventWidgetSequence() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QTest::QTouchEventWidgetSequence& stationary(int touchId) override {
		if (vtbl->stationary == 0) {
			return QTest__QTouchEventWidgetSequence::stationary(touchId);
		}

		int sigval1 = touchId;

		QTest__QTouchEventWidgetSequence* callback_return_value = vtbl->stationary(this, sigval1);

		return *callback_return_value;
	}

	friend QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(VirtualQTestQTouchEventWidgetSequence* self, int touchId);

	virtual bool commit(bool processEvents) override {
		if (vtbl->commit == 0) {
			return QTest__QTouchEventWidgetSequence::commit(processEvents);
		}

		bool sigval1 = processEvents;

		bool callback_return_value = vtbl->commit(this, sigval1);

		return callback_return_value;
	}

	friend bool QTest__QTouchEventWidgetSequence_virtualbase_commit(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents);

	// Wrappers to allow calling protected methods:
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
};

VirtualQTestQTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_new(const QTest__QTouchEventWidgetSequence_VTable* vtbl, void* vdata, QTest__QTouchEventWidgetSequence* param1) {
	return new VirtualQTestQTouchEventWidgetSequence(vtbl, vdata, *param1);
}

void QTest__QTouchEventWidgetSequence_virtbase(QTest__QTouchEventWidgetSequence* src, QTest::QTouchEventSequence** outptr_QTest__QTouchEventSequence) {
	*outptr_QTest__QTouchEventSequence = static_cast<QTest::QTouchEventSequence*>(src);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_stationary(QTest__QTouchEventWidgetSequence* self, int touchId) {
	QTest::QTouchEventWidgetSequence& _ret = self->stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

bool QTest__QTouchEventWidgetSequence_commit(QTest__QTouchEventWidgetSequence* self, bool processEvents) {
	return self->commit(processEvents);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {

	QTest::QTouchEventWidgetSequence& _ret = self->QTest::QTouchEventWidgetSequence::stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

bool QTest__QTouchEventWidgetSequence_virtualbase_commit(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents) {

	return self->QTest::QTouchEventWidgetSequence::commit(processEvents);
}

const QTest__QTouchEventWidgetSequence_VTable* QTest__QTouchEventWidgetSequence_vtbl(const VirtualQTestQTouchEventWidgetSequence* self) { return self->vtbl; }
void* QTest__QTouchEventWidgetSequence_vdata(const VirtualQTestQTouchEventWidgetSequence* self) { return self->vdata; }
void QTest__QTouchEventWidgetSequence_setVdata(VirtualQTestQTouchEventWidgetSequence* self, void* vdata) { self->vdata = vdata; }

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {
	QEventPoint& _ret = self->point(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {
	QEventPoint& _ret = self->pointOrPreviousPoint(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

void QTest__QTouchEventWidgetSequence_delete(QTest__QTouchEventWidgetSequence* self) {
	delete self;
}

