.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInLargeScreen$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mHasDone:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field public final synthetic val$cleanUp:Ljava/lang/Runnable;

.field public final synthetic val$displayBounds:Landroid/graphics/Rect;

.field public final synthetic val$leftPanel:Landroid/view/SurfaceControl;

.field public final synthetic val$leftPanelIcon:Landroid/view/SurfaceControl;

.field public final synthetic val$panelWidth:I

.field public final synthetic val$rightPanel:Landroid/view/SurfaceControl;

.field public final synthetic val$rightPanelBackground:Landroid/view/SurfaceControl;

.field public final synthetic val$rightPanelIcon:Landroid/view/SurfaceControl;

.field public final synthetic val$screenshot:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .registers 11

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanel:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanel:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanelIcon:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelIcon:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$screenshot:Landroid/view/SurfaceControl;

    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$panelWidth:I

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelBackground:Landroid/view/SurfaceControl;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$cleanUp:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->mHasDone:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->lambda$onStageHasChildrenChanged$3(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->lambda$onStageHasChildrenChanged$0(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 17

    invoke-direct/range {p0 .. p16}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->lambda$onStageHasChildrenChanged$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->lambda$onStageHasChildrenChanged$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$0(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removeOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-virtual/range {p16 .. p16}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$600(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v6

    float-to-double v7, v6

    const-wide v9, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v7, v7, v9

    const/4 v8, 0x0

    if-gez v7, :cond_2a

    move v6, v8

    :cond_2a
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    if-eqz p1, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v11

    if-eqz v11, :cond_50

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v11}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$700(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    move-result-object v11

    move-object v12, v7

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->animateBounds(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    :cond_50
    const/high16 v18, 0x40800000  # 4.0f

    const/high16 v15, 0x3f800000  # 1.0f

    if-eqz v1, :cond_65

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v11

    if-eqz v11, :cond_65

    mul-float v11, v6, v18

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v7, v1, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_65
    if-eqz p5, :cond_83

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$700(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    move-result-object v11

    move-object v12, v7

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move v1, v15

    move-object/from16 v15, p7

    move/from16 v16, v6

    move-object/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->animateBounds(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    goto :goto_84

    :cond_83
    move v1, v15

    :goto_84
    if-eqz v2, :cond_95

    invoke-virtual/range {p8 .. p8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v11

    if-eqz v11, :cond_95

    mul-float v11, v6, v18

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v7, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_95
    if-eqz v3, :cond_a9

    invoke-virtual/range {p9 .. p9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_a9

    sub-float v15, v1, v6

    const v2, 0x3e99999a  # 0.3f

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v7, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_a9
    if-eqz v4, :cond_cb

    invoke-virtual/range {p10 .. p10}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual {v7, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$700(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    move-result-object v2

    move-object/from16 p1, v2

    move-object/from16 p2, v7

    move-object/from16 p3, p10

    move-object/from16 p4, p11

    move-object/from16 p5, p12

    move/from16 p6, v6

    move-object/from16 p7, p12

    invoke-virtual/range {p1 .. p7}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->animateBounds(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    :cond_cb
    invoke-virtual/range {p16 .. p16}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x44160000  # 600.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000  # 100.0f

    invoke-virtual/range {p16 .. p16}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v11

    long-to-float v4, v11

    div-float/2addr v3, v4

    sub-float/2addr v5, v3

    mul-float/2addr v5, v2

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$800(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    float-to-double v3, v2

    cmpg-double v3, v3, v9

    if-gez v3, :cond_ee

    goto :goto_ef

    :cond_ee
    move v8, v2

    :goto_ef
    float-to-double v2, v8

    const-wide v4, 0x3fefae147ae147aeL  # 0.99

    cmpl-double v2, v2, v4

    if-lez v2, :cond_fa

    goto :goto_fb

    :cond_fa
    move v1, v8

    :goto_fb
    if-eqz p13, :cond_114

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$700(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    move-result-object v2

    move-object/from16 p1, v2

    move-object/from16 p2, v7

    move-object/from16 p3, p13

    move-object/from16 p4, p14

    move-object/from16 p5, p15

    move/from16 p6, v1

    move-object/from16 p7, p15

    invoke-virtual/range {p1 .. p7}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->animateBounds(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    :cond_114
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onStageHasChildrenChanged$3(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p3

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public onStageHasChildrenChanged(Z)V
    .registers 27

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->mHasDone:Z

    if-nez v0, :cond_1ec

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMainStageActive()Z

    move-result v0

    if-eqz v0, :cond_1ec

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->mHasDone:Z

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$000(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/splitscreen/f0;

    invoke-direct {v3, v1, v1}, Lcom/android/wm/shell/splitscreen/f0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    const/4 v10, 0x2

    new-array v2, v10, [F

    fill-array-data v2, :array_1ee

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v5, 0xc8

    invoke-virtual {v9, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanel:Landroid/view/SurfaceControl;

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanel:Landroid/view/SurfaceControl;

    new-instance v4, Lcom/android/wm/shell/splitscreen/d0;

    const/4 v15, 0x0

    invoke-direct {v4, v1, v2, v3, v15}, Lcom/android/wm/shell/splitscreen/d0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)V

    invoke-virtual {v9, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$300(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v11, v2

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_getWallpaperDisplayAreaSurface()Landroid/view/SurfaceControl;

    move-result-object v12

    move-object v14, v12

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;

    invoke-direct {v3, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;)V

    invoke-virtual {v9, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v10, [F

    fill-array-data v3, :array_1f6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    const-wide/16 v3, 0x30f

    invoke-virtual {v13, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$500(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_landscape_visible_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    move-object v3, v8

    iget v4, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$panelWidth:I

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v8, v15, v15, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    move-object v4, v0

    invoke-direct {v0, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v5, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v7, v6

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    div-int/2addr v6, v10

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v8, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$panelWidth:I

    sub-int/2addr v6, v8

    iget-object v8, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v0, v6, v15, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    move-object v8, v6

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v0, v5

    const/4 v5, 0x2

    div-int/2addr v0, v5

    invoke-virtual {v6, v10, v0}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/Rect;

    move-object v10, v13

    move-object v13, v0

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v0, v15, v15, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    move-object v6, v12

    move-object v12, v5

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v15, 0x3f4ccccd  # 0.8f

    invoke-virtual {v5, v15}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v0, v0, v18

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/Rect;

    move-object/from16 v16, v0

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v15, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$displayBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v5, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v19, v2

    move-object v15, v5

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v2, 0x3f8ccccd  # 1.1f

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v2, v2, v21

    const/16 v18, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v21

    sub-int v0, v0, v21

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanel:Landroid/view/SurfaceControl;

    move-object/from16 v0, v20

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanelIcon:Landroid/view/SurfaceControl;

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanel:Landroid/view/SurfaceControl;

    move-object/from16 v22, v6

    move-object v6, v0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelIcon:Landroid/view/SurfaceControl;

    move-object/from16 v17, v9

    move-object v9, v0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelBackground:Landroid/view/SurfaceControl;

    move-object/from16 v23, v10

    move-object v10, v0

    new-instance v0, Lcom/android/wm/shell/splitscreen/e0;

    move-object/from16 p1, v0

    move-object/from16 v24, v20

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/e0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_1fe

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanel:Landroid/view/SurfaceControl;

    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanel:Landroid/view/SurfaceControl;

    new-instance v6, Lcom/android/wm/shell/splitscreen/d0;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v4, v5, v7}, Lcom/android/wm/shell/splitscreen/d0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v17, v5, v19

    aput-object v0, v5, v7

    aput-object v2, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;

    move-object/from16 v2, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/u;

    invoke-direct {v1, v4}, Lcom/android/wm/shell/splitscreen/u;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1ec
    return-void

    nop

    :array_1ee
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1f6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1fe
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
