.class public final Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $iconLocation:Landroid/graphics/RectF;

.field public final synthetic $isCard:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $isFolderIcon:Z

.field public final synthetic $runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $workspaceStartScrollX:I

.field public final synthetic $workspaceView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/RectF;ZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lkotlin/jvm/internal/Ref$BooleanRef;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;",
            "Landroid/graphics/RectF;",
            "Z",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;",
            "Lcom/android/launcher3/views/FloatingIconView;",
            "Landroid/view/View;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iput-object p3, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$iconLocation:Landroid/graphics/RectF;

    iput-boolean p4, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isFolderIcon:Z

    iput-object p5, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isCard:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p8, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$workspaceView:Landroid/view/View;

    iput-object p9, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput p10, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$workspaceStartScrollX:I

    invoke-direct {p0, p2}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->setAnimation$lambda-1(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->setAnimation$lambda-2(Lcom/android/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method private static final setAnimation$lambda-1(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "setAnimation onGlobalLayoutDone new targetRect: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusLauncherSwipeHandlerV2Impl"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->updateTargetRect(Landroid/graphics/RectF;)V

    :goto_26
    if-nez p1, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {p1}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    :goto_2c
    return-void
.end method

.method private static final setAnimation$lambda-2(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 1

    if-nez p0, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    :goto_6
    return-void
.end method


# virtual methods
.method public calculateScrollX(F)I
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2a

    const-string v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    move-object v6, v0

    sget-object v1, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$hotseatIcon:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    const-string v0, "mActivity.workspace"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$workspaceStartScrollX:I

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result p0

    return p0
.end method

.method public canUseWorkspaceItemView()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ge v1, v0, :cond_b

    move v1, v0

    :cond_b
    mul-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    int-to-long v1, v1

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    const-string v0, "mActivity.stateManager.c…                        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCardAnimRadius(Landroid/content/res/Resources;)I
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$workspaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-nez v0, :cond_e

    goto :goto_16

    :cond_e
    invoke-interface {v0, p1}, Lcom/oplus/card/manager/domain/ICardView;->getAppTransAnimRadius(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_16
    if-nez v2, :cond_1d

    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getCardAnimRadius(Landroid/content/res/Resources;)I

    move-result p0

    goto :goto_21

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_21
    return p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$canUseWorkspaceView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->getOplusWindowTargetRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$iconLocation:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-boolean v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isFolderIcon:Z

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v1, v1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v2, v1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_33

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isCard:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_33

    const-string p0, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    iget p0, v1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, p0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_33
    return-object v0
.end method

.method public isCard()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isCard:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconView;->fastFinish()V

    :goto_8
    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->end()V

    :goto_14
    return-void
.end method

.method public onEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v1, v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_e
    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->end()V

    :goto_1a
    return-void
.end method

.method public playAtomicAnimation(F)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v1, "OplusLauncherSwipeHandlerV2Impl"

    const-string v2, "QuickStep"

    if-nez v0, :cond_16

    const-string p0, "playAtomicAnimation: launcher has no workspace."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_26

    const-string p0, "playAtomicAnimation: launcher.workspace has no cellLayout."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string p1, "mActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->createWindowAnimationToTaskViewAnimation(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_74

    :cond_43
    sget-object v0, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim;->Companion:Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;

    iget-object v1, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$runningTaskView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SwipeUpSearchAppSpringAnim$Companion;->isDockSearch(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->setAnimType(I)V

    :cond_55
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    new-instance v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget-object v2, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v2, v2, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZI)V

    invoke-static {v0, v1}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$setWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-static {p0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->access$getWorkspaceAnim$p(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;)Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    move-result-object p0

    if-nez p0, :cond_71

    goto :goto_74

    :cond_71
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->start()V

    :goto_74
    return-void
.end method

.method public setAnimType(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    return-void
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v1, v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    if-nez p1, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_17
    iget-object v0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-nez v0, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance v1, Lcom/android/quickstep/k;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/k;-><init>(Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    :goto_24
    iget-object p0, p0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-nez p0, :cond_29

    goto :goto_32

    :cond_29
    new-instance v0, Lcom/android/quickstep/y;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/y;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    :goto_32
    return-void
.end method

.method public update(FFLandroid/graphics/RectF;FFLjava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/graphics/RectF;",
            "FF",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    const-string v2, "currentRect"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "canStartForegroundAnim"

    move-object/from16 v10, p6

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "shouldGetIconImmediately"

    move-object/from16 v11, p7

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v5, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3d
    iget-boolean v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isFolderIcon:Z

    if-nez v1, :cond_6f

    iget-object v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v1, v1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v2, v1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v2, :cond_6f

    iget-object v2, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$isCard:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_6f

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/OplusDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v5, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->this$0:Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v5, v5, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v5, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    neg-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_6f
    iget-object v3, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$2;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    if-nez v3, :cond_74

    goto :goto_8a

    :cond_74
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7b

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_7b
    move v5, v0

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v9, 0x0

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;)V

    :goto_8a
    return-void
.end method
