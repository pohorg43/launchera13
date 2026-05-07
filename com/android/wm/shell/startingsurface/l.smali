.class public final synthetic Lcom/android/wm/shell/startingsurface/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field public final synthetic b:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/IBinder;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/window/StartingWindowInfo;

.field public final synthetic g:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILandroid/os/IBinder;Landroid/content/Context;Landroid/window/StartingWindowInfo;Landroid/widget/FrameLayout;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/l;->a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/l;->b:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

    iput p3, p0, Lcom/android/wm/shell/startingsurface/l;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/l;->d:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/l;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/l;->f:Landroid/window/StartingWindowInfo;

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/l;->g:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/l;->a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/l;->b:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;

    iget v2, p0, Lcom/android/wm/shell/startingsurface/l;->c:I

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/l;->d:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/l;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/l;->f:Landroid/window/StartingWindowInfo;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/l;->g:Landroid/widget/FrameLayout;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->e(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SplashScreenViewSupplier;ILandroid/os/IBinder;Landroid/content/Context;Landroid/window/StartingWindowInfo;Landroid/widget/FrameLayout;)V

    return-void
.end method
