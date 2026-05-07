.class public abstract Lcom/android/quickstep/OplusBaseActivityInterface;
.super Lcom/android/quickstep/BaseActivityInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseActivityInterface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;ACTIVITY_TYPE:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/quickstep/BaseActivityInterface<",
        "TSTATE_TYPE;TACTIVITY_TYPE;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/OplusBaseActivityInterface$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusBaseActivityInterface"

.field private static final TMP_TASK_RECT_REUSE_TIMEOUT:I = 0x10


# instance fields
.field private lastTmpTaskRectUpdateTime:J

.field private mCalculateLogShown:Z

.field private final tmpTaskRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseActivityInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseActivityInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseActivityInterface;->Companion:Lcom/android/quickstep/OplusBaseActivityInterface$Companion;

    return-void
.end method

.method public constructor <init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTSTATE_TYPE;TSTATE_TYPE;)V"
        }
    .end annotation

    const-string v0, "overviewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;-><init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseActivityInterface;->tmpTaskRect:Landroid/graphics/Rect;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/quickstep/OplusBaseActivityInterface;->lastTmpTaskRectUpdateTime:J

    return-void
.end method

.method private final getOplusOverviewActionsHeight(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p1, v0, :cond_14

    const p1, 0x7f070991

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1b

    :cond_14
    const p1, 0x7f070985

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1b
    const v0, 0x7f070993

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dp"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outRect"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    const-string v0, "OplusBaseActivityInterface#calculateTaskSize"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, v10, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_68

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v10, v0}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-static/range {p1 .. p2}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070999

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v5, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v1

    invoke-static {v5}, Li1/j;->o(F)I

    move-result v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Li1/j;->o(F)I

    move-result v1

    const/16 v4, 0x11

    invoke-static {v4, v5, v1, v0, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->lastTmpTaskRectUpdateTime:J

    sub-long/2addr v4, v6

    iget-object v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->tmpTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-boolean v0, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_92

    const-wide/16 v6, 0x10

    cmp-long v0, v4, v6

    if-gez v0, :cond_92

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->tmpTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_92
    invoke-static/range {p1 .. p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v0, 0x7f070998

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iget v13, v10, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_ac

    move v15, v14

    goto :goto_bc

    :cond_ac
    const v0, 0x7f07099e

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f07099d

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    move v15, v2

    :goto_bc
    const v0, 0x7f07027d

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/OplusBaseActivityInterface;->getOplusOverviewActionsHeight(Landroid/content/Context;)I

    move-result v7

    iget v3, v10, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int v0, v15, v7

    add-int v4, v0, v13

    const/16 v16, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v8

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v18, v8

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_fb

    iget-boolean v0, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_fb

    const v0, 0x7f070282

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v11, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_fb
    iget-boolean v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->mCalculateLogShown:Z

    if-nez v0, :cond_156

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->mCalculateLogShown:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_156

    const-string v0, "calculateTaskSize(), outRect="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, v10, Lcom/android/launcher3/OplusDeviceProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_123

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    goto :goto_124

    :cond_123
    move-object v1, v2

    :goto_124
    if-nez v1, :cond_127

    goto :goto_12b

    :cond_127
    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_12b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proactiveRowAndMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalPadding="

    const-string v2, ", overviewActionsHeight = "

    move/from16 v3, v18

    invoke-static {v0, v15, v1, v3, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", horizontalPadding = "

    const-string v2, ", overviewTaskThumbnailTopMarginPx = "

    move/from16 v4, v17

    invoke-static {v0, v4, v1, v3, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, v10, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseActivityInterface"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_156
    iget-object v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->tmpTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/quickstep/OplusBaseActivityInterface;->lastTmpTaskRectUpdateTime:J

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public getOplusSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;I)I
    .registers 7

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientationHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/quickstep/OplusBaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p0, p2, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_2e

    iget p0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_51

    :cond_2e
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    goto :goto_51

    :cond_34
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/high16 p2, 0x40800000  # 4.0f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p3

    if-nez p3, :cond_4e

    const/4 p3, 0x1

    if-eq p5, p3, :cond_44

    const/4 p3, 0x3

    if-ne p5, p3, :cond_4e

    :cond_44
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/high16 p2, 0x40a00000  # 5.0f

    :cond_4e
    int-to-float p0, p0

    div-float/2addr p0, p2

    float-to-int p0, p0

    :goto_51
    return p0
.end method

.method public final onSwipeUpToRecentsComplete()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    const-string v1, "onSwipeUpToRecentsComplete: current state is "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseActivityInterface"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v1, "null cannot be cast to non-null type STATE_TYPE of com.android.quickstep.OplusBaseActivityInterface"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_43

    :cond_3c
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    :goto_43
    return-void
.end method

.method public onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eqz p2, :cond_17

    if-nez p3, :cond_17

    invoke-virtual {p0, p2}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    :cond_17
    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    instance-of p0, v0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_36

    move-object p0, v0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void

    :cond_36
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public final oplusSwitchToRecentsIfVisible(Ljava/lang/Runnable;)Z
    .registers 10
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "onCompleteCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_6d

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    instance-of v5, v1, Lo1/d;

    if-eqz v5, :cond_28

    check-cast v1, Lo1/d;

    goto :goto_29

    :cond_28
    move-object v1, v4

    :goto_29
    if-nez v1, :cond_2c

    goto :goto_6d

    :cond_2c
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lo1/d;->d(I)V

    goto :goto_6d

    :cond_31
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    instance-of v5, v1, Lo1/d;

    if-eqz v5, :cond_3c

    check-cast v1, Lo1/d;

    goto :goto_3d

    :cond_3c
    move-object v1, v4

    :goto_3d
    if-nez v1, :cond_40

    goto :goto_6d

    :cond_40
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_59

    const-string/jumbo v5, "stopStartScoll mClient not null:"

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lo1/d;->b:Lo1/b;

    if-eqz v6, :cond_53

    move v6, v2

    goto :goto_54

    :cond_53
    move v6, v3

    :goto_54
    const-string v7, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v5, v6, v7}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_59
    iget-object v1, v1, Lo1/d;->b:Lo1/b;

    if-eqz v1, :cond_6d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_6b

    const-string v5, "BrowserLauncherClient"

    const-string/jumbo v6, "stopStartScoll type:4"

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    iput-boolean v2, v1, Lo1/b;->D:Z

    :cond_6d
    :goto_6d
    const-string v1, "OplusBaseActivityInterface"

    const-string v5, "QuickStep"

    if-eqz v0, :cond_f9

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_f9

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v6

    if-nez v6, :cond_81

    goto/16 :goto_f9

    :cond_81
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v6

    if-nez v6, :cond_9a

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v6

    if-eqz v6, :cond_9a

    instance-of v6, v0, Lcom/android/launcher/Launcher;

    if-eqz v6, :cond_9a

    move-object v6, v0

    check-cast v6, Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v6

    if-nez v6, :cond_9b

    :cond_9a
    move v3, v2

    :cond_9b
    const-string v6, "oplusSwitchToRecentsIfVisible: animated is "

    invoke-static {v3, v6, v5, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_b1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v1

    if-nez v1, :cond_ae

    goto :goto_b1

    :cond_ae
    invoke-virtual {v1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_b1
    :goto_b1
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    new-instance p0, Lcom/android/quickstep/OplusBaseActivityInterface$oplusSwitchToRecentsIfVisible$animCallback$1;

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseActivityInterface$oplusSwitchToRecentsIfVisible$animCallback$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-nez p1, :cond_c1

    move-object p1, v4

    goto :goto_c5

    :cond_c1
    invoke-virtual {p1}, Lcom/android/launcher3/OplusDragLayer;->getActiveController()Lcom/android/launcher3/util/TouchController;

    move-result-object p1

    :goto_c5
    instance-of v1, p1, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;

    if-eqz v1, :cond_cc

    check-cast p1, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;

    goto :goto_cd

    :cond_cc
    move-object p1, v4

    :goto_cd
    if-nez p1, :cond_d0

    goto :goto_d3

    :cond_d0
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->cancelDragAnim()V

    :goto_d3
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-nez p1, :cond_db

    move-object p1, v4

    goto :goto_df

    :cond_db
    invoke-virtual {p1}, Lcom/android/launcher3/OplusDragLayer;->getActiveController()Lcom/android/launcher3/util/TouchController;

    move-result-object p1

    :goto_df
    instance-of v1, p1, Lcom/android/launcher3/pullup/PullUpSearchTouchController;

    if-eqz v1, :cond_e6

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/pullup/PullUpSearchTouchController;

    :cond_e6
    if-nez v4, :cond_e9

    goto :goto_ec

    :cond_e9
    invoke-virtual {v4}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;->cancelDragAnim()V

    :goto_ec
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return v2

    :cond_f9
    :goto_f9
    const-string p0, "oplusSwitchToRecentsIfVisible(), launcher null, return."

    invoke-static {v5, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public resetCalculateLogState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseActivityInterface;->mCalculateLogShown:Z

    return-void
.end method

.method public setCustomOnDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V
    .registers 3

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_14

    const-string p0, "QuickStep"

    const-string p1, "OplusBaseActivityInterface"

    const-string v0, "setOnDeferredWorkspaceTransitionCallback, return as we get null launcher"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_21

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V

    :cond_21
    return-void
.end method
