.class public Lcom/coui/appcompat/couiswitch/COUISwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;
    }
.end annotation


# instance fields
.field public E:Landroid/graphics/RectF;

.field public F:I

.field public G:I

.field public H:F

.field public I:F

.field public J:I

.field public K:I

.field public L:Z

.field public M:F

.field public N:Landroid/graphics/Paint;

.field public O:Landroid/graphics/Paint;

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

.field public a0:I

.field public b:I

.field public b0:I

.field public c:I

.field public c0:I

.field public d:Z

.field public d0:I

.field public e:Z

.field public e0:I

.field public f:Z

.field public f0:I

.field public g:Z

.field public g0:I

.field public h:Ljava/lang/String;

.field public h0:I

.field public i:Ljava/lang/String;

.field public i0:Z

.field public j:Ljava/lang/String;

.field public j0:Z

.field public k:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

.field public l:Landroid/view/accessibility/AccessibilityManager;

.field public m:Landroid/animation/AnimatorSet;

.field public n:Landroid/animation/AnimatorSet;

.field public o:Landroid/animation/AnimatorSet;

.field public p:Landroid/animation/AnimatorSet;

.field public q:F

.field public r:F

.field public s:F

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    iput-boolean v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Z

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000  # 1.0f

    iput v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    iput v4, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->I:F

    iput-boolean v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i0:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_4a

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_4a
    sget-object v5, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    move/from16 v6, p3

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_loadingDrawable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingDrawable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingCheckedBackground:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_themedCheckedDrawable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_themedUncheckedDrawable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->y:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_barHeight:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->K:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleStrokeWidth:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->J:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleWidth:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleWidth:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->Q:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_circlePadding:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->T:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerUnCheckedCircleColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUISwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c0:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$bool;->coui_switch_theme_enable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->L:Z

    const v2, 0x3e99999a  # 0.3f

    const/4 v3, 0x0

    const v5, 0x3dcccccd  # 0.1f

    invoke-static {v2, v3, v5, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_24a

    const-string v9, "circleScale"

    invoke-static {v0, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x1b1

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v7, [F

    fill-array-data v9, :array_252

    const-string v10, "loadingScale"

    invoke-static {v0, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x226

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v12, v7, [F

    fill-array-data v12, :array_25a

    const-string v13, "loadingAlpha"

    invoke-static {v0, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v12, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v6, v7, [F

    fill-array-data v6, :array_262

    const-string v10, "loadingRotation"

    invoke-static {v0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v14, 0x320

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v14, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v14}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v6, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v14, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {v2, v3, v5, v4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->n:Landroid/animation/AnimatorSet;

    new-array v3, v7, [F

    fill-array-data v3, :array_26a

    invoke-static {v0, v13, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:Landroid/animation/AnimatorSet;

    new-array v2, v7, [F

    fill-array-data v2, :array_272

    invoke-static {v0, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v3}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_switch_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    invoke-static {}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->a()Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    sget v3, Lcom/support/appcompat/R$raw;->coui_switch_sound_on:I

    invoke-virtual {v2, v1, v3}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b:I

    iget-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    sget v3, Lcom/support/appcompat/R$raw;->coui_switch_sound_off:I

    invoke-virtual {v2, v1, v3}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->switch_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->switch_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->switch_loading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v2

    iget v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:I

    sget v2, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_22f

    iget v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:I

    goto :goto_231

    :cond_22f
    iget v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:I

    :goto_231
    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f0:I

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSecondary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g0:I

    sget v2, Lcom/support/appcompat/R$color;->coui_color_press_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h0:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    nop

    :array_24a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_252
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data

    :array_25a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_262
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data

    :array_26a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_272
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data
.end method

.method private getBarColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f0:I

    return p0
.end method

.method private setBarColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f0:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:Landroid/graphics/drawable/Drawable;

    :goto_f
    return-object p0

    :cond_10
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->y:Landroid/graphics/drawable/Drawable;

    :goto_1b
    return-object p0
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->L:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_25

    :cond_20
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_25
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStartLoading()V

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2f
    return-void
.end method

.method public d()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->l:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Ljava/lang/String;

    goto :goto_19

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Ljava/lang/String;

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2b
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3a
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->L:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_47
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleScale(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    if-eqz p0, :cond_59

    invoke-interface {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;->onStopLoading()V

    :cond_59
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j0:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j0:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->L:Z

    const/high16 v1, 0x437f0000  # 255.0f

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_18

    :cond_16
    const/high16 v2, 0x3f000000  # 0.5f

    :goto_18
    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->K:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-nez v0, :cond_3c

    goto/16 :goto_221

    :cond_3c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_221

    :cond_85
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    goto :goto_ed

    :cond_a3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    goto :goto_f2

    :cond_bd
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    goto :goto_f2

    :cond_df
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->R:I

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    :goto_ed
    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_f2
    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->K:I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    iget v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->J:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12e

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f0:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_13c

    :cond_12e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_137

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g0:I

    goto :goto_139

    :cond_137
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h0:I

    :goto_139
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_13c
    :goto_13c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->I:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15b

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    goto :goto_15d

    :cond_15b
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->V:I

    :goto_15d
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_176

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_171

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c0:I

    goto :goto_173

    :cond_171
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b0:I

    :goto_173
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_176
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->P:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->I:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->Q:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->T:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1b9

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b4

    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a0:I

    goto :goto_1b6

    :cond_1b4
    iget v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->W:I

    :goto_1b6
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1b9
    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->M:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1c7

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:Landroid/graphics/Paint;

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1c7
    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->E:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-nez v0, :cond_1d6

    goto :goto_221

    :cond_1d6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:F

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21e

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->z:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->r:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_21e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_221
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Ljava/lang/String;

    :goto_16
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->h:Ljava/lang/String;

    goto :goto_25

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i:Ljava/lang/String;

    :goto_25
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_28
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->onMeasure(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getSwitchMinWidth()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->S:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->K:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i0:Z

    if-nez p1, :cond_44

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->i0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    :goto_2b
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    goto :goto_38

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_36

    iget p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    :cond_36
    iput p2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    :goto_38
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    goto :goto_42

    :cond_40
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_42
    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->M:F

    :cond_44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Z

    :cond_b
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->c()V

    return v2

    :cond_20
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-eqz v0, :cond_25

    return v2

    :cond_25
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->L:Z

    const/4 v1, 0x0

    if-nez v0, :cond_fe

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1f
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->j0:Z

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_31

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    :cond_31
    const v0, 0x3e99999a  # 0.3f

    const v4, 0x3dcccccd  # 0.1f

    invoke-static {v0, v3, v4, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b()Z

    move-result v5

    if-eqz v5, :cond_49

    if-eqz p1, :cond_46

    goto :goto_4e

    :cond_46
    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    goto :goto_4f

    :cond_49
    if-eqz p1, :cond_4e

    iget v5, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v5, v1

    :goto_4f
    iget-object v6, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_12e

    const-string v7, "circleScaleX"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x85

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v0, [F

    fill-array-data v10, :array_136

    invoke-static {p0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v8, v0, [I

    aput v4, v8, v1

    const/4 v4, 0x1

    aput v5, v8, v4

    const-string v5, "circleTranslation"

    invoke-static {p0, v5, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x17f

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v8, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->M:F

    if-eqz p1, :cond_8d

    move v2, v3

    :cond_8d
    new-array v3, v0, [F

    aput v8, v3, v1

    aput v2, v3, v4

    const-string v2, "innerCircleAlpha"

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x64

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->getBarColor()I

    move-result v3

    if-eqz p1, :cond_a7

    iget v8, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:I

    goto :goto_a9

    :cond_a7
    iget v8, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:I

    :goto_a9
    new-array v0, v0, [I

    aput v3, v0, v1

    aput v8, v0, v4

    const-string v3, "barColor"

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1c2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_fe

    :cond_d5
    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b()Z

    move-result v0

    if-eqz v0, :cond_e5

    if-eqz p1, :cond_df

    move v0, v1

    goto :goto_e1

    :cond_df
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    :goto_e1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    goto :goto_ee

    :cond_e5
    if-eqz p1, :cond_ea

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->G:I

    goto :goto_eb

    :cond_ea
    move v0, v1

    :goto_eb
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setCircleTranslation(I)V

    :goto_ee
    if-eqz p1, :cond_f1

    move v2, v3

    :cond_f1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_f9

    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d0:I

    goto :goto_fb

    :cond_f9
    iget v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e0:I

    :goto_fb
    invoke-direct {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarColor(I)V

    :cond_fe
    :goto_fe
    iget-boolean v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    if-eqz v0, :cond_11d

    iget-object v2, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->a:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_10d

    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->b:I

    goto :goto_10f

    :cond_10d
    iget p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->c:I

    :goto_10f
    move v4, p1

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->c(Landroid/content/Context;IFFIIF)V

    iput-boolean v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    :cond_11d
    iget-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Z

    if-eqz p1, :cond_129

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_129
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void

    nop

    :array_12e
    .array-data 4
        0x3f800000  # 1.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_136
    .array-data 4
        0x3fa66666  # 1.3f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->x:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCircleScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->I:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->H:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->F:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->M:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setInnerCircleColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->T:I

    return-void
.end method

.method public setLoadingAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->r:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingRotation(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->s:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->q:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->g:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->k:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    return-void
.end method

.method public setOuterCircleColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->U:I

    return-void
.end method

.method public setOuterCircleStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->J:I

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->d:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->e:Z

    return-void
.end method

.method public setThemedLoadingCheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->v:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThemedLoadingUncheckedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setUncheckedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method
