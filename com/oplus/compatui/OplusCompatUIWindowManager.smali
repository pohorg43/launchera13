.class public Lcom/oplus/compatui/OplusCompatUIWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;
    }
.end annotation


# static fields
.field private static final COMPAT_ORIENTATION_KEY:Ljava/lang/String; = "orientation"

.field private static final COMPAT_RATIO_KEY:Ljava/lang/String; = "compat_ratio"

.field private static final POSITION_INVALID:I = -0x1

.field private static final POSITION_LEFT:I = 0x0

.field private static final POSITION_MIDDLE:I = 0x1

.field private static final POSITION_RIGHT:I = 0x2

.field private static final RATIO_16_9:F = 1.7777778f

.field private static final RATIO_4_3:F = 1.3333334f

.field private static final TAG:Ljava/lang/String; = "OplusCompatUIWindowManager"

.field private static final Z_ORDER:I = 0x7fffffff


# instance fields
.field private mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

.field private mCompatUIControllerExt:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mFSSController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

.field public mHasCompat:Z

.field public mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

.field private mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

.field public mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

.field private mTaskInfo:Landroid/app/TaskInfo;

.field private mTopInFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    new-instance p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-direct {p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    new-instance p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;

    invoke-direct {p1, p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;-><init>(Lcom/oplus/compatui/OplusCompatUIWindowManager;)V

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    move-object p1, p2

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1}, Lcom/oplus/compatui/ReflectionHelper;->RunningTaskInfo_inOplusCompatMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mHasCompat:Z

    iput-object p2, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mTaskInfo:Landroid/app/TaskInfo;

    iput-object p5, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iput-object p6, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatUIControllerExt:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    iget p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatUIControllerExt:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->getFullscreenSwitchController()Lcom/oplus/compatui/OplusFullscreenSwitchController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mFSSController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iget-object p2, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    if-eqz p2, :cond_39

    iget-object p2, p2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;)V

    :cond_39
    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateLayoutInfoParams()V

    const-string p1, "ctor mCompatInfo "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCompatUIWindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/compatui/OplusCompatUIWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/compatui/OplusCompatUIWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/compatui/OplusCompatUIWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    return p0
.end method

.method public static synthetic access$300(Lcom/oplus/compatui/OplusCompatUIWindowManager;)Lcom/oplus/compatui/OplusFullscreenSwitchController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mFSSController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    return-object p0
.end method

