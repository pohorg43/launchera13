.class public final Lcom/android/launcher/wallpaper/WallpaperResolver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

.field private static DEBUG:Z = false

.field private static final FORBID_WALLPAPER_COLOR:Z = true

.field private static final TAG:Ljava/lang/String; = "WallpaperResolver"

.field public static sIsWorkspaceBright:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sWallpaperChangedThemeColor:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static sWallpaperPrimaryColor:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private mIsChildrenModeBright:Z

.field private mIsLiveWallpaper:Z

.field private mIsNavigationBarBright:Z

.field private mIsStatusBarBright:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBarHeight:I

.field private mWallBitmapValue:I

.field private mWorkspaceBrightChanged:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mNavBarHeight:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBrightness$lambda-0(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveStatusBarBrightness$lambda-1(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveChildrenModeBrightness$lambda-3(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveNavigationBarBrightness$lambda-2(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V

    return-void
.end method

.method public static final isWorkspaceWpBright()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    return v0
.end method

.method private final resolveChildrenModeBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 9

    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getRectOfExitChildrenModeIcon()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "WallpaperResolver"

    if-nez v0, :cond_19

    const-string p0, "calculateWallpaperBrightnessForExitChildrenModeIcon. The iconRect is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget v2, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p2, v2, v3, v4, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    const/16 v2, 0xc4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_3a

    iget-boolean v5, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    if-nez v5, :cond_3a

    iput-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    goto :goto_42

    :cond_3a
    if-ge v0, v2, :cond_43

    iget-boolean v2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    if-eqz v2, :cond_43

    iput-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    :goto_42
    move v3, v4

    :cond_43
    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    if-eqz v2, :cond_76

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveChildrenModeBrightness. wallpaperBitmap = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , iconAverageValue = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsChildrenModeBright = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", childrenModeBtChanged = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    if-eqz v3, :cond_80

    new-instance p0, Lcom/android/launcher/wallpaper/d;

    invoke-direct {p0, p1, v4}, Lcom/android/launcher/wallpaper/d;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_80
    return-void
.end method

.method private static final resolveChildrenModeBrightness$lambda-3(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onExitChildrenModeIconWallpaperBrightnessChanged()V

    return-void
.end method

.method private final resolveNavigationBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 8

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mNavBarHeight:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    const/16 v1, 0xc4

    const/4 v2, 0x1

    if-lt v0, v1, :cond_27

    iget-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    if-eqz v4, :cond_27

    iput-boolean v2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    goto :goto_31

    :cond_27
    if-ge v0, v1, :cond_30

    iget-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    if-eqz v1, :cond_30

    iput-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    sget-boolean v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveNavigationBarBrightness. wallpaperBitmap = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , navBarAverageValue = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsNavigationBarBright = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mNavBarBtChanged = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WallpaperResolver"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    if-eqz v2, :cond_76

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_76

    new-instance p2, Lcom/android/launcher/wallpaper/c;

    invoke-direct {p2, p1, p0, v3}, Lcom/android/launcher/wallpaper/c;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_76
    return-void
.end method

.method private static final resolveNavigationBarBrightness$lambda-2(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsNavigationBarBright:Z

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->setNavBarColor(Lcom/android/launcher/Launcher;ZZ)V

    return-void
.end method

.method private final resolveStatusBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V
    .registers 10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v1, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000  # 5.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v0, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result v0

    const/16 v1, 0xc4

    const/4 v3, 0x1

    if-lt v0, v1, :cond_20

    iget-boolean v4, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    if-nez v4, :cond_20

    iput-boolean v3, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    goto :goto_28

    :cond_20
    if-ge v0, v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    if-eqz v1, :cond_2a

    iput-boolean v2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    :goto_28
    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    sget-boolean v4, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    const-string v5, "WallpaperResolver"

    if-eqz v4, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveStatusBarBrightness. wallpaperBitmap = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , statusBarAverageValue = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mIsStatusBarBright = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", statusBarBtChanged = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p2

    if-eqz p2, :cond_84

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_7c

    move v2, v3

    :cond_7c
    if-eqz v2, :cond_84

    const-string p0, "Don`t set StatusBar color according to wallpaper color on ALL_APPS"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_84
    if-eqz v1, :cond_8e

    new-instance p2, Lcom/android/launcher/wallpaper/c;

    invoke-direct {p2, p1, p0, v3}, Lcom/android/launcher/wallpaper/c;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8e
    return-void
.end method

.method private static final resolveStatusBarBrightness$lambda-1(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperResolver;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->setStatusBarColor(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method private final resolveWorkspaceBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;Z)V
    .registers 8

    invoke-static {p1, p2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->calculateWallpaperColor(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    if-eqz p3, :cond_c

    invoke-direct {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :cond_c
    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string/jumbo v2, "resolveWorkspaceBrightness. wallpaperBitmap = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", averageValue = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isThemeTextColorDefault = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsWorkspaceBright="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mWorkspaceBrightChanged="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    const-string v0, "Wallpapers"

    const-string v3, "WallpaperResolver"

    invoke-static {v2, p2, v0, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_52
    new-instance p2, Lcom/android/launcher/wallpaper/d;

    invoke-direct {p2, p1, v1}, Lcom/android/launcher/wallpaper/d;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-boolean p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/WallpaperResolver;->saveTextColorStateToSettings(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static final resolveWorkspaceBrightness$lambda-0(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onWallpaperBrightnessChanged()V

    return-void
.end method

.method private final resolveWorkspaceBtForLive(Lcom/android/launcher/Launcher;I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    const-string v0, "WallpaperResolver"

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/2addr p1, v1

    if-lez p1, :cond_20

    move p1, v1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    sput-boolean p1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    const-string p2, "Live wallpaper, mIsWorkspaceBright = "

    invoke-static {p1, p2, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_29
    const-string p1, "Live wallpaper colors==null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :goto_31
    iput-boolean v1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWorkspaceBrightChanged:Z

    goto :goto_37

    :cond_34
    invoke-direct {p0, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBtForStatic(I)V

    :goto_37
    return-void
.end method

.method private final resolveWorkspaceBtForStatic(I)V
    .registers 2

    const/16 p0, 0xc4

    if-lt p1, p0, :cond_8

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    goto :goto_d

    :cond_8
    if-ge p1, p0, :cond_d

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    :cond_d
    :goto_d
    return-void
.end method

.method private final saveTextColorStateToSettings(Landroid/content/Context;ZZ)V
    .registers 7

    const-string p0, "Wallpapers"

    const-string v0, "WallpaperResolver"

    const-string/jumbo v1, "saveTextColorStateToSettings"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_text_color"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p3, :cond_41

    if-eqz p2, :cond_21

    const p2, 0x7f060653

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_28

    :cond_21
    const p2, 0x7f060652

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :goto_28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/wallpaper/ShadowCalculator;->isEnableShadowColor()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_56

    :cond_41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/false"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_56
    const-string/jumbo p3, "saveTextColorStateToSettings -- str = "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "launcher_text_appearance"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_69
    return-void
.end method


# virtual methods
.method public final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final initTextThemeColor(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_53

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v1

    if-ne v0, v1, :cond_12

    goto :goto_53

    :cond_12
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result v0

    sget-boolean v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "initWallpaperBright.  isThemeTextColorDefault = "

    const-string v2, " , sIsWorkspaceBright = "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , sWallpaperChangedThemeColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , ThemeUtils.getThemeTextColor(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wallpapers"

    const-string v3, "WallpaperResolver"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->getThemeTextColor()I

    move-result v1

    sput v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sWallpaperChangedThemeColor:I

    sget-boolean v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->saveTextColorStateToSettings(Landroid/content/Context;ZZ)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final isChildrenModeWpBright()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsChildrenModeBright:Z

    return p0
.end method

.method public final isStatusBarWpBright()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsStatusBarBright:Z

    return p0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    return-void
.end method

.method public final resolveWallpaperBrightness(Landroid/graphics/Bitmap;Z)V
    .registers 7

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "WallpaperResolver"

    const-string v2, "Wallpapers"

    if-nez v0, :cond_17

    const-string/jumbo p0, "resolveWallpaperBrightness. launcher is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mIsLiveWallpaper:Z

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isThemeTextColorDefault()Z

    move-result p2

    sget-boolean v3, Lcom/android/launcher/wallpaper/WallpaperResolver;->DEBUG:Z

    if-eqz v3, :cond_27

    const-string/jumbo v3, "resolveWallpaperBrightness.  isThemeTextColorDefault = "

    invoke-static {p2, v3, v2, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWorkspaceBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;Z)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveStatusBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveNavigationBarBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveChildrenModeBrightness(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final resolveWallpaperColor(Lcom/android/launcher/Launcher;)V
    .registers 2

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setWallBitValue(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->mWallBitmapValue:I

    return-void
.end method
