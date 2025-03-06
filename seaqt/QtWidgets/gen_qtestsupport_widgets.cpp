#include <QEventPoint>
#include <QPoint>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventWidgetSequence
#include <QWidget>
#include <qtestsupport_widgets.h>
#include "gen_qtestsupport_widgets.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTestQTouchEventWidgetSequence final : public QTest::QTouchEventWidgetSequence {
	struct QTest::QTouchEventWidgetSequence_VTable* vtbl;
public:

	VirtualQTestQTouchEventWidgetSequence(struct QTest::QTouchEventWidgetSequence_VTable* vtbl, const QTest::QTouchEventWidgetSequence& param1): QTest::QTouchEventWidgetSequence(param1), vtbl(vtbl) {};

	virtual ~VirtualQTestQTouchEventWidgetSequence() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTest::QTouchEventWidgetSequence& stationary(int touchId) override {
		if (vtbl->stationary == 0) {
			return QTest__QTouchEventWidgetSequence::stationary(touchId);
		}

		int sigval1 = touchId;

		QTest__QTouchEventWidgetSequence* callback_return_value = vtbl->stationary(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(void* self, int touchId);

	// Subclass to allow providing a Go implementation
	virtual bool commit(bool processEvents) override {
		if (vtbl->commit == 0) {
			return QTest__QTouchEventWidgetSequence::commit(processEvents);
		}

		bool sigval1 = processEvents;

		bool callback_return_value = vtbl->commit(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTest__QTouchEventWidgetSequence_virtualbase_commit(void* self, bool processEvents);

	// Wrappers to allow calling protected methods:
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(void* self, int touchId);
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(void* self, int touchId);
};

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_new(struct QTest::QTouchEventWidgetSequence_VTable* vtbl, QTest__QTouchEventWidgetSequence* param1) {
	return new VirtualQTestQTouchEventWidgetSequence(vtbl, *param1);
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

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(void* self, int touchId) {

	QTest::QTouchEventWidgetSequence& _ret = ( (VirtualQTestQTouchEventWidgetSequence*)(self) )->QTest::QTouchEventWidgetSequence::stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;

}

bool QTest__QTouchEventWidgetSequence_virtualbase_commit(void* self, bool processEvents) {

	return ( (VirtualQTestQTouchEventWidgetSequence*)(self) )->QTest::QTouchEventWidgetSequence::commit(processEvents);

}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(void* self, int touchId) {
	VirtualQTestQTouchEventWidgetSequence* self_cast = static_cast<VirtualQTestQTouchEventWidgetSequence*>( (QTest__QTouchEventWidgetSequence*)(self) );
	
	QEventPoint& _ret = self_cast->point(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;

}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(void* self, int touchId) {
	VirtualQTestQTouchEventWidgetSequence* self_cast = static_cast<VirtualQTestQTouchEventWidgetSequence*>( (QTest__QTouchEventWidgetSequence*)(self) );
	
	QEventPoint& _ret = self_cast->pointOrPreviousPoint(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;

}

void QTest__QTouchEventWidgetSequence_delete(QTest__QTouchEventWidgetSequence* self) {
	delete self;
}

