.class Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/animation/ValueAnimator;

.field public m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public final synthetic r:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->i:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->k:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->q:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->c:Landroid/graphics/Paint;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 20

    move-object/from16 v13, p0

    move/from16 v14, p1

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->k:I

    if-eq v14, v0, :cond_1a

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_21

    :cond_1a
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v1

    :goto_22
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_29

    move v1, v2

    :cond_29
    invoke-virtual/range {p0 .. p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j()V

    return-void

    :cond_33
    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-object v5, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-object v6, v4, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    const/4 v7, 0x2

    if-eqz v6, :cond_f7

    iget v8, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->i:I

    iget v9, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j:I

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    sub-int/2addr v2, v1

    invoke-virtual {v13, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->b(I)I

    move-result v12

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    add-int/2addr v2, v1

    invoke-virtual {v13, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->c(I)I

    move-result v11

    sub-int v1, v11, v12

    sub-int v2, v9, v8

    sub-int v10, v1, v2

    sub-int v15, v12, v8

    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sub-int v1, v14, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    add-int/lit16 v1, v1, 0x96

    const/16 v2, 0x12c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->q:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_94

    move v1, v2

    :cond_94
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v7, [I

    fill-array-data v1, :array_168

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    if-eqz v0, :cond_bb

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_bf

    :cond_bb
    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->M:I

    :goto_bf
    move v7, v1

    if-eqz v0, :cond_c9

    iget-object v0, v5, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_cd

    :cond_c9
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->N:I

    :goto_cd
    move/from16 v16, v0

    new-instance v2, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v6

    move-object v6, v4

    move v4, v7

    move-object v7, v6

    move/from16 v6, v16

    move-object v14, v7

    move v7, v9

    move v9, v10

    move v10, v15

    invoke-direct/range {v0 .. v12}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$1;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/tablayout/COUITabLayout$TabView;IIIIIII)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;

    move-object/from16 v6, p0

    move/from16 v8, p1

    move-object v1, v14

    invoke-direct {v0, v6, v8}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_15f

    :cond_f7
    move-object v6, v13

    move v8, v14

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v0, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    sub-int v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_112

    iget v0, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->i:I

    iget v1, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j:I

    move v2, v0

    move v9, v1

    goto :goto_129

    :cond_112
    iget-object v0, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->o(I)I

    move-result v0

    iget v2, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    if-ge v8, v2, :cond_121

    if-eqz v1, :cond_123

    goto :goto_125

    :cond_121
    if-eqz v1, :cond_125

    :cond_123
    add-int/2addr v0, v5

    goto :goto_127

    :cond_125
    :goto_125
    sub-int v0, v4, v0

    :goto_127
    move v2, v0

    move v9, v2

    :goto_129
    if-ne v2, v4, :cond_12d

    if-eq v9, v5, :cond_15f

    :cond_12d
    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v10, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p2

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v7, [F

    fill-array-data v0, :array_170

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v7, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move v3, v4

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$3;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v10, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;

    invoke-direct {v0, v6, v8}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$4;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;I)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    :cond_15f
    :goto_15f
    iget-object v0, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v6, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->k:I

    return-void

    :array_168
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_170
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final b(I)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d()Z

    move-result p0

    if-eqz p0, :cond_22

    if-lez v0, :cond_22

    add-int/2addr p1, v0

    :cond_22
    return p1
.end method

.method public final c(I)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d()Z

    move-result p0

    if-eqz p0, :cond_22

    if-lez v0, :cond_22

    add-int/2addr p1, v0

    :cond_22
    return p1
.end method

.method public final d()Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e(Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;II)V
    .registers 7

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_b
    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_79

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->A0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3f

    :cond_39
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->A0:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_3f
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, p3}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:I

    if-le v1, v2, :cond_7c

    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:I

    iget-object v2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_7c

    :cond_71
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_7c

    :cond_79
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public f(II)V
    .registers 4

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    sub-int p1, v0, p2

    add-int/2addr v0, p2

    iget p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->i:I

    if-ne p1, p2, :cond_12

    iget p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j:I

    if-eq v0, p2, :cond_1b

    :cond_12
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->i:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j:I

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public final g(Landroid/view/View;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public final h(Landroid/view/View;III)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr p4, p3

    add-int/2addr p4, p2

    iput p4, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public i(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final j()V
    .registers 11

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    iget-object v3, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_c3

    iget-object v0, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-lez v3, :cond_107

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    sub-int/2addr v6, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b9

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_b9

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-object v2, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_7b

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    sub-int/2addr v7, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->t0:I

    add-int/2addr v2, v1

    goto :goto_83

    :cond_7b
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    :goto_83
    sub-int/2addr v2, v7

    sub-int/2addr v0, v6

    sub-int v1, v2, v0

    sub-int v3, v7, v6

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_93

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f:F

    :cond_93
    iget v8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    iget v9, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f:F

    sub-float v9, v8, v9

    cmpl-float v5, v9, v5

    if-lez v5, :cond_a8

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v6

    int-to-float v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_b5

    :cond_a8
    int-to-float v0, v2

    int-to-float v1, v1

    sub-float v2, v4, v8

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v7

    int-to-float v2, v3

    sub-float/2addr v4, v8

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    float-to-int v1, v1

    :goto_b5
    move v6, v1

    add-int/2addr v0, v6

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f:F

    :cond_b9
    invoke-virtual {p0, v6}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->b(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->c(I)I

    move-result v0

    move v6, v1

    goto :goto_108

    :cond_c3
    if-eqz v0, :cond_107

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_107

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_108

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_108

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    sub-float v5, v4, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    float-to-int v6, v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    sub-float/2addr v4, v1

    int-to-float v0, v0

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v0, v4

    goto :goto_108

    :cond_107
    move v0, v6

    :cond_108
    :goto_108
    invoke-virtual {p0, v6, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->f(II)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Z

    if-eqz p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    const/high16 p4, 0x3f800000  # 1.0f

    iget-object p5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a(II)V

    :cond_36
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Z

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3, p2, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->w(IFZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_15

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->e0:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_d1

    iget v2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->u0:F

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->p:F

    add-int/lit8 v2, v1, -0x1

    iget v4, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:I

    mul-int/2addr v4, v2

    sub-int v4, v0, v4

    iget v6, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v3, v5

    move v6, v3

    :goto_37
    if-ge v3, v1, :cond_4d

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    invoke-virtual {p0, v7, v5, v5}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->g(Landroid/view/View;II)V

    invoke-virtual {p0, v7, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e(Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;II)V

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4d
    if-gt v6, v4, :cond_ae

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr v0, v6

    add-int/lit8 v2, p1, 0x1

    div-int v2, v0, v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:I

    if-lt v2, v3, :cond_8a

    div-int/lit8 v0, v2, 0x2

    move v3, v5

    :goto_61
    if-ge v3, p1, :cond_105

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v3, :cond_71

    iget-object v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v6, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:I

    sub-int v6, v2, v6

    move v7, v0

    goto :goto_80

    :cond_71
    add-int/lit8 v6, p1, -0x1

    if-ne v3, v6, :cond_7e

    iget-object v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v6, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->s0:I

    sub-int v6, v2, v6

    move v7, v6

    move v6, v0

    goto :goto_80

    :cond_7e
    move v6, v0

    move v7, v6

    :goto_80
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->h(Landroid/view/View;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_8a
    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/lit8 v2, p1, -0x1

    div-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    move v3, v5

    :goto_93
    if-ge v3, p1, :cond_105

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v3, :cond_9e

    move v7, v0

    move v6, v5

    goto :goto_a4

    :cond_9e
    move v6, v0

    if-ne v3, v2, :cond_a3

    move v7, v5

    goto :goto_a4

    :cond_a3
    move v7, v6

    :goto_a4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->h(Landroid/view/View;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_ae
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:I

    div-int/lit8 p1, p1, 0x2

    move v0, v5

    :goto_b5
    if-ge v0, v1, :cond_105

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_c0

    move v6, p1

    move v4, v5

    goto :goto_c7

    :cond_c0
    if-ne v0, v2, :cond_c5

    move v4, p1

    move v6, v5

    goto :goto_c7

    :cond_c5
    move v4, p1

    move v6, v4

    :goto_c7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0, v3, v4, v6, v7}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->h(Landroid/view/View;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_d1
    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->c0:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->r0:I

    div-int/lit8 v0, v0, 0x2

    move v2, v5

    :goto_de
    if-ge v2, v1, :cond_105

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v5, v5}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->g(Landroid/view/View;II)V

    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    invoke-virtual {p0, v4, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e(Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;II)V

    if-nez v2, :cond_f2

    move v6, v0

    move v4, v5

    goto :goto_fb

    :cond_f2
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_f9

    move v4, v0

    move v6, v5

    goto :goto_fb

    :cond_f9
    move v4, v0

    move v6, v4

    :goto_fb
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0, v3, v4, v6, v7}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->h(Landroid/view/View;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    :cond_105
    move p1, v5

    :goto_106
    if-ge v5, v1, :cond_114

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_106

    :cond_114
    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method
