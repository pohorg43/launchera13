.class public Lcom/coui/appcompat/button/COUILoadingButton;
.super Lcom/coui/appcompat/button/COUIButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:F

.field public final o:F

.field public final p:F

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:Landroid/animation/AnimatorSet;

.field public v:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/COUILoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/button/COUILoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 27

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p3}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, ""

    iput-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->l:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x33

    iput v2, v8, Lcom/coui/appcompat/button/COUILoadingButton;->r:I

    iput v2, v8, Lcom/coui/appcompat/button/COUILoadingButton;->s:I

    iput v2, v8, Lcom/coui/appcompat/button/COUILoadingButton;->t:I

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v3, v2, v4, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$styleable;->COUIButton_isShowLoadingText:I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v8, Lcom/coui/appcompat/button/COUILoadingButton;->q:Z

    if-eqz v3, :cond_39

    sget v3, Lcom/support/appcompat/R$styleable;->COUIButton_loadingText:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/coui/appcompat/button/COUILoadingButton;->l:Ljava/lang/String;

    if-nez v3, :cond_39

    iput-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->l:Ljava/lang/String;

    :cond_39
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    sget v1, Lcom/support/appcompat/R$string;->loading_button_dots:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->m:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_loading_btn_circle_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_loading_btn_circle_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->o:F

    const/high16 v2, 0x40c00000  # 6.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->p:F

    new-instance v0, Lcom/coui/appcompat/button/COUILoadingButton$1;

    invoke-direct {v0, v8}, Lcom/coui/appcompat/button/COUILoadingButton$1;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v10, Lcom/coui/appcompat/button/COUILoadingButton$2;

    invoke-direct {v10, v8}, Lcom/coui/appcompat/button/COUILoadingButton$2;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const/high16 v1, 0x424c0000  # 51.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v11

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x437f0000  # 255.0f

    const-wide/16 v12, 0x43

    const-wide/16 v5, 0x85

    const-wide/16 v3, 0x43

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v14

    const/high16 v1, 0x437f0000  # 255.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v5, 0x1d3

    move-wide v3, v12

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v12

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x424c0000  # 51.0f

    const-wide/16 v15, 0x85

    const-wide/16 v5, 0x215

    const-wide/16 v3, 0x85

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v13, Lcom/coui/appcompat/button/COUILoadingButton$3;

    invoke-direct {v13, v8}, Lcom/coui/appcompat/button/COUILoadingButton$3;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const/high16 v1, 0x424c0000  # 51.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v5, 0x14d

    move-wide v3, v15

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v15

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x437f0000  # 255.0f

    const-wide/16 v16, 0x43

    const-wide/16 v5, 0x1d2

    const-wide/16 v3, 0x43

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v18

    const/high16 v1, 0x437f0000  # 255.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v5, 0x320

    move-wide/from16 v3, v16

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v16

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x424c0000  # 51.0f

    const-wide/16 v19, 0x85

    const-wide/16 v5, 0x362

    const-wide/16 v3, 0x85

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v7, Lcom/coui/appcompat/button/COUILoadingButton$4;

    invoke-direct {v7, v8}, Lcom/coui/appcompat/button/COUILoadingButton$4;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const/high16 v1, 0x424c0000  # 51.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v5, 0x29a

    move-wide/from16 v3, v19

    move-object/from16 v17, v7

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v19

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x437f0000  # 255.0f

    const-wide/16 v20, 0x43

    const-wide/16 v5, 0x31f

    const-wide/16 v3, 0x43

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v22

    const/high16 v1, 0x437f0000  # 255.0f

    const/high16 v2, 0x42ff0000  # 127.5f

    const-wide/16 v5, 0x46d

    move-wide/from16 v3, v20

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v20

    const/high16 v1, 0x42ff0000  # 127.5f

    const/high16 v2, 0x424c0000  # 51.0f

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x4af

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->u:Landroid/animation/AnimatorSet;

    const/16 v2, 0xc

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v11, v2, v9

    const/4 v3, 0x1

    aput-object v14, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    const/4 v3, 0x4

    aput-object v15, v2, v3

    const/4 v3, 0x5

    aput-object v18, v2, v3

    const/4 v3, 0x6

    aput-object v16, v2, v3

    const/4 v3, 0x7

    aput-object v13, v2, v3

    const/16 v3, 0x8

    aput-object v19, v2, v3

    const/16 v3, 0x9

    aput-object v22, v2, v3

    const/16 v3, 0xa

    aput-object v20, v2, v3

    const/16 v3, 0xb

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->u:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->u:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/button/COUILoadingButton$5;

    invoke-direct {v1, v8}, Lcom/coui/appcompat/button/COUILoadingButton$5;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final b(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .registers 9

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public getButtonState()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLoadingText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getShowLoadingText()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->q:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->q:Z

    if-eqz v0, :cond_8

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->l:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setOnLoadingStateChangeListener(Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->v:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

    return-void
.end method

.method public setShowLoadingText(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->q:Z

    return-void
.end method
