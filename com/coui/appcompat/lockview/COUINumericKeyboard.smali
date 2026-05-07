.class public Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnTouchUpListener;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnTouchTextListener;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnItemTouchListener;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;
    }
.end annotation


# static fields
.field public static final synthetic f0:I


# instance fields
.field public E:Landroid/text/TextPaint;

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

.field public K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

.field public L:Landroid/animation/AnimatorSet;

.field public M:Landroid/animation/AnimatorSet;

.field public N:Z

.field public O:Landroid/animation/Animator$AnimatorListener;

.field public P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

.field public final Q:Landroid/view/accessibility/AccessibilityManager;

.field public R:Landroid/content/Context;

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:F

.field public final a:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

.field public a0:I

.field public b:F

.field public b0:I

.field public c:Landroid/graphics/Paint;

.field public c0:F

.field public d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

.field public d0:Landroid/view/animation/Interpolator;

.field public e:I

.field public e0:Landroid/view/animation/Interpolator;

.field public f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:[I

.field public r:Landroid/text/TextPaint;

.field public s:Landroid/graphics/Paint$FontMetricsInt;

.field public t:Landroid/graphics/Paint;

.field public u:I

.field public v:I

.field public w:I

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiNumericKeyboardStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_1c8

    const-class v6, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_1d0

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q:[I

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t:Landroid/graphics/Paint;

    const/high16 v5, -0x40800000  # -1.0f

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->x:F

    iput v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->y:I

    iput v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->z:I

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    const v5, 0x3df5c28f  # 0.12f

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->G:F

    new-instance v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;-><init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;)V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->O:Landroid/animation/Animator$AnimatorListener;

    const/high16 v5, 0x3f800000  # 1.0f

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->W:F

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c0:F

    new-instance v5, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d0:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e0:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_76

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_76
    invoke-virtual {p0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->R:Landroid/content/Context;

    sget-object v5, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard:[I

    invoke-virtual {p1, p2, v5, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumPressColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_numeric_keyboard_view_width:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->u:I

    sget v5, Lcom/support/appcompat/R$dimen;->coui_numeric_keyboard_view_height:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->v:I

    sget v5, Lcom/support/appcompat/R$dimen;->coui_numeric_keyboard_line_height:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->w:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumberTextSize:I

    sget v6, Lcom/support/appcompat/R$dimen;->number_keyboard_number_size:I

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->x:F

    sget v5, Lcom/support/appcompat/R$dimen;->coui_numeric_keyboard_max_translate_y:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumberColor:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->y:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiLineColor:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->z:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiWordTextNormalColor:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumericKeyboard_couiCircleMaxAlpha:I

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;Landroid/view/View;)V

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {p2}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v6, Lcom/support/appcompat/R$array;->coui_number_keyboard_letters:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sget v6, Lcom/support/appcompat/R$drawable;->coui_number_keyboard_delete:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n:Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/support/appcompat/R$drawable;->coui_number_keyboard_normal_circle:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/support/appcompat/R$drawable;->coui_number_keyboard_blur_circle:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result v6

    iput-boolean v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->N:Z

    move v6, v3

    :goto_127
    const/4 v7, 0x4

    if-ge v6, v7, :cond_16d

    move v7, v3

    :goto_12b
    const/4 v8, 0x3

    if-ge v7, v8, :cond_16a

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object v8, v8, v6

    new-instance v9, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    invoke-direct {v9, p0, v6, v7, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;-><init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;IILcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V

    aput-object v9, v8, v7

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object v8, v8, v6

    aget-object v8, v8, v7

    mul-int/lit8 v9, v6, 0x3

    add-int/2addr v9, v7

    aget-object v10, p2, v9

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q:[I

    aget v8, v8, v9

    if-le v8, v1, :cond_167

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object v9, v9, v6

    aget-object v9, v9, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v3

    const-string v8, "%d"

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->c:Ljava/lang/String;

    :cond_167
    add-int/lit8 v7, v7, 0x1

    goto :goto_12b

    :cond_16a
    add-int/lit8 v6, v6, 0x1

    goto :goto_127

    :cond_16d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$string;->coui_numeric_keyboard_sure:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;

    invoke-direct {v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;-><init>()V

    iput-object p2, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->b:Ljava/lang/String;

    iput v5, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->c:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_number_keyboard_finish_text_size:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->d:F

    iput-object p2, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->e:Ljava/lang/String;

    iput v4, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->f:I

    new-instance p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-direct {p2, v1, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;-><init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->y:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;

    invoke-direct {p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;-><init>()V

    iget-object p3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n:Landroid/graphics/drawable/Drawable;

    iput-object p3, p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$string;->coui_number_keyboard_delete:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->e:Ljava/lang/String;

    iput v2, p2, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->f:I

    new-instance p3, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-direct {p3, p2, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;-><init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->Q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q()V

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p()V

    return-void

    :array_1c8
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_1d0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method private getDeleteCellIndex()[I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget v0, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->f:I

    if-ne v0, v2, :cond_10

    new-array p0, v1, [I

    fill-array-data p0, :array_20

    return-object p0

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    if-eqz p0, :cond_1e

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->f:I

    if-ne p0, v2, :cond_1e

    new-array p0, v1, [I

    fill-array-data p0, :array_28

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0

    :array_20
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private getFinishCellIndex()[I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    iget v0, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->f:I

    if-ne v0, v1, :cond_f

    new-array p0, v1, [I

    fill-array-data p0, :array_20

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    if-eqz p0, :cond_1d

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->f:I

    if-ne p0, v1, :cond_1d

    new-array p0, v1, [I

    fill-array-data p0, :array_28

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    nop

    :array_20
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private getStatusAndVariation()[I
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->R:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "font_variation_settings"

    const/16 v1, 0x226

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v1, 0xf000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xc

    const/4 v2, 0x0

    aput v1, v0, v2

    and-int/lit16 p0, p0, 0xfff

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private setBlurAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->F:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setBlurScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->H:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setNormalAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->G:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setNormalScale(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->I:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_f

    const/16 v1, 0x8

    if-gt p1, v1, :cond_f

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;->c(I)V

    :cond_f
    const/16 v0, 0xa

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;->c(I)V

    :cond_19
    const/16 v0, 0x9

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

    invoke-interface {v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;->a()V

    :cond_22
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2b

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

    invoke-interface {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;->b()V

    :cond_2b
    return-void
.end method

.method public final b(FF)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;
    .registers 4

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->i(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->h(F)I

    move-result p1

    if-gez p1, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t(II)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object p0

    return-object p0
.end method

.method public final c(II)V
    .registers 3

    if-ltz p1, :cond_13

    const/4 p0, 0x3

    if-gt p1, p0, :cond_13

    if-ltz p2, :cond_b

    const/4 p0, 0x2

    if-gt p2, p0, :cond_b

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000  # 255.0f

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p4, v2

    float-to-int p4, p4

    iget-object v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p4

    iget-object v3, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->U:I

    add-int/2addr p3, v4

    iget v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->V:I

    add-int/2addr p4, v5

    add-int/2addr v0, v4

    add-int/2addr v2, v5

    invoke-virtual {v3, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->W:F

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_94

    :cond_4b
    iget-object v0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    iget v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->d:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    iget v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->c:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c0:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    iget-object v1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr p3, v0

    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iget-object p1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    iget v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a0:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b0:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    invoke-virtual {p2, p1, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->O:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_15

    :cond_10
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_15
    return-void
.end method

.method public final f(I)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->h:I

    int-to-float v1, p0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    mul-int/2addr p0, p1

    int-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method

.method public final g(I)F
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->i:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    mul-int/2addr v1, p1

    int-to-float v0, v1

    add-float/2addr v2, v0

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->w:I

    mul-int/2addr p0, p1

    int-to-float p0, p0

    add-float/2addr v2, p0

    return v2
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
    const/4 v5, 0x4

    if-ge v4, v5, :cond_ac

    move v5, v3

    :goto_12
    const/4 v6, 0x3

    if-ge v5, v6, :cond_a8

    invoke-virtual {v0, v4, v5}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t(II)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object v6

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_27

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v6, v2, v7}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V

    goto/16 :goto_a4

    :cond_27
    const/16 v8, 0xb

    if-ne v7, v8, :cond_3b

    iget-object v6, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object v8, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v8

    if-eqz v8, :cond_37

    add-int/lit8 v7, v7, -0x1

    :cond_37
    invoke-virtual {v0, v6, v2, v7}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V

    goto :goto_a4

    :cond_3b
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->setCellNumberAlpha(F)V

    iget v8, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->setCellNumberTranslateY(I)V

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_b0

    const-string v10, "cellNumberAlpha"

    invoke-static {v6, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/16 v10, 0xa

    if-ne v7, v10, :cond_5f

    iget-object v11, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v11}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v11

    if-eqz v11, :cond_5f

    add-int/lit8 v11, v7, -0x1

    goto :goto_60

    :cond_5f
    move v11, v7

    :goto_60
    int-to-long v11, v11

    const-wide/16 v13, 0x10

    mul-long/2addr v11, v13

    const-wide/16 v15, 0xa6

    add-long/2addr v11, v15

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v11, 0xa7

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v11, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d0:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v8, [I

    iget v9, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    aput v9, v8, v3

    const/4 v9, 0x1

    aput v3, v8, v9

    const-string v9, "cellNumberTranslateY"

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-ne v7, v10, :cond_92

    iget-object v8, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v8

    if-eqz v8, :cond_92

    add-int/lit8 v7, v7, -0x1

    :cond_92
    int-to-long v7, v7

    mul-long/2addr v13, v7

    invoke-virtual {v6, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e0:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_ac
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v1

    :array_b0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getTouchIndex()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final h(F)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->h:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v3

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1d

    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public final i(F)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->i:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->w:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v1, v3

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_25

    int-to-float v1, v4

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_25

    return v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public final j(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)I
    .registers 4

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    const/4 p1, -0x1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    :cond_1c
    iget v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    :cond_2c
    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    return p0
.end method

.method public final k([I)Landroid/graphics/Typeface;
    .registers 4

    const/4 v0, 0x1

    aget v1, p1, v0

    iput v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->S:I

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 p0, 0x0

    aget p0, p1, p0

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    if-eqz p0, :cond_2b

    const-string p0, "\'wght\' "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/graphics/Typeface$Builder;

    invoke-direct {p1, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_34

    :cond_2b
    new-instance p0, Landroid/graphics/Typeface$Builder;

    invoke-direct {p0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    :goto_34
    return-object p0
.end method

.method public final l(FF)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->Q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b(FF)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    const/4 p2, -0x1

    if-eqz p1, :cond_30

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k:Z

    if-eqz v0, :cond_32

    if-eq p1, p2, :cond_32

    iget-boolean p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->N:Z

    if-eqz p1, :cond_2a

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_32

    :cond_2a
    const/16 p1, 0x12d

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_32

    :cond_30
    iput p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_44
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_51
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final m(FF)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->Q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b(FF)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    if-eqz v0, :cond_30

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-boolean v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k:Z

    if-eqz v2, :cond_32

    if-eq v0, v1, :cond_32

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->N:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_32

    :cond_2a
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_32

    :cond_30
    iput v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e()V

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->i(F)I

    move-result p2

    if-eq p2, v1, :cond_46

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->h(F)I

    move-result p1

    if-eq p1, v1, :cond_46

    iget p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a(I)V

    :cond_46
    iget p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e:I

    if-eq p1, v1, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_5a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m(FF)V

    return-void
.end method

.method public final o(IZ)V
    .registers 15

    const/16 v0, 0xa0

    const/16 v1, 0x42

    const/16 v2, 0x99

    const/16 v3, 0x43

    const/16 v4, 0x10

    const/16 v5, 0x90

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt p1, v6, :cond_13

    if-le p1, v4, :cond_20

    :cond_13
    if-lt p1, v5, :cond_17

    if-le p1, v2, :cond_20

    :cond_17
    if-eq p1, v3, :cond_20

    if-eq p1, v1, :cond_20

    if-ne p1, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v9, v7

    goto :goto_21

    :cond_20
    :goto_20
    move v9, v8

    :goto_21
    if-nez v9, :cond_24

    return-void

    :cond_24
    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-lt p1, v9, :cond_32

    if-gt p1, v4, :cond_32

    sub-int/2addr p1, v9

    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 v11, p1, 0x3

    goto :goto_7b

    :cond_32
    const/16 v4, 0x91

    if-lt p1, v4, :cond_3e

    if-gt p1, v2, :cond_3e

    sub-int/2addr p1, v4

    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 v11, p1, 0x3

    goto :goto_7b

    :cond_3e
    if-ne p1, v3, :cond_55

    invoke-direct {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->getDeleteCellIndex()[I

    move-result-object p1

    if-eqz p1, :cond_4f

    array-length v0, p1

    if-eq v0, v10, :cond_4a

    goto :goto_4f

    :cond_4a
    aget v0, p1, v7

    aget v11, p1, v8

    goto :goto_7b

    :cond_4f
    :goto_4f
    new-array p1, v10, [F

    fill-array-data p1, :array_b4

    goto :goto_a1

    :cond_55
    if-eq p1, v6, :cond_7a

    if-ne p1, v5, :cond_5a

    goto :goto_7a

    :cond_5a
    if-eq p1, v1, :cond_65

    if-ne p1, v0, :cond_5f

    goto :goto_65

    :cond_5f
    new-array p1, v10, [F

    fill-array-data p1, :array_bc

    goto :goto_a1

    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->getFinishCellIndex()[I

    move-result-object p1

    if-eqz p1, :cond_74

    array-length v0, p1

    if-eq v0, v10, :cond_6f

    goto :goto_74

    :cond_6f
    aget v0, p1, v7

    aget v11, p1, v8

    goto :goto_7b

    :cond_74
    :goto_74
    new-array p1, v10, [F

    fill-array-data p1, :array_c4

    goto :goto_a1

    :cond_7a
    :goto_7a
    move v0, v8

    :goto_7b
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object p1, p1, v11

    aget-object p1, p1, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f(I)F

    move-result v0

    invoke-virtual {p0, v11}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g(I)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v3, v2

    div-int/2addr v3, v10

    int-to-float v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget p1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->f:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    new-array p1, v10, [F

    aput v0, p1, v7

    aput v1, p1, v8

    :goto_a1
    if-eqz p2, :cond_ab

    aget p2, p1, v7

    aget p1, p1, v8

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l(FF)V

    goto :goto_b2

    :cond_ab
    aget p2, p1, v7

    aget p1, p1, v8

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m(FF)V

    :goto_b2
    return-void

    nop

    :array_b4
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
    .end array-data

    :array_bc
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
    .end array-data

    :array_c4
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->getStatusAndVariation()[I

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->S:I

    const/4 v1, 0x1

    aget v1, p1, v1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k([I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    if-eqz v0, :cond_10

    iput-object v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    const/high16 v1, 0x437f0000  # 255.0f

    const/4 v2, -0x1

    if-eqz v0, :cond_6a

    iget v0, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f(I)F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    iget v3, v3, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g(I)F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d:Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)I

    move-result v4

    if-eq v4, v2, :cond_6a

    iget v4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j:I

    int-to-float v4, v4

    sub-float v5, v0, v4

    float-to-int v5, v5

    sub-float v6, v3, v4

    float-to-int v6, v6

    add-float v7, v4, v0

    float-to-int v7, v7

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->I:F

    invoke-virtual {p1, v8, v8, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->G:F

    mul-float/2addr v9, v1

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->H:F

    invoke-virtual {p1, v8, v8, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->F:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6a
    const/4 v0, 0x0

    move v3, v0

    :goto_6c
    const/4 v4, 0x4

    if-ge v3, v4, :cond_cf

    move v4, v0

    :goto_70
    const/4 v5, 0x3

    if-ge v4, v5, :cond_cc

    iget-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f(I)F

    move-result v6

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g(I)F

    move-result v7

    mul-int/lit8 v8, v3, 0x3

    add-int/2addr v8, v4

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8e

    iget-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p0, v5, p1, v6, v7}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_c9

    :cond_8e
    const/16 v9, 0xb

    if-ne v8, v9, :cond_98

    iget-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    invoke-virtual {p0, v5, p1, v6, v7}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_c9

    :cond_98
    if-eq v8, v2, :cond_c9

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    iget-object v9, v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    int-to-float v9, v10

    sub-float/2addr v7, v9

    iget-object v9, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    iget v10, v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->d:F

    mul-float/2addr v10, v1

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v9, v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->c:Ljava/lang/String;

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v8, v10

    sub-float/2addr v6, v8

    iget v8, v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->e:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget v5, v5, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->f:I

    int-to-float v5, v5

    add-float/2addr v7, v5

    iget-object v5, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v6, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c9
    :goto_c9
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    :cond_cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_cf
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->Q:Landroid/view/accessibility/AccessibilityManager;

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
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o(IZ)V

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o(IZ)V

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

    iget p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->u:I

    :cond_16
    if-ne v1, v2, :cond_1a

    iget p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->v:I

    :cond_1a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->w:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->i:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->j:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_32

    iget p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->G:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2b

    if-eq v1, v0, :cond_2c

    if-eq v4, v0, :cond_2c

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e()V

    :cond_31
    return v2

    :cond_32
    if-eqz v0, :cond_4e

    if-eq v0, v1, :cond_48

    if-eq v0, v4, :cond_42

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3c

    goto :goto_5b

    :cond_3c
    iput-boolean v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n(Landroid/view/MotionEvent;)V

    goto :goto_5b

    :cond_42
    iput-boolean v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n(Landroid/view/MotionEvent;)V

    goto :goto_5b

    :cond_48
    iput-boolean v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n(Landroid/view/MotionEvent;)V

    goto :goto_5b

    :cond_4e
    iput-boolean v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l(FF)V

    :goto_5b
    return v1
.end method

.method public final p()V
    .registers 13

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_c2

    const-string v2, "normalScale"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget v6, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b:F

    const/4 v7, 0x1

    aput v6, v3, v7

    const-string v6, "normalAlpha"

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->L:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a  # 0.6f

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v1, v5, v5, v3, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    new-array v3, v0, [F

    fill-array-data v3, :array_ca

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v9, 0xa0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v0, [F

    iget v11, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b:F

    aput v11, v3, v4

    aput v5, v3, v7

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    iget v9, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b:F

    const/high16 v10, 0x3f000000  # 0.5f

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v6, v8, v4

    aput-object v9, v8, v7

    aput-object v5, v8, v0

    const-string v5, "blurAlpha"

    invoke-static {v5, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v4

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_d2

    const-string v7, "blurScale"

    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_c2
    .array-data 4
        0x3f800000  # 1.0f
        0x40000000  # 2.0f
    .end array-data

    :array_ca
    .array-data 4
        0x40000000  # 2.0f
        0x40200000  # 2.5f
    .end array-data

    :array_d2
    .array-data 4
        0x3f800000  # 1.0f
        0x40000000  # 2.0f
    .end array-data
.end method

.method public final q()V
    .registers 5

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x41a00000  # 20.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->x:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->y:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    :try_start_35
    invoke-direct {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->getStatusAndVariation()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k([I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_40

    :catch_3e
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_40
    iget-object v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->r:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->z:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->w:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->E:Landroid/text/TextPaint;

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method public final r(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    const-wide/16 v8, 0x10

    const-wide/16 v10, 0xa6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    const-wide/16 v5, 0x1f4

    if-eqz v4, :cond_5e

    invoke-virtual {p0, v12}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->setDrawableAlpha(F)V

    iget v1, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->setDrawableTranslateY(I)V

    new-array v1, v14, [F

    fill-array-data v1, :array_ac

    const-string v4, "drawableAlpha"

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v3, v3

    mul-long/2addr v3, v8

    add-long/2addr v10, v3

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0xa7

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v14, [I

    iget v7, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    aput v7, v1, v13

    const/4 v7, 0x1

    aput v13, v1, v7

    const-string v7, "drawableTranslateY"

    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_5e
    iget-object v1, v1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    invoke-virtual {p0, v12}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->setTextAlpha(F)V

    iget v1, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->setTextTranslateY(I)V

    new-array v1, v14, [F

    fill-array-data v1, :array_b4

    const-string/jumbo v4, "textAlpha"

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v3, v3

    mul-long/2addr v3, v8

    add-long/2addr v10, v3

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0xa7

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->d0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v14, [I

    iget v7, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->T:I

    aput v7, v1, v13

    const/4 v7, 0x1

    aput v13, v1, v7

    const-string/jumbo v7, "textTranslateY"

    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->e0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ab
    :goto_ab
    return-void

    :array_ac
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final s(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)Z
    .registers 2

    if-eqz p1, :cond_11

    iget-object p0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->a:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_f

    iget-object p0, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public setCircleMaxAlpha(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b:F

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p()V

    return-void
.end method

.method public setDrawableAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->W:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawableTranslateX(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->U:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawableTranslateY(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->V:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-boolean v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setHasFinishButton(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setItemTouchListener(Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnItemTouchListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeyboardLineColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->z:I

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q()V

    return-void
.end method

.method public setKeyboardNumberTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->y:I

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setLeftStyle(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->J:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnClickItemListener(Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f:Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnClickItemListener;

    return-void
.end method

.method public setPressedColor(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->g:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->q()V

    return-void
.end method

.method public setRightStyle(Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->K:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->P:Lcom/coui/appcompat/lockview/COUINumericKeyboard$PatternExploreByTouchHelper;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->k:Z

    return-void
.end method

.method public setTextAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextTranslateX(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextTranslateY(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->b0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTouchTextListener(Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnTouchTextListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTouchUpListener(Lcom/coui/appcompat/lockview/COUINumericKeyboard$OnTouchUpListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setType(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setWordTextNormalColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->a:Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;->c:I

    return-void
.end method

.method public declared-synchronized t(II)Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c(II)V

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->m:[[Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    aget-object p1, v0, p1

    aget-object p1, p1, p2
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
