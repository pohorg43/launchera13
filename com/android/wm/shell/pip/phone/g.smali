.class public final synthetic Lcom/android/wm/shell/pip/phone/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputListener;
.implements Lcom/android/wm/shell/pip/phone/PipInputConsumer$RegistrationListener;
.implements Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    return-void
.end method


# virtual methods
.method public onAccessibilityShowMenu()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->b(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onRegistrationChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/g;->a:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method
