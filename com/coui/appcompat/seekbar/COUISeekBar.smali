.class public Lcom/coui/appcompat/seekbar/COUISeekBar;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/oplus/physicsengine/engine/AnimationListener;
.implements Lcom/oplus/physicsengine/engine/AnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;
    }
.end annotation


# instance fields
.field public E:Landroid/graphics/Paint;

.field public F:F

.field public G:Landroid/view/animation/Interpolator;

.field public H:Landroid/view/animation/Interpolator;

.field public I:F

.field public J:Z

.field public K:Lm1/d;

.field public L:I

.field public M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

.field public N:Z

.field public O:F

.field public P:F

.field public Q:Landroid/graphics/RectF;

.field public R:I

.field public S:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

.field public T:I

.field public U:F

.field public V:F

.field public W:Lm1/e;

.field public a:F

.field public a0:Landroid/view/VelocityTracker;

.field public b:Z

.field public b0:Z

.field public c:Z

.field public c0:F

.field public d:Z

.field public d0:Landroid/view/animation/Interpolator;

.field public e:Ljava/lang/Object;

.field public e0:I

.field public f:I

.field public f0:Ljava/lang/String;

.field public g:F

.field public g0:I

.field public h:I

.field public h0:Lcom/coui/appcompat/seekbar/TextDrawable;

.field public i:I

.field public i0:Z

.field public j:Z

.field public j0:Ljava/util/concurrent/ExecutorService;

.field public k:Landroid/content/res/ColorStateList;

.field public k0:I

.field public l:Landroid/content/res/ColorStateList;

.field public l0:I

.field public m:Landroid/content/res/ColorStateList;

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

.field public p:I

.field public p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

.field public q:F

.field public q0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

.field public r:F

.field public r0:F

.field public s:Landroid/graphics/RectF;

.field public s0:F

.field public t:Landroid/graphics/RectF;

.field public t0:F

.field public u:Landroid/animation/AnimatorSet;

.field public u0:F

.field public v:Landroid/animation/AnimatorSet;

.field public v0:F

.field public w:F

