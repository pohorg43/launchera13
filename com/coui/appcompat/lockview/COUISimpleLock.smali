.class public Lcom/coui/appcompat/lockview/COUISimpleLock;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;
    }
.end annotation


# instance fields
.field public E:I

.field public F:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

.field public H:Ljava/lang/String;

.field public I:Z

.field public J:Z

.field public K:Landroid/view/animation/PathInterpolator;

.field public a:I

.field public final b:[F

.field public final c:[F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Landroid/animation/ValueAnimator;

.field public t:Landroid/animation/ValueAnimator;

.field public u:Landroid/animation/Animator;

.field public v:I

.field public w:F

.field public x:F

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSimpleLockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_de

    iput-object v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->b:[F

    const/4 v2, 0x6

    new-array v3, v2, [F

    fill-array-data v3, :array_ea

    iput-object v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->c:[F

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->m:Z

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->o:Z

    iput v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    iput v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    iput v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->x:F

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->y:Z

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->z:I

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->G:Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->I:Z

    new-instance v4, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->K:Landroid/view/animation/PathInterpolator;

    if-eqz p2, :cond_54

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_54
    invoke-virtual {p0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v4, Lcom/support/appcompat/R$styleable;->COUISimpleLock:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUISimpleLock_couiRectanglePadding:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUISimpleLock_couiOutLinedRectangleIconDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->h:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/support/appcompat/R$styleable;->COUISimpleLock_couiFilledRectangleIconDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/support/appcompat/R$styleable;->COUISimpleLock_couiCircleNum:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->z:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_b3

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->z:I

    if-nez p2, :cond_a5

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    mul-int/2addr p2, v1

    iget p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    mul-int/lit8 p3, p3, 0x3

    add-int/2addr p3, p2

    iput p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    goto :goto_b3

    :cond_a5
    if-ne p2, v0, :cond_b3

    iput v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    mul-int/2addr p2, v2

    iget p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    mul-int/lit8 p3, p3, 0x5

    add-int/2addr p3, p2

    iput p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    :cond_b3
    :goto_b3
    new-instance p2, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;Landroid/view/View;)V

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->G:Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$string;->coui_simple_lock_access_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->J:Z

    return-void

    nop

    :array_de
    .array-data 4
        0x0
        0x421a0000  # 38.5f
        0x42b60000  # 91.0f
        0x427c0000  # 63.0f
    .end array-data

    :array_ea
    .array-data 4
        0x0
        0x421a0000  # 38.5f
        0x42b60000  # 91.0f
        0x427c0000  # 63.0f
        0x421a0000  # 38.5f
        0x428c0000  # 70.0f
    .end array-data
.end method


# virtual methods
.method public a()Landroid/animation/Animator;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_4e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/lockview/COUISimpleLock$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$5;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_62

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/lockview/COUISimpleLock$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$6;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/lockview/COUISimpleLock$7;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/lockview/COUISimpleLock$7;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    return-object v0

    nop

    :array_4e
    .array-data 4
        0x0
        0x41f00000  # 30.0f
        -0x3e200000  # -28.0f
        0x41600000  # 14.0f
        -0x3f000000  # -8.0f
        0x40800000  # 4.0f
        -0x3fc00000  # -3.0f
        0x0
    .end array-data

    :array_62
    .array-data 4
        0x0
        0x437a0000  # 250.0f
    .end array-data
.end method

.method public final b()Landroid/animation/ValueAnimator;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->K:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/lockview/COUISimpleLock$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$3;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/lockview/COUISimpleLock$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$4;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    return-object p0

    :array_34
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final c()Landroid/animation/ValueAnimator;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/lockview/COUISimpleLock$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$1;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/lockview/COUISimpleLock$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/lockview/COUISimpleLock$2;-><init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :array_2e
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public final d(Landroid/graphics/Canvas;IIII)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float p2, p2

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p4, p4

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->G:Lcom/coui/appcompat/lockview/COUISimpleLock$SimpleLockTouchHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(Landroid/graphics/Canvas;IIIII)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    if-lez p6, :cond_1e

    const/16 p3, 0xff

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    :goto_1f
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;IIIII)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, v0

    float-to-int p4, p4

    int-to-float p2, p2

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->x:F

    invoke-virtual {p0, p6, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->j(IF)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p2, v0

    int-to-float p5, p5

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->x:F

    invoke-virtual {p0, p6, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->j(IF)F

    move-result v0

    add-float/2addr v0, p5

    float-to-int p5, v0

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->x:F

    invoke-virtual {p0, p6, p2}, Lcom/coui/appcompat/lockview/COUISimpleLock;->j(IF)F

    move-result p2

    const/high16 p3, 0x43160000  # 150.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000  # 1.0f

    sub-float/2addr p3, p2

    const/high16 p2, 0x430c0000  # 140.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    if-lez p2, :cond_40

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    :goto_41
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;IIIII)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float p3, p3

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p4, p4

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAddAnimator()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->c()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteAnimator()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->b()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getFailedAnimator()Landroid/animation/Animator;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->I:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->a()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;IIII)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float p2, p2

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p4, p4

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;I)V
    .registers 14

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v9

    :goto_a
    if-ge v2, v9, :cond_2c

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v10, v0, v3

    if-gt v2, p2, :cond_1b

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/lockview/COUISimpleLock;->d(Landroid/graphics/Canvas;IIII)V

    :cond_1b
    if-le v2, p2, :cond_26

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v7, v10

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/coui/appcompat/lockview/COUISimpleLock;->h(Landroid/graphics/Canvas;IIII)V

    :cond_26
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public final j(IF)F
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->b:[F

    aget p0, p0, p1

    sub-float/2addr p2, p0

    cmpl-float p0, p2, v1

    if-ltz p0, :cond_10

    move v1, p2

    :cond_10
    return v1

    :cond_11
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1f

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->c:[F

    aget p0, p0, p1

    sub-float/2addr p2, p0

    cmpl-float p0, p2, v1

    if-ltz p0, :cond_1e

    move v1, p2

    :cond_1e
    return v1

    :cond_1f
    return p2
.end method

.method public final k()I
    .registers 3

    iget p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    move v0, v1

    goto :goto_c

    :cond_8
    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ea

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_19

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    goto/16 :goto_182

    :cond_19
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->o:Z

    if-eqz v4, :cond_30

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    iput-boolean v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    goto/16 :goto_182

    :cond_30
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v11

    move v12, v1

    :goto_35
    if-ge v12, v11, :cond_182

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v8, v2, v4

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v2

    iget v6, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v7, v8

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v4, v5, v1, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-gt v12, v0, :cond_62

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v9, v3

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->f(Landroid/graphics/Canvas;IIIII)V

    :cond_62
    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v2, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    :cond_6b
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->q:I

    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    if-eqz v4, :cond_7f

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    goto/16 :goto_182

    :cond_7f
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v11

    :goto_83
    if-ge v1, v11, :cond_182

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v12, v2, v4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/lockview/COUISimpleLock;->h(Landroid/graphics/Canvas;IIII)V

    if-gt v1, v0, :cond_9d

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/lockview/COUISimpleLock;->d(Landroid/graphics/Canvas;IIII)V

    :cond_9d
    if-le v1, v0, :cond_aa

    iget v10, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->e(Landroid/graphics/Canvas;IIIII)V

    :cond_aa
    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v2, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_b0
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->q:I

    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->m:Z

    if-eqz v4, :cond_c4

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    goto/16 :goto_182

    :cond_c4
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v11

    :goto_c8
    if-ge v1, v11, :cond_182

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v12, v2, v4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/lockview/COUISimpleLock;->h(Landroid/graphics/Canvas;IIII)V

    if-gt v1, v0, :cond_e4

    iget v10, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->g(Landroid/graphics/Canvas;IIIII)V

    :cond_e4
    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v2, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_ea
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iget v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    if-eqz v4, :cond_fc

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    goto/16 :goto_182

    :cond_fc
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v11

    :goto_100
    if-ge v1, v11, :cond_182

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v12, v2, v4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/lockview/COUISimpleLock;->h(Landroid/graphics/Canvas;IIII)V

    if-ge v1, v0, :cond_11a

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/lockview/COUISimpleLock;->d(Landroid/graphics/Canvas;IIII)V

    :cond_11a
    if-ne v1, v0, :cond_127

    iget v10, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->e(Landroid/graphics/Canvas;IIIII)V

    :cond_127
    iget-boolean v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-eqz v4, :cond_135

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v12

    move v9, v3

    move v10, v1

    invoke-virtual/range {v4 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->f(Landroid/graphics/Canvas;IIIII)V

    :cond_135
    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_13e
    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/2addr v4, v1

    iget-boolean v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->m:Z

    if-eqz v5, :cond_151

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->i(Landroid/graphics/Canvas;I)V

    goto :goto_182

    :cond_151
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->k()I

    move-result v0

    :goto_155
    if-ge v1, v0, :cond_182

    iget v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    add-int v12, v3, v5

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, v3

    move v9, v12

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->h(Landroid/graphics/Canvas;IIII)V

    if-ge v1, v2, :cond_16f

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, v3

    move v9, v12

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/coui/appcompat/lockview/COUISimpleLock;->d(Landroid/graphics/Canvas;IIII)V

    :cond_16f
    if-ne v1, v2, :cond_17c

    iget v11, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    const/4 v7, 0x0

    move-object v5, p0

    move-object v6, p1

    move v8, v3

    move v9, v12

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/coui/appcompat/lockview/COUISimpleLock;->g(Landroid/graphics/Canvas;IIIII)V

    :cond_17c
    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    add-int/2addr v3, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_155

    :cond_182
    :goto_182
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->k:I

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    iget p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->g:I

    add-int/lit16 p2, p2, 0x96

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAllCode(Z)V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1b

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-ge v0, v2, :cond_1a

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_1a
    return-void

    :cond_1b
    if-ne v0, v3, :cond_30

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    return-void

    :cond_30
    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_41
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_50
    iput v4, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->q:I

    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    if-ne p1, v4, :cond_5d

    iput v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    goto :goto_61

    :cond_5d
    if-ne p1, v3, :cond_61

    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    :cond_61
    :goto_61
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->c()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6a
    return-void
.end method

.method public setClearAll(Z)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1e

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-eq v0, v2, :cond_1d

    iget-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-nez v3, :cond_1d

    if-gt v0, v1, :cond_1d

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_1d
    return-void

    :cond_1e
    const/4 v3, 0x6

    if-ne v0, v3, :cond_39

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-eq v0, v2, :cond_38

    iget-boolean v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-nez v3, :cond_38

    const/4 v3, 0x5

    if-gt v0, v3, :cond_38

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    return-void

    :cond_39
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_48
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_57
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_5e
    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->q:I

    iput v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->b()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setDeleteLast(Z)V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_a

    const/4 v3, 0x6

    if-ne v0, v3, :cond_15

    :cond_a
    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-eq v3, v2, :cond_9c

    if-eqz p1, :cond_9c

    sub-int/2addr v0, v1

    if-lt v3, v0, :cond_15

    goto/16 :goto_9c

    :cond_15
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    if-eqz v0, :cond_58

    const/16 v0, 0x79

    iget v3, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->H:Ljava/lang/String;

    const/16 v3, 0x78

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_58
    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_9c

    :cond_6c
    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-lt p1, v2, :cond_9a

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_7f
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_8e
    iput v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->b()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9c

    :cond_9a
    iput v2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    :cond_9c
    :goto_9c
    return-void
.end method

.method public setFailed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    return-void
.end method

.method public setFilledRectangleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFingerprintRecognition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->y:Z

    return-void
.end method

.method public setInternalTranslationX(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->w:F

    return-void
.end method

.method public setInternalTranslationY(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->x:F

    return-void
.end method

.method public setOneCode(I)V
    .registers 8

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_d

    iget v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-le v5, v2, :cond_14

    return-void

    :cond_d
    if-ne v0, v3, :cond_14

    iget v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-le v5, v1, :cond_14

    return-void

    :cond_14
    const/4 v5, -0x1

    if-ne v0, v4, :cond_1e

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-ne v0, v2, :cond_26

    iput v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    goto :goto_26

    :cond_1e
    if-ne v0, v3, :cond_26

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    if-ne v0, v1, :cond_26

    iput v5, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_35
    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_44
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->c()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    if-eqz v0, :cond_71

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->a:I

    iget v1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6c

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_71

    :cond_6c
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_71
    :goto_71
    return-void
.end method

.method public setOpacity(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->v:I

    return-void
.end method

.method public setOutlinedRectangleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRectanglePadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    return-void
.end method

.method public setRectangleType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->z:I

    return-void
.end method

.method public setScaleX(F)V
    .registers 2

    return-void
.end method

.method public setScaleY(F)V
    .registers 2

    return-void
.end method

.method public setSimpleLockType(I)V
    .registers 3

    if-nez p1, :cond_10

    const/4 p1, 0x4

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    goto :goto_20

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    const/4 p1, 0x6

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:I

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->f:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->d:I

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    :cond_20
    :goto_20
    iget p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->k:I

    iget v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->e:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->l:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
