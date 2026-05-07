.class Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field public final synthetic val$contentView:Landroid/window/SplashScreenView;

.field public final synthetic val$record:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Landroid/window/SplashScreenView;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$record:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result p1

    const/16 v0, 0x18

    if-eqz p1, :cond_10

    move p1, v0

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$record:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$200(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)I

    move-result v1

    and-int/lit8 v1, v1, -0x19

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->access$202(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;I)I

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
