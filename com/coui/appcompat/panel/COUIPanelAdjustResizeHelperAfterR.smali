.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;
.super Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;
.source ""


# static fields
.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Landroid/view/animation/Interpolator;

.field public static final f:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Z

.field public b:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->e:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .registers 22
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-eqz p5, :cond_25

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v9

    :goto_26
    if-eqz v2, :cond_1ad

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$id;->coui_panel_content_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_3f
    sget v3, Lcom/support/appcompat/R$id;->coordinator:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v6, v1

    int-to-float v10, v3

    const v11, 0x3f666666  # 0.9f

    mul-float/2addr v10, v11

    cmpl-float v6, v6, v10

    if-lez v6, :cond_59

    goto/16 :goto_1ad

    :cond_59
    if-lez v3, :cond_65

    if-lez v5, :cond_65

    add-int v6, v5, v1

    if-le v6, v3, :cond_65

    sub-int/2addr v6, v3

    sub-int v6, v1, v6

    goto :goto_66

    :cond_65
    move v6, v1

    :goto_66
    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    sub-int v3, v5, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    const/4 v5, 0x1

    if-eqz v0, :cond_a1

    move v10, v5

    goto :goto_a2

    :cond_a1
    move v10, v9

    :goto_a2
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v0

    iget-object v11, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_b6

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_b6

    iget-object v11, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-nez v6, :cond_cd

    if-nez v0, :cond_cd

    instance-of v4, v2, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v4, :cond_cd

    if-eqz v11, :cond_1ad

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v11, v9, v9, v9, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1ad

    :cond_cd
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v6

    add-int/2addr v4, v1

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->h(Landroid/content/Context;)I

    move-result v4

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v0, v13, v9

    aput v1, v13, v5

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->l(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    const/high16 v1, 0x43960000  # 300.0f

    const/high16 v5, 0x43480000  # 200.0f

    if-eqz v0, :cond_123

    if-eqz v10, :cond_112

    const/high16 v0, 0x43160000  # 150.0f

    int-to-float v5, v6

    mul-float/2addr v5, v0

    int-to-float v0, v4

    invoke-static {v5, v0, v1}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_146

    :cond_112
    const/high16 v0, 0x42ea0000  # 117.0f

    int-to-float v1, v6

    mul-float/2addr v1, v0

    int-to-float v0, v4

    invoke-static {v1, v0, v5}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_146

    :cond_123
    if-eqz v10, :cond_136

    const/high16 v0, 0x43040000  # 132.0f

    int-to-float v5, v6

    mul-float/2addr v5, v0

    int-to-float v0, v4

    invoke-static {v5, v0, v1}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_146

    :cond_136
    const/high16 v0, 0x43050000  # 133.0f

    int-to-float v1, v6

    mul-float/2addr v1, v0

    int-to-float v0, v4

    invoke-static {v1, v0, v5}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_146
    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    float-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v13, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v12, [F

    fill-array-data v1, :array_1ae

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;

    invoke-direct {v1, v7, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$3;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;

    invoke-direct {v1, v7, v11, v10}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v14, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    new-instance v15, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v6

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;IILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-nez v10, :cond_197

    iput-boolean v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    :cond_197
    if-eqz v10, :cond_1ad

    iget-boolean v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->a:Z

    if-nez v0, :cond_1ad

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1ad

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    :cond_1ad
    :goto_1ad
    return-void

    :array_1ae
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public b(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e(Z)V
    .registers 2

    return-void
.end method

.method public f(I)V
    .registers 2

    return-void
.end method
