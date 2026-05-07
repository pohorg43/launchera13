.class public Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustSuggestedWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)I
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->adjustSuggestedWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)I

    move-result p0

    return p0
.end method

.method public getReviseStartingWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;)I
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->getReviseStartingWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;)I

    move-result p0

    return p0
.end method

.method public getThemeBackgroundColor(Landroid/content/Context;ILandroid/window/StartingWindowInfo;)I
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->getThemeBackgroundColor(Landroid/content/Context;ILandroid/window/StartingWindowInfo;)I

    move-result p0

    return p0
.end method

.method public handleSplashScreenView(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/window/StartingWindowInfo;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->handleSplashScreenView(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method public handleWindowBarIfNeeded(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->handleWindowBarIfNeeded(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p0

    return p0
.end method

.method public isExceptionListApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->isExceptionListApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p0

    return p0
.end method

.method public isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p0

    return p0
.end method

.method public onWindowRemoved(Landroid/os/IBinder;)V
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->onWindowRemoved(Landroid/os/IBinder;)V

    return-void
.end method
