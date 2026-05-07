.class public final Lcom/android/launcher/uninstall/HotseatAnimation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAnimation:Landroid/animation/ObjectAnimator;

.field private mHotseat:Lcom/android/launcher3/Hotseat;

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    const-string v0, "launcher.hotseat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mAnimation:Landroid/animation/ObjectAnimator;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_8
    return-void
.end method

.method public final isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {p0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method public final start(ZZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "mLauncher.deviceProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_20

    return-void

    :cond_20
    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object v2, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3e

    move v6, v3

    goto/16 :goto_cc

    :cond_3e
    iget-object v4, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    iget-object v6, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070743

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070742

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v9}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v9, :cond_72

    goto :goto_7b

    :cond_72
    sget-object v6, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v9, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6, v9, v2}, Lcom/android/common/config/ScreenInfo$Companion;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v6

    add-int/2addr v6, v7

    :goto_7b
    add-int/2addr v8, v6

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr v6, v8

    iget-boolean v7, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v7, :cond_91

    iget-object v7, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0700e5

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_92

    :cond_91
    move v7, v3

    :goto_92
    add-int/2addr v6, v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_cc

    const-string v7, "hotseatMarginBottomPx="

    const-string v9, " ,hotseatBarSizePx="

    invoke-static {v7, v5, v9}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,windowInsets.bottom="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,hasNavigationBar="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,bottomMargin="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,endTransY="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HotseatAnimation"

    invoke-static {v5, v6, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_cc
    :goto_cc
    if-eqz p2, :cond_102

    iget-object p2, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mHotseat:Lcom/android/launcher3/Hotseat;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v1, [F

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    aput v4, v1, v3

    int-to-float v3, v6

    aput v3, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p1, :cond_e6

    const-wide/16 v0, 0x14a

    goto :goto_e8

    :cond_e6
    const-wide/16 v0, 0x96

    :goto_e8
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_f0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_IN:Landroid/view/animation/OplusBezierInterpolator;

    goto :goto_f2

    :cond_f0
    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    :goto_f2
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_fc

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_fc
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p2, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_108

    :cond_102
    iget-object p0, p0, Lcom/android/launcher/uninstall/HotseatAnimation;->mHotseat:Lcom/android/launcher3/Hotseat;

    int-to-float p1, v6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_108
    return-void
.end method
