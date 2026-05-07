.class public Lcom/android/launcher/touch/BlurScrimWindowController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurScrimWindowController"


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mBinder:Landroid/os/Binder;

.field public mIsWindaowAttach:Z

.field private mLauncher:Landroid/content/Context;

.field private mLayout:Lcom/android/launcher3/InsettableFrameLayout;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private isBlurAllowed()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    return v1

    :cond_18
    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    instance-of v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz v0, :cond_28

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->detach()V

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->isBlurAllowed()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const v5, -0x7fffffc8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "LauncherBlurScrim"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLauncher:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz p1, :cond_52

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mView:Landroid/view/View;

    :cond_52
    :try_start_52
    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v2, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v2, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6c} :catch_6d

    goto :goto_75

    :catch_6d
    move-exception p0

    const-string p1, "Add  Blur window error: "

    const-string v0, "BlurScrimWindowController"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_75
    return-void
.end method

.method public blurBackground(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    const-string v1, "BlurScrimWindowController"

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_47

    :cond_f
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurBackground: radius:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_46

    :cond_41
    const-string p0, "blurBackground error "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return-void

    :cond_47
    :goto_47
    const-string p0, "blurBackground: getViewRootImpl null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public detach()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v0, "BlurScrimWindowController"

    const-string v1, "detach: "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_10
    iget-object v1, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v1

    const-string v2, "Add  Blur window error: "

    invoke-static {v2, v1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mIsWindaowAttach:Z

    return-void
.end method

.method public setScrimAlpha(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setScrimBackground(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/touch/BlurScrimWindowController;->mLayout:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