.field public w0:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    const v4, 0x3ea8f5c3  # 0.33f

    const v5, 0x3f2b851f  # 0.67f

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v4, v0, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:Landroid/view/animation/Interpolator;

    const v4, 0x3e99999a  # 0.3f

    const v5, 0x3dcccccd  # 0.1f

    invoke-static {v4, v0, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J:Z

    invoke-static {}, Lm1/h;->d()Lm1/h;

    move-result-object v7

    invoke-virtual {v7}, Lm1/b;->b()Lm1/d;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K:Lm1/d;

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L:I

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    const-wide v7, 0x407f400000000000L  # 500.0

    const-wide/high16 v9, 0x403e000000000000L  # 30.0

    invoke-static {v7, v8, v9, v10}, Lm1/e;->b(DD)Lm1/e;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Lm1/e;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    const v7, 0x3ecccccd  # 0.4f

    iput v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    invoke-static {v4, v0, v5, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:F

    const/high16 v4, 0x40b00000  # 5.5f

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s0:F

    const v4, 0x3f8ccccd  # 1.1f

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t0:F

    const/high16 v4, 0x41700000  # 15.0f

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:F

    if-eqz p2, :cond_9c

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:I

    :cond_9c
    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:I

    if-nez v4, :cond_a2

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e0:I

    :cond_a2
    invoke-virtual {p0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v4, Lcom/support/appcompat/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressScaleRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_seekbar_progress_scale_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarShowProgress:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0, p0, p3, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/support/appcompat/R$dimen;->coui_seekbar_progress_radius:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/support/appcompat/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0, p0, p3, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p0, p0, p3, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackgroundRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_seekbar_background_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarSecondaryProgressColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_seekbar_progress_padding_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_seekbar_view_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarMaxWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarPhysicsEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarThumbShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarInnerShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarShadowColor:I

    const/high16 v4, -0x1000000

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarAdaptiveVibrator:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarEnableVibrator:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarBackGroundEnlargeScale:I

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUISeekBar_couiSeekBarProgressEnlargeScale:I

    const/high16 v4, 0x40400000  # 3.0f

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_seekbar_progress_pressed_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:F

    mul-float/2addr p3, v4

    add-float/2addr p3, p2

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    int-to-float p2, p2

    div-float/2addr p3, p2

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I:F

    new-instance p2, Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/coui/appcompat/seekbar/TextDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h0:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    new-instance p2, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/view/View;)V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->S:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->S:Lcom/coui/appcompat/seekbar/COUISeekBar$PatternExploreByTouchHelper;

    invoke-virtual {p2}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K:Lm1/d;

    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->W:Lm1/e;

    invoke-virtual {p2, p3}, Lm1/d;->f(Lm1/e;)Lm1/d;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K:Lm1/d;

    new-instance p3, Lcom/coui/appcompat/seekbar/COUISeekBar$1;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {p2, p3}, Lm1/d;->a(Lm1/g;)Lm1/d;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    aput p3, p2, v3

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v0:F

    mul-float/2addr p3, v4

    aput p3, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v4, 0xb7

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/seekbar/COUISeekBar$2;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz p2, :cond_2b6

    invoke-static {p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->create(Landroid/content/Context;)Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-instance p1, Lcom/oplus/physicsengine/engine/FloatValueHolder;

    invoke-direct {p1, v0}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    new-instance p1, Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, v0, p2}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(FF)V

    new-array p2, v1, [Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withProperty([Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    check-cast p1, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s0:F

    iget p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t0:F

    invoke-virtual {p1, p2, p3}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    check-cast p1, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:F

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationUpdateListener;)V

    :cond_2b6
    return-void
.end method

.method private getNormalSeekBarWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    shl-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a(F)V
    .registers 6

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    sub-float/2addr p1, v3

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_31

    :cond_1f
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_31
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V

    return-void
.end method

.method public b(I)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_14

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_17
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6a

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v0

    mul-float/2addr v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, p1

    mul-float/2addr v5, v2

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/coui/appcompat/seekbar/COUISeekBar$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;FI)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x43f18000  # 483.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    const-wide/16 v4, 0x96

    cmp-long p1, v0, v4

    if-gez p1, :cond_5b

    move-wide v0, v4

    :cond_5b
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6a
    return-void
.end method

.method public final c(F)F
    .registers 6

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d0:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000  # 2.0f

    div-float v2, v0, v2

    sub-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_32

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_32

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    cmpg-float p1, v2, p1

    if-gez p1, :cond_34

    :cond_32
    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c0:F

    :cond_34
    return v2
.end method

.method public d(IZ)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_e
    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_13
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e(Landroid/graphics/Canvas;F)V
    .registers 16

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->J:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    sub-float p2, v2, v4

    goto :goto_66

    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-static {v4, v3, p2, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p2

    goto :goto_55

    :cond_41
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v3, p2

    sub-float p2, v2, v3

    :goto_55
    move v12, v2

    move v2, p2

    move p2, v12

    goto :goto_66

    :cond_59
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v3, p2

    add-float p2, v3, v2

    :goto_66
    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:I

    if-lez v3, :cond_c4

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c4

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:I

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n0:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float/2addr v5, v6

    int-to-float v7, v0

    sub-float v8, v7, v6

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v9, p2

    add-float/2addr v9, v6

    add-float/2addr v7, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v7, v4

    invoke-virtual {v3, v5, v8, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_c4
    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float v5, v0, v4

    add-float/2addr v0, v4

    invoke-virtual {v3, v2, v5, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    if-nez v0, :cond_127

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_109

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    sub-float v2, v1, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float/2addr v2, v3

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    add-float/2addr v1, v3

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v2, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000  # -90.0f

    const/high16 v9, 0x43340000  # 180.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_168

    :cond_109
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float v1, v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    const/high16 v7, 0x42b40000  # 90.0f

    const/high16 v8, 0x43340000  # 180.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_168

    :cond_127
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_14b

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float v1, v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000  # -90.0f

    const/high16 v8, 0x43b40000  # 360.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_168

    :cond_14b
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    sub-float v2, p2, v1

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v1

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->t:Landroid/graphics/RectF;

    const/high16 v7, 0x42b40000  # 90.0f

    const/high16 v8, 0x43b40000  # 360.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_168
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    if-lez v3, :cond_73

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:I

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l0:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    sub-float v8, v6, v7

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v1

    add-float/2addr v6, v7

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v6, v4

    invoke-virtual {v3, v5, v8, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_73
    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    sub-float v5, v2, v4

    add-float/2addr v2, v4

    invoke-virtual {v3, v0, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .registers 15

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    goto :goto_50

    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-static {v5, v4, v0, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    goto :goto_50

    :cond_30
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    goto :goto_50

    :cond_44
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    :goto_50
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    sub-float v12, v2, v0

    add-float/2addr v2, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:I

    if-lez v4, :cond_af

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_af

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k0:I

    invoke-virtual {v0, v5, v4, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m0:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v12, v5

    int-to-float v6, v1

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    sub-float v8, v6, v7

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v2

    add-float/2addr v6, v7

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v6, v4

    invoke-virtual {v0, v5, v8, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->Q:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_af
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v1

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w:F

    sub-float v6, v0, v10

    add-float v8, v0, v10

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->E:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v12

    move v7, v2

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-static {v2, v12, v3, v12}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->F:F

    return-void
.end method

.method public getEnd()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method public getLabelHeight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h0:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMax()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    return p0
.end method

.method public getSeekBarCenterY()I
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr v1, p0

    shr-int/lit8 p0, v1, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public getSeekBarWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    shl-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    return v0
.end method

.method public getStart()I
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public final h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
    .registers 4

    if-nez p2, :cond_3

    return p3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method public final i(I)I
    .registers 2

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public j(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    return-void
.end method

.method public k(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_2a

    div-float/2addr v0, v3

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000  # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    return-void

    :cond_2a
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_178

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    if-eqz v0, :cond_178

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    if-eqz v0, :cond_d1

    if-eq v0, v1, :cond_3b

    goto/16 :goto_1ff

    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->c(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_84

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_74

    goto :goto_8a

    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_7b

    goto :goto_93

    :cond_7b
    sub-int v0, v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v0, v3

    goto :goto_9c

    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-ge p1, v3, :cond_8c

    :goto_8a
    move v0, v5

    goto :goto_9e

    :cond_8c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_95

    :goto_93
    move v0, v4

    goto :goto_9e

    :cond_95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    :goto_9c
    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_9e
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v2, v0, :cond_1ff

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_cc

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_cc
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    goto/16 :goto_1ff

    :cond_d1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_e0

    neg-float v0, v0

    :cond_e0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->c(F)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    div-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v2, v0, :cond_118

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_115

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_115
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_118
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K:Lm1/d;

    iget-object v1, v0, Lm1/d;->c:Lm1/d$b;

    iget-wide v1, v1, Lm1/d$b;->a:D

    iget-wide v3, v0, Lm1/d;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1ff

    const/high16 v1, 0x42be0000  # 95.0f

    cmpl-float v1, p1, v1

    const v2, 0x3d4ccccd  # 0.05f

    const v3, 0x3f733333  # 0.95f

    if-ltz v1, :cond_154

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float p1, p1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float p0, p0

    mul-float/2addr v3, p0

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1ff

    mul-float/2addr p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1ff

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, p0, p1}, Lm1/d;->e(D)Lm1/d;

    goto/16 :goto_1ff

    :cond_154
    const/high16 v1, -0x3d420000  # -95.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_171

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float p1, p1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float p0, p0

    mul-float/2addr v3, p0

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1ff

    mul-float/2addr p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1ff

    const-wide/high16 p0, -0x4010000000000000L  # -1.0

    invoke-virtual {v0, p0, p1}, Lm1/d;->e(D)Lm1/d;

    goto/16 :goto_1ff

    :cond_171
    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lm1/d;->e(D)Lm1/d;

    goto/16 :goto_1ff

    :cond_178
    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17f

    return-void

    :cond_17f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1ff

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->s()V

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1a2

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1a2
    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1d0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p1, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    sub-float/2addr p1, v5

    mul-float/2addr p1, v4

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    goto :goto_1e8

    :cond_1d0
    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->P:F

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    :goto_1e8
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-eq v0, p1, :cond_1fc

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1f9

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_1f9
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->p()V

    :cond_1fc
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1ff
    :goto_1ff
    return-void
.end method

.method public l(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->K:Lm1/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lm1/d;->e(D)Lm1/d;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    if-eqz v0, :cond_53

    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz p1, :cond_48

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000  # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_48

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    goto :goto_42

    :cond_39
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    :goto_42
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0, p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->start(F)V

    goto :goto_4b

    :cond_48
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    :goto_4b
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->q()V

    goto :goto_66

    :cond_53
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->u(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->a(F)V

    :cond_66
    :goto_66
    return-void
.end method

.method public m(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->w0:F

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    int-to-float v1, v0

    int-to-float v2, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->I:F

    mul-float/2addr v2, v3

    int-to-float v0, v0

    invoke-static {v2, v0, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    return-void
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_c
    return-void
.end method

.method public o()Z
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    if-nez v0, :cond_1c

    return v2

    :cond_1c
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_3e

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-nez v0, :cond_29

    goto :goto_3e

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_33

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/coui/appcompat/seekbar/COUISeekBar$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$7;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_50

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/oplus/os/LinearmotorVibrator;

    const/16 v3, 0x9a

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    const/16 v6, 0x320

    const/16 v7, 0x4b0

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :goto_50
    return v1
.end method

.method public onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->n()V

    return-void
.end method

.method public onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_19

    int-to-float v0, v0

    sub-float v1, v0, p1

    div-float/2addr v1, v0

    goto :goto_1c

    :cond_19
    int-to-float v0, v0

    div-float v1, p1, v0

    :goto_1c
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->i(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->z:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_56

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_56
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->stop()V

    :cond_12
    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->e(Landroid/graphics/Canvas;F)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->g(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->T:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v2, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    if-ge p2, v1, :cond_20

    :goto_1f
    move p2, v1

    :cond_20
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->g0:I

    if-lez v0, :cond_27

    if-le p1, v0, :cond_27

    move p1, v0

    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->stop()V

    :cond_15
    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p1, :cond_2a

    const/4 p2, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getNormalSeekBarWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setActiveFrame(FF)V

    :cond_2a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->l(Landroid/view/MotionEvent;)V

    return v3

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5b

    if-eq v0, v3, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    if-eq v0, v1, :cond_3c

    goto :goto_7e

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_33

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->k(Landroid/view/MotionEvent;)V

    goto :goto_7e

    :cond_3c
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000  # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r0:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    :cond_57
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->l(Landroid/view/MotionEvent;)V

    goto :goto_7e

    :cond_5b
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v0}, Lcom/oplus/physicsengine/engine/FlingBehavior;->stop()V

    :cond_64
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    goto :goto_72

    :cond_6f
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_72
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->j(Landroid/view/MotionEvent;)V

    :goto_7e
    return v3
.end method

.method public p()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->d:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-nez v0, :cond_21

    goto :goto_36

    :cond_21
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2b

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    :cond_2b
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j0:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$6;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3c

    :cond_36
    :goto_36
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :goto_3c
    return-void
.end method

.method public q()V
    .registers 9

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->r:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->O:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "progress"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->U:F

    aput v6, v3, v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->q:F

    aput v6, v3, v5

    const-string v6, "backgroundRadius"

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v1, [I

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->y:I

    aput v7, v6, v4

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->x:I

    aput v7, v6, v5

    const-string v7, "animatePadding"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v1

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$5;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public r(IZZ)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq v0, p1, :cond_28

    if-eqz p2, :cond_15

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->b(I)V

    goto :goto_28

    :cond_15
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    int-to-float p2, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->a:F

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p2, :cond_25

    invoke-interface {p2, p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_28
    :goto_28
    return-void
.end method

.method public s()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->N:Z

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_20
    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->c:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    return-void
.end method

.method public setFlingLinearDamping(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    if-eqz v0, :cond_11

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->u0:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p0:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;

    :cond_11
    return-void
.end method

.method public setIncrement(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->L:I

    return-void
.end method

.method public setMax(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    if-le v0, p1, :cond_f

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMoveType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->R:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->M:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setPhysicalEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i0:Z

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->r(IZZ)V

    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->n:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->f0:Ljava/lang/String;

    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_seekbar_background_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->o:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->b0:Z

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_seekbar_progress_color_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->h(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->p:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public t(FF)F
    .registers 3

    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public u(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2f

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_2f

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method
