.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LightAnimation"
.end annotation


# static fields
.field private static final DURATION_LIGHT_WINDOW_SCALE:[J

.field private static final DURATION_WS_FAST:J = 0x17cL

.field private static final DURATION_WS_SLOW:J = 0x1c2L

.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;

.field private static final INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

.field private static final MIN_WINDOW_SCALE:F = 0.6f


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->DURATION_LIGHT_WINDOW_SCALE:[J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

    return-void

    nop

    :array_28
    .array-data 8
        0x1c2
        0x17c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLightWindowAnimation(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Landroid/animation/ValueAnimator;
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v2, p2

    const-string v1, "launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targets"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const-string v3, "getLightWindowAnimation, isOpen = "

    const-string v4, ", mainLayoutRect="

    invoke-static {v3, v2, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TaskViewAnimationUtil"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    array-length v1, v6

    new-array v11, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    int-to-float v8, v1

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->DURATION_LIGHT_WINDOW_SCALE:[J

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    if-eqz v2, :cond_5f

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

    goto :goto_61

    :cond_5f
    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

    :goto_61
    move-object v5, v1

    const/4 v13, 0x2

    new-array v1, v13, [F

    fill-array-data v1, :array_9a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v14, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;

    move-object v1, v15

    move/from16 v2, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$1;-><init>(ZJLandroid/view/animation/PathInterpolator;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;FLandroid/graphics/Point;Landroid/graphics/Rect;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "animator"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$$inlined$doOnStart$1;

    invoke-direct {v1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$$inlined$doOnStart$1;-><init>()V

    invoke-virtual {v14, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation$getLightWindowAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v14, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v0, v13, v1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    return-object v14

    :array_9a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
