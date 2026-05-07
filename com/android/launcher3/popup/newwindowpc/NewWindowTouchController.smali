.class public Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field public static final PC_DEVICE_ID:I = 0x3e7


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p0

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-static {p1}, Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;->checkMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/popup/newwindowpc/NewWindowUtil;->setPCDeviceTouch(Z)V

    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
