.class public Lcom/coui/appcompat/lockview/COUILockPatternView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;,
        Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;
    }
.end annotation


# static fields
.field public static final synthetic R:I


# instance fields
.field public E:I

.field public F:I

.field public final G:Landroid/view/animation/Interpolator;

.field public H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

.field public I:Landroid/graphics/drawable/Drawable;

.field public J:Landroid/graphics/drawable/Drawable;

.field public K:Landroid/animation/ValueAnimator;

.field public L:Z

.field public M:Landroid/content/Context;

.field public N:Landroid/view/accessibility/AccessibilityManager;

.field public O:I

.field public P:Landroid/view/animation/Interpolator;

.field public Q:Landroid/view/animation/Interpolator;

.field public final a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

.field public final b:I

.field public c:F

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field public final h:[[Z

.field public i:F

.field public j:F

.field public k:J

.field public l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public final u:Landroid/graphics/Path;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/Rect;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->c:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->d:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->e:Landroid/graphics/Paint;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_1d2

    const-class v5, Z

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    const/high16 v4, -0x40800000  # -1.0f

    iput v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    iput v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    sget-object v4, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->m:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    iput-boolean v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    iput-boolean v5, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    const v6, 0x3f19999a  # 0.6f

    iput v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->q:F

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->u:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->v:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->w:Landroid/graphics/Rect;

    new-instance v6, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->P:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->Q:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/coui/appcompat/lockview/COUILockPatternView$4;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$4;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V

    if-eqz p2, :cond_7a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_7a
    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->M:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->M:Landroid/content/Context;

    sget-object v6, Lcom/support/appcompat/R$styleable;->COUILockPatternView:[I

    sget v7, Lcom/support/appcompat/R$attr;->couiLockPatternViewStyle:I

    invoke-virtual {p1, p2, v6, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V

    sget v6, Lcom/support/appcompat/R$styleable;->COUILockPatternView_couiRegularColor:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUILockPatternView_couiErrorColor:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->y:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUILockPatternView_couiSuccessColor:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->z:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUILockPatternView_couiPathColor:I

    iget v7, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->lock_pattern_dot_line_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->b:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/support/appcompat/R$dimen;->lock_pattern_dot_size:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/support/appcompat/R$dimen;->color_lock_pattern_view_max_translate_y:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->O:I

    new-array v1, v3, [I

    fill-array-data v1, :array_1da

    const-class v6, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    iput-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    move v1, v5

    :goto_100
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ge v1, v6, :cond_171

    move v8, v5

    :goto_105
    if-ge v8, v6, :cond_16e

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v9, v9, v1

    new-instance v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    invoke-direct {v10}, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;-><init>()V

    aput-object v10, v9, v8

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    div-int/lit8 v11, v2, 0x2

    int-to-float v11, v11

    iput v11, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->c:F

    aget-object v9, v9, v1

    aget-object v9, v9, v8

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v9, v9, v1

    aget-object v9, v9, v8

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v9, v9, v1

    aget-object v9, v9, v8

    iget v10, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x437f0000  # 255.0f

    div-float/2addr v10, v11

    iput v10, v9, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->d:F

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    iput v7, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->j:F

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    iput v0, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->h:F

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    iput v7, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->k:F

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    iput v0, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->i:F

    aget-object v10, v9, v1

    aget-object v10, v10, v8

    iput-boolean v4, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->l:Z

    aget-object v9, v9, v1

    aget-object v9, v9, v8

    new-instance v10, Lcom/coui/appcompat/lockview/COUILockPatternView$1;

    invoke-direct {v10, p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$1;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->setCellDrawListener(Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_105

    :cond_16e
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->coui_lock_pattern_inner_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->coui_lock_pattern_outer_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_lock_pattern_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_lock_pattern_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->F:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUILockPatternView_couiOuterCircleMaxAlpha:I

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->t:F

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->G:Landroid/view/animation/Interpolator;

    new-instance p1, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->M:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->N:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->L:Z

    return-void

    :array_1d2
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1da
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private setPatternInProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;)V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    if-nez v0, :cond_df

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    iget v1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x1cc

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v3}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_ee

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/coui/appcompat/lockview/COUILockPatternView$7;

    invoke-direct {v5, p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$7;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->t:F

    const/high16 v8, 0x3f000000  # 0.5f

    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v2

    aput-object v5, v8, v3

    const-string v5, "alpha"

    invoke-static {v5, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/coui/appcompat/lockview/COUILockPatternView$8;

    invoke-direct {v5, p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$8;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    new-array v1, v3, [F

    fill-array-data v1, :array_f6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xe6

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/lockview/COUILockPatternView$9;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$9;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    iget v8, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    iget v1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v7

    iget p1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v9

    new-array p1, v3, [F

    fill-array-data p1, :array_fe

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/coui/appcompat/lockview/COUILockPatternView$5;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/lockview/COUILockPatternView$5;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/lockview/COUILockPatternView$6;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$6;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->g:Landroid/animation/ValueAnimator;

    :cond_df
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz p1, :cond_e8

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->b(Ljava/util/List;)V

    :cond_e8
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void

    :array_ee
    .array-data 4
        0x3f800000  # 1.0f
        0x40e00000  # 7.0f
    .end array-data

    :array_f6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_fe
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final b()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    move v3, v0

    :goto_6
    if-ge v3, v2, :cond_11

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public final c(FF)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;
    .registers 11

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->h(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_8

    goto :goto_17

    :cond_8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->f(F)I

    move-result p1

    if-gez p1, :cond_f

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_19

    :goto_17
    move-object p1, v0

    goto :goto_1d

    :cond_19
    invoke-static {p2, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b(II)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    move-result-object p1

    :goto_1d
    if-eqz p1, :cond_90

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget v0, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    iget v1, p2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    sub-int/2addr v0, v1

    iget v3, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    iget v4, p2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_53

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_53

    iget v1, p2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    if-lez v0, :cond_51

    move v5, v2

    goto :goto_52

    :cond_51
    move v5, v6

    :goto_52
    add-int/2addr v1, v5

    :cond_53
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_66

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_66

    iget p2, p2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    if-lez v3, :cond_64

    move v6, v2

    :cond_64
    add-int v4, p2, v6

    :cond_66
    invoke-static {v1, v4}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b(II)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    move-result-object v0

    :cond_6a
    if-eqz v0, :cond_7b

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    iget v1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    aget-object p2, p2, v1

    iget v1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    aget-boolean p2, p2, v1

    if-nez p2, :cond_7b

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->a(Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;)V

    :cond_7b
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->a(Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    if-eqz p2, :cond_8f

    iget-boolean p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->L:Z

    if-eqz p2, :cond_8c

    const/16 p2, 0x12e

    invoke-virtual {p0, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_8f

    :cond_8c
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_8f
    :goto_8f
    return-object p1

    :cond_90
    return-object v0
.end method

.method public final d(I)F
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final e(I)F
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public final f(F)I
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    iget v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->q:F

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v0, v1, v2, p0}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x3

    if-ge v2, v3, :cond_24

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_21

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method public final g(Z)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->c:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3f

    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->e:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-ne v0, v1, :cond_b

    goto :goto_3f

    :cond_b
    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3c

    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->b:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3c

    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->d:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-ne v0, v1, :cond_18

    goto :goto_3c

    :cond_18
    if-eqz p1, :cond_39

    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    if-nez p1, :cond_39

    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-eqz p1, :cond_23

    goto :goto_39

    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "unknown display mode "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    return p0

    :cond_3c
    :goto_3c
    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->z:I

    return p0

    :cond_3f
    :goto_3f
    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->y:I

    return p0
.end method

.method public getCellStates()[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    return-object p0
.end method

.method public getEnterAnim()Landroid/animation/AnimatorSet;
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, 0x3

    if-ge v4, v5, :cond_7c

    move v6, v3

    :goto_12
    if-ge v6, v5, :cond_79

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    mul-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->setCellNumberAlpha(F)V

    iget v10, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->O:I

    invoke-virtual {v7, v10}, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->setCellNumberTranslateY(I)V

    const/4 v10, 0x2

    new-array v11, v10, [F

    aput v9, v11, v3

    iget v9, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x437f0000  # 255.0f

    div-float/2addr v9, v12

    const/4 v12, 0x1

    aput v9, v11, v12

    const-string v9, "cellNumberAlpha"

    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v13, v8

    const-wide/16 v15, 0x10

    mul-long/2addr v13, v15

    const-wide/16 v15, 0xa6

    move v11, v6

    add-long v5, v13, v15

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xa7

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->P:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v10, [I

    iget v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->O:I

    aput v6, v5, v3

    aput v3, v5, v12

    const-string v6, "cellNumberTranslateY"

    invoke-static {v7, v6, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->Q:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v11, 0x1

    const/4 v5, 0x3

    goto :goto_12

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_7c
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_c

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_c

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_c
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final h(F)I
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    iget v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->q:F

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v0, v1, v2, p0}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p0

    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x3

    if-ge v2, v3, :cond_24

    int-to-float v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, p0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_21

    add-float/2addr v3, v1

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method public final i()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->b()V

    sget-object v0, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final j(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->M:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->b:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    iget-object v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    const/4 v8, 0x1

    if-ne v6, v2, :cond_7f

    add-int/lit8 v6, v4, 0x1

    mul-int/lit16 v6, v6, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->k:J

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/2addr v9, v6

    div-int/lit16 v6, v9, 0x2bc

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->b()V

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v6, :cond_3d

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    invoke-virtual {v11}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getRow()I

    move-result v12

    aget-object v12, v5, v12

    invoke-virtual {v11}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getColumn()I

    move-result v11

    aput-boolean v8, v12, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_3d
    if-lez v6, :cond_43

    if-ge v6, v4, :cond_43

    move v10, v8

    goto :goto_44

    :cond_43
    const/4 v10, 0x0

    :goto_44
    if-eqz v10, :cond_7c

    rem-int/lit16 v9, v9, 0x2bc

    int-to-float v9, v9

    const/high16 v10, 0x442f0000  # 700.0f

    div-float/2addr v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget v11, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {v0, v11}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v11

    iget v10, v10, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v10

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget v12, v6, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {v0, v12}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v12

    sub-float/2addr v12, v11

    mul-float/2addr v12, v9

    iget v6, v6, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v6

    sub-float/2addr v6, v10

    mul-float/2addr v6, v9

    add-float/2addr v11, v12

    iput v11, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    add-float/2addr v10, v6

    iput v10, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    :cond_7c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_7f
    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->u:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    iget-boolean v9, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    xor-int/2addr v9, v8

    const/high16 v10, 0x437f0000  # 255.0f

    if-eqz v9, :cond_103

    iget-object v9, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/lockview/COUILockPatternView;->g(Z)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->e:Landroid/graphics/Paint;

    iget v11, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->c:F

    mul-float/2addr v11, v10

    float-to-int v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v9, 0x0

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a1
    if-ge v12, v4, :cond_ea

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget v15, v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    aget-object v15, v5, v15

    iget v7, v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    aget-boolean v15, v15, v7

    if-nez v15, :cond_b4

    goto :goto_ea

    :cond_b4
    invoke-virtual {v0, v7}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v9

    iget v7, v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {v0, v7}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v11

    if-nez v12, :cond_c6

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_c6
    if-eqz v12, :cond_e6

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    iget v13, v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    aget-object v7, v7, v13

    iget v13, v14, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    aget-object v7, v7, v13

    iget v13, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->e:F

    const/4 v14, 0x1

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_e3

    iget v7, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->f:F

    cmpl-float v14, v7, v14

    if-eqz v14, :cond_e3

    invoke-virtual {v6, v13, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e6

    :cond_e3
    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_e6
    :goto_e6
    add-int/lit8 v12, v12, 0x1

    move v13, v8

    goto :goto_a1

    :cond_ea
    :goto_ea
    iget-boolean v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-nez v3, :cond_f2

    iget-object v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-ne v3, v2, :cond_fe

    :cond_f2
    if-eqz v13, :cond_fe

    invoke-virtual {v6, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    iget v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_fe
    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_103
    const/4 v2, 0x0

    :goto_104
    const/4 v3, 0x3

    if-ge v2, v3, :cond_20f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v4

    const/4 v6, 0x0

    :goto_10c
    if-ge v6, v3, :cond_1fd

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v9

    iget v11, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->a:F

    iget v12, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->b:F

    aget-object v13, v5, v2

    aget-boolean v13, v13, v6

    if-nez v13, :cond_138

    iget-object v13, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    sget-object v14, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->e:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-ne v13, v14, :cond_129

    goto :goto_138

    :cond_129
    move/from16 v17, v2

    move/from16 v20, v4

    move-object/from16 v16, v5

    move/from16 v18, v6

    move v10, v8

    move/from16 v19, v11

    move/from16 v21, v12

    goto/16 :goto_1c2

    :cond_138
    :goto_138
    float-to-int v13, v9

    int-to-float v13, v13

    add-float/2addr v13, v12

    float-to-int v14, v4

    int-to-float v14, v14

    add-float/2addr v14, v11

    iget v15, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->h:F

    iget v3, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->j:F

    iget v10, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->i:F

    iget v8, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->k:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move/from16 v17, v2

    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    move/from16 v18, v6

    sub-float v6, v13, v2

    float-to-int v6, v6

    sub-float v2, v14, v2

    float-to-int v2, v2

    move/from16 v19, v11

    add-int v11, v6, v5

    add-int/2addr v5, v2

    invoke-virtual {v1, v15, v15, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v15, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    move/from16 v20, v4

    move/from16 v21, v12

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/lockview/COUILockPatternView;->g(Z)I

    move-result v12

    invoke-virtual {v15, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v4, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v2, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000  # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float v4, v13, v3

    float-to-int v4, v4

    sub-float v3, v14, v3

    float-to-int v3, v3

    add-int v5, v4, v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v10, v10, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/lockview/COUILockPatternView;->g(Z)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1c2
    iget-boolean v2, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->l:Z

    if-eqz v2, :cond_1ea

    float-to-int v2, v9

    int-to-float v2, v2

    add-float v2, v2, v21

    move/from16 v3, v20

    float-to-int v4, v3

    int-to-float v4, v4

    add-float v4, v4, v19

    iget v5, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->c:F

    iget v6, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->d:F

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->d:Landroid/graphics/Paint;

    iget v8, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->d:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000  # 255.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1ee

    :cond_1ea
    move/from16 v3, v20

    const/high16 v8, 0x437f0000  # 255.0f

    :goto_1ee
    add-int/lit8 v6, v18, 0x1

    move v4, v3

    move-object/from16 v5, v16

    move/from16 v2, v17

    const/4 v3, 0x3

    move/from16 v22, v10

    move v10, v8

    move/from16 v8, v22

    goto/16 :goto_10c

    :cond_1fd
    move/from16 v17, v2

    move-object/from16 v16, v5

    move/from16 v22, v10

    move v10, v8

    move/from16 v8, v22

    add-int/lit8 v2, v17, 0x1

    move/from16 v22, v10

    move v10, v8

    move/from16 v8, v22

    goto/16 :goto_104

    :cond_20f
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->N:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_22

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    goto :goto_26

    :cond_18
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_26

    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_26

    :cond_22
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_26
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_16

    iget p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->E:I

    :cond_16
    if-ne v1, v2, :cond_1a

    iget p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->F:I

    :cond_1a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    check-cast p1, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v0, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    goto :goto_52

    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_18
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_3a

    :catch_1f
    move-exception v1

    const-string/jumbo v4, "stringToPattern e:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COUILockPatternUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3a
    const/4 v1, 0x0

    :goto_3b
    array-length v4, v2

    if-ge v1, v4, :cond_51

    aget-byte v4, v2, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    div-int/lit8 v5, v4, 0x3

    rem-int/lit8 v4, v4, 0x3

    invoke-static {v5, v4}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b(II)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_51
    move-object v2, v3

    :goto_52
    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->b()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget-object v3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->h:[[Z

    invoke-virtual {v2}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getColumn()I

    move-result v2

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    goto :goto_63

    :cond_7f
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setDisplayMode(Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;)V

    invoke-static {}, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->values()[Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    iget-boolean v0, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->c:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->m:Z

    iget-boolean v0, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->d:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    iget-boolean p1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->e:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v8, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_c
    move-object v2, v0

    goto :goto_54

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    invoke-virtual {v5}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getRow()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x31

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_30
    const/4 v0, 0x0

    :try_start_31
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_54

    :catch_39
    move-exception v2

    const-string v3, "patternToString e:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COUILockPatternUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c

    :goto_54
    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->m:Z

    iget-boolean v5, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    iget-boolean v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/coui/appcompat/lockview/COUILockPatternView$1;)V

    return-object v8
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000  # 3.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->H:Lcom/coui/appcompat/lockview/COUILockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d7

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_1d7

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_164

    const/4 v3, 0x3

    if-eq v0, v2, :cond_129

    const/4 v4, 0x2

    if-eq v0, v4, :cond_34

    if-eq v0, v3, :cond_1d

    return v1

    :cond_1d
    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-eqz p1, :cond_33

    invoke-direct {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setPatternInProgress(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->i()V

    sget p1, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_cleared:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->j(I)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz p0, :cond_33

    invoke-interface {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->a()V

    :cond_33
    return v2

    :cond_34
    iget v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->w:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    move v4, v1

    :goto_41
    add-int/lit8 v5, v3, 0x1

    if-ge v1, v5, :cond_107

    if-ge v1, v3, :cond_4c

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    goto :goto_50

    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    :goto_50
    if-ge v1, v3, :cond_57

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    goto :goto_5b

    :cond_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    :goto_5b
    invoke-virtual {p0, v5, v6}, Lcom/coui/appcompat/lockview/COUILockPatternView;->c(FF)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    move-result-object v7

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v7, :cond_78

    if-ne v8, v2, :cond_78

    invoke-direct {p0, v2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setPatternInProgress(Z)V

    sget v9, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_start:I

    invoke-virtual {p0, v9}, Lcom/coui/appcompat/lockview/COUILockPatternView;->j(I)V

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz v9, :cond_78

    invoke-interface {v9}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->c()V

    :cond_78
    iget v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_91

    cmpl-float v9, v10, v11

    if-lez v9, :cond_92

    :cond_91
    move v4, v2

    :cond_92
    iget-boolean v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-eqz v9, :cond_103

    if-lez v8, :cond_103

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget v9, v8, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {p0, v9}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v9

    iget v8, v8, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {p0, v8}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v8

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v0

    if-eqz v7, :cond_ee

    iget v8, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    const/high16 v11, 0x3f000000  # 0.5f

    mul-float/2addr v8, v11

    iget v12, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    mul-float/2addr v12, v11

    iget v11, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {p0, v11}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v11

    iget v7, v7, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v7

    sub-float v13, v11, v8

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr v11, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v8, v7, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v7, v12

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_ee
    iget-object v7, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->w:Landroid/graphics/Rect;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v7, v8, v9, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_41

    :cond_107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    if-eqz v4, :cond_128

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->v:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->w:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->v:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->v:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->w:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_128
    return v2

    :cond_129
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_163

    invoke-direct {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setPatternInProgress(Z)V

    move p1, v1

    :goto_135
    if-ge p1, v3, :cond_152

    move v0, v1

    :goto_138
    if-ge v0, v3, :cond_14f

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    iget-object v5, v4, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->g:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_14c

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x1

    iput v5, v4, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->e:F

    iput v5, v4, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->f:F

    :cond_14c
    add-int/lit8 v0, v0, 0x1

    goto :goto_138

    :cond_14f
    add-int/lit8 p1, p1, 0x1

    goto :goto_135

    :cond_152
    sget p1, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_detected:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->j(I)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz p1, :cond_160

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->d(Ljava/util/List;)V

    :cond_160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_163
    return v2

    :cond_164
    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_173

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_173
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->c:F

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->i()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->c(FF)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    move-result-object v3

    if-eqz v3, :cond_19c

    invoke-direct {p0, v2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setPatternInProgress(Z)V

    sget-object v1, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    iput-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    sget v1, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_start:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->j(I)V

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz v1, :cond_1af

    invoke-interface {v1}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->c()V

    goto :goto_1af

    :cond_19c
    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->p:Z

    if-eqz v4, :cond_1af

    invoke-direct {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->setPatternInProgress(Z)V

    sget v1, Lcom/support/appcompat/R$string;->lockscreen_access_pattern_cleared:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->j(I)V

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    if-eqz v1, :cond_1af

    invoke-interface {v1}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;->a()V

    :cond_1af
    :goto_1af
    if-eqz v3, :cond_1d2

    iget v1, v3, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v1

    iget v3, v3, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->r:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->s:F

    div-float/2addr v6, v5

    sub-float v5, v1, v4

    float-to-int v5, v5

    sub-float v7, v3, v6

    float-to-int v7, v7

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p0, v5, v7, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_1d2
    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    return v2

    :cond_1d7
    :goto_1d7
    return v1
.end method

.method public setDisplayMode(Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->l:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    sget-object v2, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->b:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_42

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->k:J

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    invoke-virtual {v2}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getColumn()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/lockview/COUILockPatternView;->d(I)F

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->i:F

    invoke-virtual {v2}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->getRow()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/lockview/COUILockPatternView;->e(I)F

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->j:F

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/lockview/COUILockPatternView;->b()V

    goto :goto_42

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_42
    sget-object v2, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->c:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    const-string v6, "pathAlpha"

    const/4 v10, 0x6

    const/high16 v11, 0x3f000000  # 0.5f

    const v12, 0x3f4ccccd  # 0.8f

    const v13, 0x3e19999a  # 0.15f

    const v14, 0x3f19999a  # 0.6f

    const v15, 0x3ecccccd  # 0.4f

    const v4, 0x3eb33333  # 0.35f

    const v5, 0x3e4ccccd  # 0.2f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_cb

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_7e

    iget-boolean v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    if-nez v2, :cond_6f

    goto :goto_7e

    :cond_6f
    iget-boolean v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->L:Z

    if-eqz v2, :cond_79

    const/16 v2, 0x130

    invoke-virtual {v0, v2, v9}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_7e

    :cond_79
    const/16 v2, 0x12c

    invoke-virtual {v0, v2, v9}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_7e
    :goto_7e
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    invoke-static {v15, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v20

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v21

    new-array v11, v10, [Landroid/animation/Keyframe;

    const/16 v16, 0x0

    aput-object v2, v11, v16

    aput-object v17, v11, v3

    const/4 v2, 0x2

    aput-object v18, v11, v2

    aput-object v19, v11, v9

    const/4 v2, 0x4

    aput-object v20, v11, v2

    const/4 v2, 0x5

    aput-object v21, v11, v2

    invoke-static {v6, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v11, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v11, v16

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/coui/appcompat/lockview/COUILockPatternView$2;

    invoke-direct {v9, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$2;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_cb
    sget-object v2, Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;->e:Lcom/coui/appcompat/lockview/COUILockPatternView$DisplayMode;

    if-ne v1, v2, :cond_119

    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v15, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    invoke-static {v14, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/high16 v9, 0x3f000000  # 0.5f

    invoke-static {v12, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    aput-object v2, v8, v3

    const/4 v1, 0x2

    aput-object v4, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v9, v8, v1

    const/4 v1, 0x5

    aput-object v7, v8, v1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v10

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/lockview/COUILockPatternView$3;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$3;-><init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_119
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setErrorColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->y:I

    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->n:Z

    return-void
.end method

.method public setLockPassword(Z)V
    .registers 2

    return-void
.end method

.method public setOnPatternListener(Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->f:Lcom/coui/appcompat/lockview/COUILockPatternView$OnPatternListener;

    return-void
.end method

.method public setOuterCircleMaxAlpha(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->t:F

    return-void
.end method

.method public setPathColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRegularColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->x:I

    return-void
.end method

.method public setSuccessColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->z:I

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView;->o:Z

    return-void
.end method