.method public static synthetic access$400(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->orientationToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->positionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception p0

    const-string p1, "OplusCompatUIWindowManager"

    const-string v0, "getCompactWindowInfo "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private logD(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusCompatUIWindowManager"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusCompatUIWindowManager"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private static orientationToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "unknown"

    return-object p0

    :cond_b
    const-string p0, "land"

    return-object p0

    :cond_e
    const-string p0, "port"

    return-object p0

    :cond_11
    const-string p0, "?orien"

    return-object p0
.end method

.method private static positionToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "unknown"

    return-object p0

    :cond_b
    const-string p0, "right"

    return-object p0

    :cond_e
    const-string p0, "middle"

    return-object p0

    :cond_11
    const-string p0, "left"

    return-object p0
.end method

.method private setLayoutAlpha(Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutAlpha "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xa6

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_38

    :cond_33
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_38
    return-void
.end method

.method private shouldShowInfoBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z
    .registers 7

    sget-boolean p0, Lcom/oplus/compatui/FantasyWindowDBConstants;->IS_TABLET:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    iget-boolean p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->showButton:Z

    if-nez p0, :cond_b

    return v0

    :cond_b
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_16

    if-ne p0, v2, :cond_14

    goto :goto_16

    :cond_14
    move p0, v0

    goto :goto_17

    :cond_16
    :goto_16
    move p0, v2

    :goto_17
    if-nez p0, :cond_1a

    return v0

    :cond_1a
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    if-eqz p0, :cond_23

    if-ne p0, v2, :cond_21

    goto :goto_23

    :cond_21
    move p0, v0

    goto :goto_24

    :cond_23
    :goto_23
    move p0, v2

    :goto_24
    if-nez p0, :cond_27

    return v0

    :cond_27
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const p1, 0x3fe38e39

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v3, 0x3fb999999999999aL  # 0.1

    cmpl-double p0, p0, v3

    if-lez p0, :cond_3c

    return v0

    :cond_3c
    return v2
.end method

.method private shouldShowMoveBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z
    .registers 9

    iget-boolean p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->showButton:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3fe38e39

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v1, p0

    const-wide v3, 0x3fb999999999999aL  # 0.1

    cmpg-double p0, v1, v3

    const/4 v1, 0x1

    if-gez p0, :cond_1c

    return v1

    :cond_1c
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v2, 0x3faaaaab

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v5, p0

    cmpg-double p0, v5, v3

    if-gez p0, :cond_36

    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    if-ne p0, v1, :cond_30

    return v1

    :cond_30
    const/4 v1, 0x2

    if-ne p0, v1, :cond_36

    iget-boolean p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topInFullScreen:Z

    return p0

    :cond_36
    return v0
.end method

.method private shouldShowToFullBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z
    .registers 9

    sget-boolean p0, Lcom/oplus/compatui/FantasyWindowDBConstants;->IS_TABLET:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    iget-boolean p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->showButton:Z

    if-nez p0, :cond_b

    return v0

    :cond_b
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_16

    if-ne p0, v2, :cond_14

    goto :goto_16

    :cond_14
    move v3, v0

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    if-nez v3, :cond_1a

    return v0

    :cond_1a
    iget v3, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    if-ne v3, v2, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v0

    :goto_21
    if-ne p0, v2, :cond_2a

    if-nez v3, :cond_27

    :goto_25
    move p0, v2

    goto :goto_28

    :cond_27
    move p0, v0

    :goto_28
    or-int/2addr v4, p0

    goto :goto_2f

    :cond_2a
    if-ne p0, v1, :cond_2f

    if-ne v3, v1, :cond_27

    goto :goto_25

    :cond_2f
    :goto_2f
    if-nez v4, :cond_32

    return v0

    :cond_32
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3fe38e39

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v3, p0

    const-wide v5, 0x3fb999999999999aL  # 0.1

    cmpg-double p0, v3, v5

    if-gez p0, :cond_47

    return v2

    :cond_47
    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const v1, 0x3faaaaab

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v3, p0

    cmpg-double p0, v3, v5

    if-gez p0, :cond_5b

    iget p0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    if-ne p0, v2, :cond_5b

    return v2

    :cond_5b
    return v0
.end method

.method private updateLayoutInfoParams()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-object v1, v1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-object v0, v0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_21
    const v1, 0x3faaaaab

    iget-object v2, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-object v2, v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v3, "compat_ratio"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-object v1, v1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    :cond_38
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    iget-object v5, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    iget-boolean v6, v5, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->showButton:Z

    iput-boolean v6, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->showButton:Z

    iput v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    iget v0, v5, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactWindowPosition:I

    iput v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    iput v1, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatRatio:F

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->updateLayout:Z

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topMargin:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->bottomMargin:I

    iget-boolean v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mTopInFullScreen:Z

    iput-boolean v0, v4, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topInFullScreen:Z

    const-string v0, "updateLayoutInfoParams "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logV(Ljava/lang/String;)V

    return-void
.end method

.method private updateVisibilityOfInfo(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V
    .registers 5

    iget-boolean v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->updateLayout:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    iget v1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    iget v2, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/compatui/OplusCompatUILayout;->updateInfoLayout(II)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->shouldShowInfoBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->setInfoButtonVisibility(Z)V

    goto :goto_20

    :cond_1a
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->setInfoButtonVisibility(Z)V

    :goto_20
    return-void
.end method

.method private updateVisibilityOfMoves(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V
    .registers 8

    iget-boolean v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->updateLayout:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {v0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->updateMovePosBtnLayout(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V

    :cond_9
    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->shouldShowMoveBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a2

    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    const-string v2, " "

    const-string v3, "updateVM unexpected orientation "

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_52

    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    if-eqz v0, :cond_4c

    if-eq v0, v5, :cond_46

    if-eq v0, v4, :cond_40

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_40
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v5, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_46
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v5, v1, v5}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_4c
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v1, v5}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_52
    if-ne v0, v5, :cond_8c

    iget v0, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    if-eqz v0, :cond_86

    if-eq v0, v5, :cond_80

    if-eq v0, v4, :cond_7a

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_7a
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v5, v1, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_80
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v5, v1, v5, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_86
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v5, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_8c
    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    goto :goto_a7

    :cond_a2
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setMovePosBtnVisibility(ZZZZ)V

    :goto_a7
    return-void
.end method

.method private updateVisibilityOfToFull(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->shouldShowToFullBtn(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->setToFullButtonVisibility(Z)V

    goto :goto_13

    :cond_d
    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusCompatUILayout;->setToFullButtonVisibility(Z)V

    :goto_13
    return-void
.end method

.method private updateVisibilityOfViews()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    if-nez v0, :cond_9

    goto :goto_2c

    :cond_9
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->updateLayout:Z

    const-string v0, "updateVis sB="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCompatUIWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfMoves(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfToFull(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private updateVisibilityOfViews(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    if-eqz v0, :cond_2f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    if-nez v0, :cond_c

    goto :goto_2f

    :cond_c
    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    iput p1, v0, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->compatPosition:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->updateLayout:Z

    const-string p1, "updateVisPos sB="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfMoves(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfToFull(Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public createLayout()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->inflateLayout()Lcom/oplus/compatui/OplusCompatUILayout;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-virtual {v0, p0}, Lcom/oplus/compatui/OplusCompatUILayout;->inject(Lcom/oplus/compatui/OplusCompatUIWindowManager;)V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews()V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mOnBtnClickListener:Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;

    invoke-virtual {v0, v1}, Lcom/oplus/compatui/OplusCompatUILayout;->setOnBtnClickListener(Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;)V

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    return-object p0
.end method

.method public eligibleToShowLayout()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mHasCompat:Z

    return p0
.end method

.method public getCompatInfo()Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    return-object p0
.end method

.method public getLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    const-string v0, "getWindowLayoutParams "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->logV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getZOrder()I
    .registers 1

    const p0, 0x7fffffff

    return p0
.end method

.method public inflateLayout()Lcom/oplus/compatui/OplusCompatUILayout;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$layout;->oplus_compat_ui_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/compatui/OplusCompatUILayout;

    return-object p0
.end method

.method public onParentBoundsChanged()V
    .registers 1

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->onParentBoundsChanged()V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateLayoutInfoParams()V

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->relayout()V

    return-void
.end method

.method public refreshCompactInfo()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateLayoutInfoParams()V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews()V

    return-void
.end method

.method public relayout()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public removeLayout()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mFSSController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iget-object v0, v0, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->compactPkg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    return-void
.end method

.method public showLayout(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->setLayoutAlpha(Z)V

    return-void
.end method

.method public topActivityChanged()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateLayoutInfoParams()V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews()V

    return-void
.end method

.method public topInFullScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mTopInFullScreen:Z

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayoutParams:Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;

    iput-boolean p1, v0, Lcom/oplus/compatui/OplusCompatUIWindowManager$LayoutInfoParams;->topInFullScreen:Z

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews()V

    return-void
.end method

.method public updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/oplus/compatui/ReflectionHelper;->RunningTaskInfo_inOplusCompatMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mHasCompat:Z

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mTaskInfo:Landroid/app/TaskInfo;

    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mCompatInfo:Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateLayoutInfoParams()V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateVisibilityOfViews()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-void
.end method

.method public updateSurfacePosition()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager;->mLayout:Lcom/oplus/compatui/OplusCompatUILayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateSurfacePosition(II)V

    return-void
.end method
