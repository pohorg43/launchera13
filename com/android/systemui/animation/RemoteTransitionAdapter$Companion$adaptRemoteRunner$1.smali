.class public final Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;
.super Landroid/window/IRemoteTransition$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->adaptRemoteRunner(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6

    const-string/jumbo p0, "token"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "t"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mergeTarget"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "finishCallback"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 28

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const-string/jumbo v1, "token"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "t"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "finishCallback"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    sget-object v1, Lcom/android/systemui/animation/RemoteTransitionAdapter;->Companion:Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v0, v11}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v12

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v0, v11}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion;->wrapTargets(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v13

    new-array v14, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x2

    if-ltz v1, :cond_d7

    move v8, v5

    move v9, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    move v5, v2

    move v6, v5

    :goto_48
    add-int/lit8 v18, v1, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v19

    if-eqz v19, :cond_89

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-ne v4, v15, :cond_86

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_78

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_76

    goto :goto_79

    :cond_76
    const/4 v2, 0x0

    goto :goto_7a

    :cond_78
    const/4 v5, 0x3

    :goto_79
    move v2, v4

    :goto_7a
    invoke-static {v3, v1}, Lcom/android/systemui/animation/g;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    move-object/from16 v16, v7

    move/from16 v22, v5

    move v5, v1

    move/from16 v1, v22

    goto :goto_94

    :cond_86
    const/4 v1, 0x3

    const/4 v4, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x3

    :goto_8a
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_94

    move-object/from16 v17, v7

    :cond_94
    :goto_94
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v19

    if-nez v19, :cond_c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v19

    if-ltz v19, :cond_c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    if-eq v1, v4, :cond_c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    move v8, v4

    move v9, v6

    move v6, v1

    :cond_c8
    if-gez v18, :cond_d2

    move v1, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_e4

    :cond_d2
    move/from16 v1, v18

    const/4 v4, 0x1

    goto/16 :goto_48

    :cond_d7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_e4
    new-instance v9, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-direct {v9}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;-><init>()V

    new-instance v8, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;

    invoke-direct {v8}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;-><init>()V

    if-eqz v16, :cond_130

    if-eqz v18, :cond_130

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_130

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const-string v4, "info.getChange(launcherTask.parent!!)!!.leash"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v9

    move-object/from16 v5, p3

    move/from16 v7, v18

    move-object/from16 p1, v8

    move/from16 v8, v19

    move-object/from16 v21, v9

    move/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_134

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_134

    :cond_130
    move-object/from16 p1, v8

    move-object/from16 v21, v9

    :cond_134
    :goto_134
    if-eqz v2, :cond_1ca

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_150

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_150
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1ac

    :goto_15c
    add-int/lit8 v2, v1, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v4, v3}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v4

    if-nez v4, :cond_187

    goto :goto_18c

    :cond_187
    if-eq v6, v15, :cond_18f

    const/4 v4, 0x4

    if-eq v6, v4, :cond_18f

    :goto_18c
    move-object/from16 v1, v21

    goto :goto_1a5

    :cond_18f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :goto_1a5
    if-gez v2, :cond_1a8

    goto :goto_1ae

    :cond_1a8
    move-object/from16 v21, v1

    move v1, v2

    goto :goto_15c

    :cond_1ac
    move-object/from16 v1, v21

    :goto_1ae
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_22a

    :goto_1b3
    add-int/lit8 v4, v2, -0x1

    aget-object v5, v13, v2

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v2, v13, v2

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-gez v4, :cond_1c8

    goto :goto_22a

    :cond_1c8
    move v2, v4

    goto :goto_1b3

    :cond_1ca
    move-object/from16 v1, v21

    if-eqz v16, :cond_1db

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_1db
    if-eqz v17, :cond_22a

    if-eqz v18, :cond_22a

    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_22a

    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const-string v2, "info.getChange(wallpaper.parent!!)!!.leash"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_22a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v2}, Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_22c

    :cond_22a
    :goto_22a
    move-object/from16 v4, p1

    :goto_22c
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;

    move-object v0, v8

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v11

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1$startAnimation$animationFinishedCallback$1;-><init>(Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Lcom/android/systemui/animation/RemoteTransitionAdapter$CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;->$runner:Landroid/view/IRemoteAnimationRunner;

    const/4 v4, 0x0

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
