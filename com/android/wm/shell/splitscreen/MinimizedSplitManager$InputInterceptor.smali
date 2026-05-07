.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;
.super Landroid/view/WindowlessWindowManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputInterceptor"
.end annotation


# static fields
.field private static final WINDOW_NAME:Ljava/lang/String; = "InputInterceptorLayer"


# instance fields
.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private mLeash:Landroid/view/SurfaceControl;

.field private mRootLayout:Landroid/view/View;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/View$OnTouchListener;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->init(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View$OnTouchListener;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_9

    goto :goto_71

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mRootLayout:Landroid/view/View;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x7f6

    const/16 v5, 0x28

    const/4 v6, -0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string p2, "InputInterceptorLayer"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p3, 0x20000040

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mLeash:Landroid/view/SurfaceControl;

    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method public disableInputIntercept()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mRootLayout:Landroid/view/View;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public relayoutViewSize(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method
