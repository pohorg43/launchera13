.class public Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/view/animation/PathInterpolator;

.field public final b:Landroid/view/animation/PathInterpolator;

.field public c:Landroid/animation/ValueAnimator;

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:Landroid/view/View;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b:Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    const v1, 0x3f6b851f  # 0.92f

    iput v1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    const v0, 0x3f7ae148  # 0.98f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    const v0, 0x3f70a3d7  # 0.94f

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->m:F

    iput p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->g:I

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->button_fill_alpha:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_max_end_value_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_max_end_value_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_min_end_value_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->n:F

    mul-int/2addr v0, v0

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->o:F

    return-void
.end method


# virtual methods
.method public final a(II)F
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->l:F

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->n:F

    sub-float v1, p1, p2

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->m:F

    sub-float v2, v0, v2

    mul-float/2addr v2, v1

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->o:F

    sub-float v1, p2, p0

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1a

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_1a
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public b(Z)V
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_button_press_black_alpha:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iget v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->g:I

    const/4 v3, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x154

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v2, :cond_69

    if-eq v2, v4, :cond_5a

    if-eq v2, v10, :cond_52

    if-eq v2, v3, :cond_31

    const-wide/16 v6, 0x0

    goto :goto_7f

    :cond_31
    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move-wide v6, v8

    :goto_35
    const/high16 v2, 0x3f000000  # 0.5f

    if-eqz p1, :cond_3b

    iput v11, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    :cond_3b
    iget-object v8, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a(II)F

    move-result v8

    iput v8, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:F

    move-wide v7, v6

    move v9, v11

    move v6, v2

    move v2, v9

    goto :goto_83

    :cond_52
    if-eqz p1, :cond_55

    goto :goto_56

    :cond_55
    move-wide v6, v8

    :goto_56
    const v2, 0x3f4ccccd  # 0.8f

    goto :goto_80

    :cond_5a
    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move-wide v6, v8

    :goto_5e
    iget v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->k:F

    if-eqz p1, :cond_64

    iput v5, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    :cond_64
    move v9, v5

    move-wide v7, v6

    move v6, v2

    move v2, v11

    goto :goto_83

    :cond_69
    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    move-wide v6, v8

    :goto_6d
    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v8, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v0, v2, v8}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a(II)F

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:F

    :goto_7f
    move v2, v11

    :goto_80
    move-wide v7, v6

    move v6, v11

    move v9, v6

    :goto_83
    iget-object v12, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    if-eqz v12, :cond_92

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_92

    iget-object v12, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_92
    new-array v12, v10, [F

    if-eqz p1, :cond_98

    move v13, v11

    goto :goto_9a

    :cond_98
    iget v13, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:F

    :goto_9a
    const/4 v14, 0x0

    aput v13, v12, v14

    if-eqz p1, :cond_a2

    iget v13, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:F

    goto :goto_a3

    :cond_a2
    move v13, v11

    :goto_a3
    aput v13, v12, v4

    const-string v13, "scaleHolder"

    invoke-static {v13, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    new-array v13, v10, [F

    if-eqz p1, :cond_b1

    move v15, v11

    goto :goto_b3

    :cond_b1
    iget v15, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:F

    :goto_b3
    aput v15, v13, v14

    if-eqz p1, :cond_b8

    move v11, v2

    :cond_b8
    aput v11, v13, v4

    const-string v2, "brightnessHolder"

    invoke-static {v2, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v11, v10, [F

    if-eqz p1, :cond_c6

    move v13, v9

    goto :goto_c8

    :cond_c6
    iget v13, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    :goto_c8
    aput v13, v11, v14

    if-eqz p1, :cond_cd

    goto :goto_ce

    :cond_cd
    move v6, v9

    :goto_ce
    aput v6, v11, v4

    const-string v6, "alphaHolder"

    invoke-static {v6, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v9, v10, [F

    if-eqz p1, :cond_dc

    move v11, v5

    goto :goto_de

    :cond_dc
    iget v11, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    :goto_de
    aput v11, v9, v14

    if-eqz p1, :cond_e3

    goto :goto_e4

    :cond_e3
    move v1, v5

    :goto_e4
    aput v1, v9, v4

    const-string v1, "blackAlphaHolder"

    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v5, v14

    aput-object v2, v5, v4

    aput-object v6, v5, v10

    aput-object v1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_102

    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a:Landroid/view/animation/PathInterpolator;

    goto :goto_104

    :cond_102
    iget-object v2, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b:Landroid/view/animation/PathInterpolator;

    :goto_104
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
