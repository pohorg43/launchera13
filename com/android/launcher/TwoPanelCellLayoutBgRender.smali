.class public final Lcom/android/launcher/TwoPanelCellLayoutBgRender;
.super Lcom/android/launcher/AbsCellLayoutBgRender;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/TwoPanelCellLayoutBgRender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/TwoPanelCellLayoutBgRender$Companion;

.field private static final DROP_TARGET_ALPHA:I = 0x4d

.field private static final DURATION_HIGHLIGHT_BG_ANIM:J = 0x12cL

.field public static final NORMAL_ALPHA:I = 0x26

.field private static final TAG:Ljava/lang/String; = "TwoPanelCellLayoutBgRender"


# instance fields
.field private mDropTargetAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/TwoPanelCellLayoutBgRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/TwoPanelCellLayoutBgRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->Companion:Lcom/android/launcher/TwoPanelCellLayoutBgRender$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/AbsCellLayoutBgRender;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method


# virtual methods
.method public animateBackground(ZZZ)V
    .registers 6

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result p2

    const-string p3, "TwoPanelCellLayoutBgRender"

    if-eqz p2, :cond_19

    const-string p0, "Do not animate while switching state"

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_37

    const-string p0, "Not support for current state"

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget-object p2, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p2, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_47
    :goto_47
    if-eqz p1, :cond_4c

    const/16 p1, 0x4d

    goto :goto_68

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.states.OplusBaseLauncherState"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getCellLayoutBgAlpha(Lcom/android/launcher3/Launcher;)I

    move-result p1

    :goto_68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "animateBackground, targetAlpha = "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    sget-object p3, Lcom/android/launcher/AbsCellLayoutBgRender;->PAINT_ALPHA:Landroid/util/IntProperty;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/TwoPanelCellLayoutBgRender;->mDropTargetAnim:Landroid/animation/ValueAnimator;

    :cond_13
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;I)I
    .registers 12

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result p2

    if-nez p2, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v4, p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float v5, p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRadius()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
