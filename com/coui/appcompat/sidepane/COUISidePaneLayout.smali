.class public Lcom/coui/appcompat/sidepane/COUISidePaneLayout;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$AccessibilityDelegate;,
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;,
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;,
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;,
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;,
        Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field public static final y:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/view/View;

.field public f:F

.field public g:I

.field public h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

.field public i:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;

.field public j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

.field public final k:Landroidx/customview/widget/ViewDragHelper;

.field public l:F

.field public m:F

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;

.field public s:I

.field public t:Landroid/widget/ImageButton;

.field public u:Z

.field public v:Z

.field public final w:Landroid/graphics/Paint;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->y:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->v:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->x:Z

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUISidePaneLayout:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000  # 32.0f

    mul-float/2addr p3, p1

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISidePaneLayout_firstPaneWidth:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_sliding_pane_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUISidePaneLayout_expandPaneWidth:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    sget v3, Lcom/support/appcompat/R$styleable;->COUISidePaneLayout_coverStyle:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    iput p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->w:Landroid/graphics/Paint;

    iput v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    new-instance p3, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$AccessibilityDelegate;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$AccessibilityDelegate;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance p3, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$DragHelperCallback;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V

    invoke-static {p0, v2, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    const/high16 v0, 0x43c80000  # 400.0f

    mul-float/2addr p1, v0

    invoke-virtual {p3, p1}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    const/4 p1, 0x2

    new-array p3, p1, [F

    fill-array-data p3, :array_c8

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1e3

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    fill-array-data p1, :array_d0

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_c8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()Z
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    iget-object v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz v2, :cond_21

    invoke-interface {v2, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->b(I)V

    :cond_21
    iget-object v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz v2, :cond_28

    invoke-interface {v2, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->b(I)V

    :cond_28
    iget-boolean v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    if-nez v2, :cond_36

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j(F)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    move v0, v1

    goto :goto_38

    :cond_36
    :goto_36
    iput-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    :goto_38
    return v0
.end method

.method public final b()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$layout;->coui_sliding_icon_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    new-instance v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_side_pane_layout_icon_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_side_pane_layout_icon_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    new-instance v2, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RelativeLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void
.end method

.method public c()Z
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

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b:Z

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    return-void

    :cond_13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public d()Z
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    iget-boolean v2, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->v:Z

    if-eqz v2, :cond_81

    :cond_e
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v5, p2

    if-ne v5, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v4

    :goto_1a
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget v6, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_81

    if-eqz v2, :cond_81

    const/high16 v2, -0x1000000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    iget-object v5, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->w:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    int-to-float v8, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v9, v2

    iget-object v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->w:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_81

    :cond_70
    int-to-float v12, v3

    const/4 v13, 0x0

    int-to-float v14, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v15, v2

    iget-object v0, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->w:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_81
    :goto_81
    return v1
.end method

.method public e(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    :goto_1a
    if-eqz v0, :cond_1f

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_21

    :cond_1f
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_21
    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h()V

    return-void
.end method

.method public f()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->b(I)V

    :cond_1b
    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz v1, :cond_22

    invoke-interface {v1, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->b(I)V

    :cond_22
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g(I)Z

    move-result p0

    return p0
.end method

.method public final g(I)Z
    .registers 2

    iget-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    if-nez p1, :cond_f

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j(F)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    new-instance p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-direct {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_c

    new-instance p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .registers 5

    const/4 v0, 0x3

    if-lt p1, v0, :cond_d

    const/4 v0, 0x2

    if-ge p2, v0, :cond_d

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v1, :cond_d

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    return p1

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getIconView()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public h()V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2e

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    iget v4, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3c
    return-void
.end method

.method public i()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_19

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public isChildrenDrawingOrderEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public j(F)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000  # 1.0f

    iget v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_27

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :goto_27
    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;-><init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->i()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public k(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_26

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_50

    :cond_4c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_50
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_55
    if-ge v12, v11, :cond_ac

    move-object/from16 v13, p0

    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_60

    goto :goto_ac

    :cond_60
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_6b

    move/from16 v16, v1

    goto :goto_a5

    :cond_6b
    if-eqz v1, :cond_6f

    move v6, v3

    goto :goto_70

    :cond_6f
    move v6, v2

    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_86

    move v0, v2

    goto :goto_87

    :cond_86
    move v0, v3

    :goto_87
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_a1

    if-lt v15, v9, :cond_a1

    if-gt v0, v8, :cond_a1

    if-gt v1, v10, :cond_a1

    const/4 v0, 0x4

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_55

    :cond_ac
    :goto_ac
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-nez v1, :cond_15

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g(I)Z

    goto :goto_18

    :cond_15
    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a()Z

    :goto_18
    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b()V

    :cond_23
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->v:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-nez v1, :cond_10

    goto :goto_6f

    :cond_10
    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3c

    :goto_28
    move v0, v2

    goto :goto_3c

    :cond_2a
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3c

    goto :goto_28

    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d()Z

    move-result v1

    if-eqz v1, :cond_56

    if-eqz v0, :cond_56

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->v:Z

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_56

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->i:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;

    if-eqz p0, :cond_55

    invoke-interface {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;->a()V

    :cond_55
    return v2

    :cond_56
    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->x:Z

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a()Z

    return v2

    :cond_6a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6f
    :goto_6f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    iget-object v4, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_15

    :cond_10
    iget-object v2, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_15
    sub-int v2, p4, p2

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    goto :goto_22

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v4

    :goto_22
    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2d

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v5

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    iget-boolean v8, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    if-eqz v8, :cond_45

    iget-boolean v8, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    if-eqz v8, :cond_42

    move v8, v10

    goto :goto_43

    :cond_42
    move v8, v9

    :goto_43
    iput v8, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    :cond_45
    const/4 v8, 0x0

    move v11, v9

    move v12, v10

    move v9, v8

    move v10, v9

    move v8, v4

    :goto_4b
    if-ge v9, v7, :cond_1d4

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5b

    goto/16 :goto_1cc

    :cond_5b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-ne v9, v3, :cond_da

    iget-boolean v3, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v3, :cond_78

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_d2

    :cond_78
    iget v3, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    cmpl-float v11, v3, v11

    if-nez v11, :cond_b9

    iget v3, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/support/appcompat/R$dimen;->coui_sliding_pane_width:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v3, v3, v10

    if-nez v3, :cond_9c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_d2

    :cond_9c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float/2addr v3, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v3, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v15, v3

    goto :goto_d2

    :cond_b9
    cmpl-float v3, v3, v12

    if-nez v3, :cond_d2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v3, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_d2
    :goto_d2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_da
    iget-boolean v3, v14, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->b:Z

    if-eqz v3, :cond_113

    iget v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v10

    sub-int v10, v2, v5

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a:I

    sub-int v11, v10, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v3

    iput v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->g:I

    if-eqz v1, :cond_f6

    iget v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_f8

    :cond_f6
    iget v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_f8
    add-int v12, v4, v3

    add-int/2addr v12, v11

    div-int/lit8 v16, v15, 0x2

    add-int v12, v16, v12

    if-le v12, v10, :cond_103

    const/4 v10, 0x1

    goto :goto_104

    :cond_103
    const/4 v10, 0x0

    :goto_104
    iput-boolean v10, v14, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->c:Z

    int-to-float v10, v11

    iget v12, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v3, v10

    add-int/2addr v3, v4

    int-to-float v4, v10

    int-to-float v10, v11

    div-float/2addr v4, v10

    iput v4, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    goto :goto_114

    :cond_113
    move v3, v8

    :goto_114
    if-eqz v1, :cond_13a

    iget-boolean v4, v14, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->b:Z

    if-eqz v4, :cond_135

    iget-boolean v4, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v4, :cond_123

    const/4 v4, 0x1

    if-ne v9, v4, :cond_123

    move v4, v2

    goto :goto_137

    :cond_123
    int-to-float v4, v3

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v12, v11, v10, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v2, v4

    goto :goto_137

    :cond_135
    sub-int v4, v2, v3

    :goto_137
    sub-int v10, v4, v15

    goto :goto_17d

    :cond_13a
    iget-boolean v4, v14, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->b:Z

    if-eqz v4, :cond_16a

    iget-boolean v4, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v4, :cond_152

    const/4 v4, 0x1

    if-ne v9, v4, :cond_152

    add-int v4, v3, v15

    int-to-float v4, v4

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    add-float/2addr v4, v10

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    sub-float/2addr v4, v10

    float-to-int v4, v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_16e

    :cond_152
    int-to-float v4, v3

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-static {v12, v11, v10, v4}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v4

    float-to-int v4, v4

    add-int v10, v4, v15

    const/4 v11, 0x1

    move/from16 v17, v10

    move v10, v4

    move/from16 v4, v17

    goto :goto_16e

    :cond_16a
    add-int v4, v3, v15

    const/4 v11, 0x1

    move v10, v3

    :goto_16e
    if-ne v9, v11, :cond_17d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-static {v11}, Lcom/coui/appcompat/sidepane/COUISidePaneUtils;->b(Landroid/app/Activity;)Z

    move-result v11

    if-nez v11, :cond_17d

    move v4, v2

    :cond_17d
    :goto_17d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    const/4 v12, 0x2

    if-ne v9, v12, :cond_1b0

    if-eqz v1, :cond_19d

    invoke-virtual {v14}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v4

    sub-int v4, v2, v4

    sub-int/2addr v4, v15

    iget v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v11

    sub-int v11, v2, v11

    iget v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v15

    invoke-virtual {v13, v4, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1ae

    :cond_19d
    invoke-virtual {v14}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v4

    iget v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v11

    add-int/2addr v11, v15

    iget v12, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v15

    invoke-virtual {v13, v4, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    :goto_1ae
    const/4 v4, 0x1

    goto :goto_1be

    :cond_1b0
    const/4 v12, 0x1

    if-ne v9, v12, :cond_1ba

    if-eqz v1, :cond_1ba

    const/4 v10, 0x0

    invoke-virtual {v13, v10, v6, v4, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1bd

    :cond_1ba
    invoke-virtual {v13, v10, v6, v4, v11}, Landroid/view/View;->layout(IIII)V

    :goto_1bd
    move v4, v12

    :goto_1be
    const/4 v10, 0x2

    if-ge v9, v10, :cond_1c7

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    move v8, v10

    :cond_1c7
    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :goto_1cc
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000  # 1.0f

    goto/16 :goto_4b

    :cond_1d4
    iget-boolean v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    if-eqz v1, :cond_1dd

    iget-object v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k(Landroid/view/View;)V

    :cond_1dd
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 24

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    if-eq v1, v7, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_27

    if-ne v1, v6, :cond_23

    goto :goto_44

    :cond_23
    if-nez v1, :cond_44

    move v2, v5

    goto :goto_44

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    if-nez v3, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-nez v3, :cond_44

    move v4, v5

    move v3, v6

    goto :goto_44

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    const/4 v1, 0x0

    if-eq v3, v6, :cond_57

    if-eq v3, v7, :cond_4c

    move v4, v1

    :goto_4a
    move v5, v4

    goto :goto_63

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_4a

    :cond_57
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    move v4, v1

    :goto_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_7c

    const-string v11, "COUISidePaneLayout"

    const-string v12, "onMeasure: More than two child views are not supported."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    move v12, v1

    move v13, v12

    move v15, v8

    const/4 v14, 0x0

    :goto_83
    const/16 v10, 0x8

    if-ge v12, v9, :cond_1de

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_a0

    iput-boolean v1, v6, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->c:Z

    :goto_9b
    move/from16 v19, v14

    const/4 v14, 0x3

    goto/16 :goto_1d3

    :cond_a0
    iget v10, v6, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->a:F

    const/4 v11, 0x0

    cmpl-float v18, v10, v11

    if-lez v18, :cond_ad

    add-float/2addr v14, v10

    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-nez v10, :cond_ad

    goto :goto_9b

    :cond_ad
    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v11, v1, :cond_ba

    const/4 v1, -0x1

    if-ne v11, v1, :cond_bc

    :cond_ba
    sub-int v11, v8, v10

    :cond_bc
    const/4 v1, 0x1

    if-ne v12, v1, :cond_d1

    iget-boolean v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    if-eqz v1, :cond_d1

    iget-boolean v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-nez v1, :cond_d1

    int-to-float v1, v11

    iget v10, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float/2addr v1, v10

    float-to-int v11, v1

    iget v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    move v10, v1

    const/4 v1, 0x1

    goto :goto_d3

    :cond_d1
    const/4 v1, 0x1

    const/4 v10, 0x0

    :goto_d3
    if-ne v12, v1, :cond_154

    iget v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    const/16 v17, 0x0

    cmpl-float v19, v1, v17

    const/high16 v20, 0x3f800000  # 1.0f

    if-eqz v19, :cond_e3

    cmpl-float v19, v1, v20

    if-nez v19, :cond_154

    :cond_e3
    move/from16 v19, v14

    iget-boolean v14, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v14, :cond_eb

    move v11, v8

    goto :goto_13d

    :cond_eb
    cmpl-float v14, v1, v17

    if-nez v14, :cond_12a

    iget v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v14, Lcom/support/appcompat/R$dimen;->coui_sliding_pane_width:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v1, v1, v11

    if-nez v1, :cond_111

    int-to-float v1, v8

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    iget v14, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    sub-float/2addr v11, v14

    sub-float/2addr v1, v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_128

    :cond_111
    int-to-float v1, v8

    iget v11, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    sub-float/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v1, v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_128
    float-to-int v11, v1

    goto :goto_13d

    :cond_12a
    cmpl-float v1, v1, v20

    if-nez v1, :cond_13d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v8, v1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_13d
    :goto_13d
    iget-boolean v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-nez v1, :cond_146

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v11, v1

    :cond_146
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/coui/appcompat/sidepane/COUISidePaneUtils;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_156

    move v11, v8

    goto :goto_156

    :cond_154
    move/from16 v19, v14

    :cond_156
    :goto_156
    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v1, v14, :cond_164

    const/high16 v14, -0x80000000

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v11, v1

    const/4 v14, -0x1

    goto :goto_174

    :cond_164
    const/4 v14, -0x1

    if-ne v1, v14, :cond_16e

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v11, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    goto :goto_174

    :cond_16e
    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v11, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :goto_174
    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v1, v14, :cond_181

    const/high16 v14, -0x80000000

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_17f
    const/4 v14, 0x3

    goto :goto_192

    :cond_181
    const/4 v14, -0x1

    if-ne v1, v14, :cond_18b

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_17f

    :cond_18b
    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_17f

    :goto_192
    if-ne v12, v14, :cond_1ab

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v11, Lcom/support/appcompat/R$dimen;->coui_side_pane_layout_icon_size:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move v11, v1

    move/from16 v1, v16

    :cond_1ab
    invoke-virtual {v7, v11, v1}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x2

    if-ge v12, v1, :cond_1d3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, -0x80000000

    if-ne v3, v11, :cond_1c6

    if-le v10, v4, :cond_1c6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1c6
    sub-int/2addr v15, v1

    if-gtz v15, :cond_1cb

    const/4 v1, 0x1

    goto :goto_1cc

    :cond_1cb
    const/4 v1, 0x0

    :goto_1cc
    iput-boolean v1, v6, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->b:Z

    or-int/2addr v13, v1

    if-eqz v1, :cond_1d3

    iput-object v7, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    :cond_1d3
    :goto_1d3
    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v19

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    goto/16 :goto_83

    :cond_1de
    move/from16 v19, v14

    if-nez v13, :cond_1e7

    const/4 v1, 0x0

    cmpl-float v3, v19, v1

    if-lez v3, :cond_2ca

    :cond_1e7
    iget v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a:I

    sub-int v1, v8, v1

    const/4 v3, 0x0

    :goto_1ec
    if-ge v3, v9, :cond_2ca

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_1fd

    :cond_1f8
    :goto_1f8
    const/high16 v7, 0x40000000  # 2.0f

    const/4 v10, 0x0

    goto/16 :goto_2c4

    :cond_1fd
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_20a

    goto :goto_1f8

    :cond_20a
    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-nez v11, :cond_217

    iget v11, v7, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->a:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_217

    const/4 v11, 0x1

    goto :goto_218

    :cond_217
    const/4 v11, 0x0

    :goto_218
    if-eqz v11, :cond_21c

    const/4 v12, 0x0

    goto :goto_220

    :cond_21c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    :goto_220
    if-eqz v13, :cond_266

    iget-object v14, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    if-eq v6, v14, :cond_266

    iget v14, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-gez v14, :cond_1f8

    if-gt v12, v1, :cond_233

    iget v12, v7, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->a:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_1f8

    :cond_233
    if-eqz v11, :cond_254

    iget v7, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v7, v11, :cond_243

    const/high16 v11, -0x80000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v11, 0x40000000  # 2.0f

    goto :goto_25e

    :cond_243
    const/4 v11, -0x1

    if-ne v7, v11, :cond_24d

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_25e

    :cond_24d
    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_25e

    :cond_254
    const/high16 v11, 0x40000000  # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_25e
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v6, v12, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1f8

    :cond_266
    iget v11, v7, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->a:F

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_1f8

    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-nez v11, :cond_290

    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v11, v10, :cond_27f

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_29a

    :cond_27f
    const/4 v10, -0x1

    if-ne v11, v10, :cond_289

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    goto :goto_29a

    :cond_289
    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {v11, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    goto :goto_29a

    :cond_290
    const/high16 v10, 0x40000000  # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :goto_29a
    if-eqz v13, :cond_2ae

    iget v14, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v7

    sub-int v7, v8, v14

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    if-eq v12, v7, :cond_1f8

    invoke-virtual {v6, v14, v11}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1f8

    :cond_2ae
    const/4 v10, 0x0

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v7, v7, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$LayoutParams;->a:F

    int-to-float v14, v14

    mul-float/2addr v7, v14

    div-float v7, v7, v19

    float-to-int v7, v7

    add-int/2addr v12, v7

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v12, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v6, v12, v11}, Landroid/view/View;->measure(II)V

    :goto_2c4
    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x8

    goto/16 :goto_1ec

    :cond_2ca
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    iput-boolean v13, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b:Z

    iget-object v1, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_2e8

    if-nez v13, :cond_2e8

    iget-object v0, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->k:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    :cond_2e8
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c:Z

    iget-boolean v1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->c:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_25

    if-nez v1, :cond_3a

    iput-boolean v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f()Z

    iput-boolean v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    goto :goto_3a

    :cond_25
    iget-boolean v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_2f

    iput-boolean v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->p:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f()Z

    goto :goto_32

    :cond_2f
    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a()Z

    :goto_32
    iget-boolean v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->a:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    iget p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->b:I

    iput p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d()Z

    move-result v0

    goto :goto_14

    :cond_12
    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    :goto_14
    iput-boolean v0, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->a:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c:Z

    iput-boolean v0, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->c:Z

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    iput p0, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$SavedState;->b:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->o:Z

    :cond_8
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->n:Z

    :cond_16
    return-void
.end method

.method public setAlwaysShowMask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->v:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setCoverStyle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    return-void
.end method

.method public setCreateIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d:Z

    return-void
.end method

.method public setDefaultShowPane(Ljava/lang/Boolean;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_48

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    const/16 v3, 0x8

    if-lez p1, :cond_44

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_44

    :cond_32
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    iget v4, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    float-to-int v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_44
    :goto_44
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->setIconViewVisible(I)V

    goto :goto_85

    :cond_48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_85

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->u:Z

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_7a

    :cond_68
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    iget v4, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    float-to-int v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_7a
    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    if-nez p1, :cond_82

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b()V

    goto :goto_85

    :cond_82
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->setIconViewVisible(I)V

    :cond_85
    :goto_85
    return-void
.end method

.method public setFirstViewWidth(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    return-void
.end method

.method public setIconViewVisible(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->t:Landroid/widget/ImageButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setLifeCycleObserverListener(Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    return-void
.end method

.method public setOnMaskClickListener(Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->i:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelMaskListener;

    return-void
.end method

.method public setPanelSlideListener(Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    return-void
.end method

.method public setSlideDistance(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    return-void
.end method

.method public setTouchContentEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->x:Z

    return-void
.end method
