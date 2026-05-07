.class public interface abstract Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager$1;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->DEFAULT:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-void
.end method


# virtual methods
.method public adjustSuggestedWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)I
    .registers 4

    return p3
.end method

.method public getIconExt(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReviseStartingWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public getThemeBackgroundColor(Landroid/content/Context;ILandroid/window/StartingWindowInfo;)I
    .registers 4

    return p2
.end method

.method public getWindowAttrsIfPresent(Landroid/window/StartingWindowInfo;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public handleSplashScreenView(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/window/StartingWindowInfo;)V
    .registers 4

    return-void
.end method

.method public handleWindowBarIfNeeded(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isExceptionListApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onWindowRemoved(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public updateStartingWindowInfoExtended(Landroid/os/IBinder;Landroid/window/OplusStartingWindowExtendedInfo;)V
    .registers 3

    return-void
.end method
