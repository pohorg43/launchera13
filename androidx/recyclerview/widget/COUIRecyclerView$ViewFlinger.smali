.class public Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 9

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p4, p3

    int-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v2, :cond_28

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_2c

    :cond_28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    :goto_2c
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p0, p4

    if-lez p3, :cond_51

    const/high16 p1, 0x447a0000  # 1000.0f

    int-to-float p2, p3

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_5c

    :cond_51
    if-eqz v2, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    :goto_55
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000  # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_5c
    const/16 p1, 0x7d0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 2

    const/high16 p0, 0x3f000000  # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private internalPostOnAnimation()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fling(II)V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    move/from16 v5, p1

    int-to-float v2, v5

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$702(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    move/from16 v6, p2

    int-to-float v2, v6

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$802(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v2, v3, :cond_2e

    iput-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_2e
    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v2 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIII)V

    iget-object v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v2

    invoke-interface {v2}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v3

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$900(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->c()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_6a

    goto/16 :goto_207

    :cond_6a
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_72

    goto/16 :goto_207

    :cond_72
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    move-object v10, v5

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v12, v6, -0x1

    invoke-interface {v10, v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v10

    if-nez v10, :cond_83

    goto/16 :goto_207

    :cond_83
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    const/high16 v16, 0x3f800000  # 1.0f

    if-eqz v13, :cond_110

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v13

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v14

    if-nez v14, :cond_97

    goto/16 :goto_100

    :cond_97
    const v17, 0x7fffffff

    const/high16 v18, -0x80000000

    move v15, v1

    move/from16 v1, v17

    move/from16 v11, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_a5
    if-ge v15, v14, :cond_d1

    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move/from16 v18, v14

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    if-eq v14, v7, :cond_ca

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v21

    move-object/from16 v22, v0

    add-int/lit8 v0, v21, -0x1

    if-eq v14, v0, :cond_ca

    if-nez v14, :cond_c0

    goto :goto_ca

    :cond_c0
    if-ge v14, v1, :cond_c5

    move v1, v14

    move-object/from16 v19, v22

    :cond_c5
    if-le v14, v11, :cond_ca

    move v11, v14

    move-object/from16 v20, v22

    :cond_ca
    :goto_ca
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v14, v18

    goto :goto_a5

    :cond_d1
    move-object/from16 v0, v19

    if-eqz v0, :cond_100

    move-object/from16 v14, v20

    if-nez v14, :cond_da

    goto :goto_100

    :cond_da
    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v7

    if-nez v0, :cond_f6

    goto :goto_100

    :cond_f6
    int-to-float v0, v0

    mul-float v0, v0, v16

    sub-int/2addr v11, v1

    const/4 v1, 0x1

    add-int/2addr v11, v1

    int-to-float v1, v11

    div-float/2addr v0, v1

    move/from16 v16, v0

    :cond_100
    :goto_100
    int-to-float v0, v2

    div-float v0, v0, v16

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v10, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_111

    neg-int v0, v0

    goto :goto_111

    :cond_110
    const/4 v0, 0x0

    :cond_111
    :goto_111
    add-int/2addr v0, v9

    if-eq v0, v9, :cond_206

    if-ltz v0, :cond_206

    if-lt v0, v6, :cond_11a

    goto/16 :goto_206

    :cond_11a
    iget v1, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1bf

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_136

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_136

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_137

    :cond_136
    const/4 v14, 0x0

    :goto_137
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, v12, :cond_148

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_148

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    :cond_148
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    const/4 v6, 0x2

    div-int/2addr v2, v6

    add-int/2addr v2, v1

    if-eqz v14, :cond_18c

    iget-object v1, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_170

    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_179

    :cond_170
    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    :goto_179
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    goto :goto_1ba

    :cond_18c
    iget-object v1, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_1a8

    :cond_19f
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    :goto_1a8
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    :goto_1ba
    add-int/2addr v4, v1

    add-int/2addr v4, v0

    sub-int v7, v4, v2

    goto :goto_207

    :cond_1bf
    const/4 v2, 0x1

    if-ne v1, v2, :cond_206

    iget-object v1, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    goto :goto_1db

    :cond_1d3
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    :goto_1db
    iget-object v2, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    goto :goto_1f4

    :cond_1ec
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    :goto_1f4
    iget-object v5, v4, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->e:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->d(Landroid/content/Context;)Z

    move-result v4

    sub-int/2addr v0, v9

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    if-eqz v4, :cond_202

    neg-int v0, v0

    :cond_202
    add-int/2addr v2, v0

    sub-int v7, v2, v1

    goto :goto_207

    :cond_206
    :goto_206
    const/4 v7, -0x1

    :goto_207
    invoke-interface {v3, v7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setFinalX(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public postOnAnimation()V
    .registers 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_b
    return-void
.end method

.method public run()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_21c

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v4

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v6

    iget v7, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v7, v4, v7

    iget v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v6, v8

    iput v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    iput v6, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v11, v2

    aput v2, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v7

    move v10, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_52

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v4, v2

    sub-int/2addr v7, v6

    aget v4, v4, v3

    sub-int/2addr v14, v4

    :cond_52
    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_9d

    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v6, v2

    aput v2, v6, v3

    invoke-virtual {v4, v7, v14, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v6, v2

    aget v6, v6, v3

    sub-int/2addr v7, v8

    sub-int/2addr v14, v6

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v4, :cond_9f

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_9f

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9f

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_8b

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_9f

    :cond_8b
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_99

    sub-int/2addr v9, v3

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v4, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_9f

    :cond_99
    invoke-virtual {v4, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_9f

    :cond_9d
    move v6, v2

    move v8, v6

    :cond_9f
    :goto_9f
    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ae

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    :cond_ae
    iget-object v15, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v4, v15, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v8

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v14

    move-object/from16 v22, v4

    invoke-virtual/range {v15 .. v22}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v7, v10

    aget v9, v9, v3

    sub-int/2addr v14, v9

    if-nez v8, :cond_d5

    if-eqz v6, :cond_d8

    :cond_d5
    invoke-virtual {v4, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_d8
    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_ef

    if-nez v7, :cond_e4

    if-eqz v14, :cond_ef

    :cond_e4
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object v4, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIRecyclerView;Z)Z

    move v4, v2

    move v7, v4

    goto :goto_f0

    :cond_ef
    move v4, v14

    :goto_f0
    const/16 v15, 0x133

    if-eqz v4, :cond_159

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v10, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v10, :cond_159

    invoke-static {v9, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v11, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v18

    const/16 v19, 0x0

    move v11, v4

    move v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-virtual/range {v9 .. v18}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_149

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setCurrVelocityY(F)V

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-virtual {v9, v4, v2, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_15a

    :cond_149
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-interface {v9, v4, v2, v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_15a

    :cond_159
    move v3, v15

    :goto_15a
    if-eqz v7, :cond_1b6

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v10, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v10, :cond_1b6

    invoke-static {v9, v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v10, v7

    invoke-virtual/range {v9 .. v18}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v3

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v9

    invoke-virtual {v3, v9}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setCurrVelocityX(F)V

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v3

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v9

    invoke-virtual {v3, v7, v2, v9}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_1b6

    :cond_1a7
    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v3

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v9

    invoke-interface {v3, v7, v2, v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_1b6
    :goto_1b6
    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v3

    if-nez v3, :cond_1c3

    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1c3
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v3

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result v9

    if-ne v3, v9, :cond_1cf

    const/4 v3, 0x1

    goto :goto_1d0

    :cond_1cf
    move v3, v2

    :goto_1d0
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v9

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalY()I

    move-result v10

    if-ne v9, v10, :cond_1dc

    const/4 v9, 0x1

    goto :goto_1dd

    :cond_1dc
    move v9, v2

    :goto_1dd
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_1ee

    if-nez v3, :cond_1e7

    if-eqz v7, :cond_1ec

    :cond_1e7
    if-nez v9, :cond_1ee

    if-eqz v4, :cond_1ec

    goto :goto_1ee

    :cond_1ec
    move v1, v2

    goto :goto_1ef

    :cond_1ee
    :goto_1ee
    const/4 v1, 0x1

    :goto_1ef
    iget-object v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_1ff

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1ff

    const/4 v3, 0x1

    goto :goto_200

    :cond_1ff
    move v3, v2

    :goto_200
    if-nez v3, :cond_210

    if-eqz v1, :cond_210

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_21c

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_21c

    :cond_210
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v3, :cond_21c

    invoke-virtual {v3, v1, v8, v6}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_21c
    :goto_21c
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_22d

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_22d

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    :cond_22d
    iput-boolean v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_237

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_250

    :cond_237
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v1

    if-ne v1, v5, :cond_245

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v1, :cond_250

    :cond_245
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    iget-object v0, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_250
    :goto_250
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 12
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_9

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    :cond_9
    move v6, p3

    if-nez p4, :cond_e

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_e
    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_1d

    iput-object p4, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1d
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$1000(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    return-void
.end method
