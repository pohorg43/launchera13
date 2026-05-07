.class public Lcom/coui/appcompat/picker/COUINumberPicker;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;,
        Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;,
        Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;,
        Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field public static final j1:Landroid/view/animation/PathInterpolator;

.field public static final k1:F


# instance fields
.field public A0:I

.field public B0:I

.field public C0:F

.field public D0:F

.field public E:J

.field public E0:Ljava/lang/String;

.field public F:[I

.field public F0:Ljava/lang/String;

.field public G:I

.field public G0:Z

.field public H:I

.field public H0:Z

.field public I:I

.field public I0:F

.field public J:I

.field public J0:F

.field public K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field public K0:F

.field public L:F

.field public L0:I

.field public M:J

.field public M0:I

.field public N:F

.field public N0:I

.field public O:Landroid/view/VelocityTracker;

.field public O0:I

.field public P:I

.field public P0:I

.field public Q:I

.field public Q0:I

.field public R:I

.field public R0:I

.field public S:I

.field public S0:I

.field public T:Z

.field public T0:I

.field public U:I

.field public U0:I

.field public V:I

.field public V0:I

.field public W:I

.field public W0:I

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public final a:F

.field public a0:Z

.field public a1:Landroid/graphics/Paint;

.field public final b:I

.field public b0:Z

.field public b1:Ljava/lang/Object;

.field public final c:I

.field public c0:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

.field public c1:I

.field public final d:I

.field public d0:I

.field public d1:J

.field public final e:I

.field public e0:Landroid/view/accessibility/AccessibilityManager;

.field public e1:I

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

.field public f1:I

.field public final g:Landroid/graphics/Paint;

.field public g0:Landroid/os/HandlerThread;

.field public final g1:F

.field public final h:Landroid/graphics/Paint;

.field public h0:Landroid/os/Handler;

.field public final h1:F

.field public final i:Landroid/graphics/Paint;

.field public i0:J

.field public i1:I

.field public final j:Landroid/widget/Scroller;

.field public j0:I

.field public final k:Landroid/widget/Scroller;

.field public k0:I

.field public final l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

.field public l0:I

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:I

.field public p:[Ljava/lang/String;

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

.field public t0:I

.field public u:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

.field public u0:I

.field public v:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

.field public v0:I

.field public w:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

.field public w0:I

.field public x:Z

.field public x0:I

.field public y:Z

.field public y0:I

.field public z:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

.field public z0:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd  # 0.4f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/picker/COUINumberPicker;->k1:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->a:F

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->x:Z

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->E:J

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d0:I

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->X0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Y0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Z0:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->b1:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d1:J

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->a()Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f0:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    sget v4, Lcom/support/appcompat/R$raw;->coui_numberpicker_click:I

    invoke-virtual {v3, p1, v4}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l0:I

    if-eqz p2, :cond_55

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L0:I

    :cond_55
    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L0:I

    if-nez v3, :cond_5b

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L0:I

    :cond_5b
    sget-object v3, Lcom/support/appcompat/R$styleable;->COUINumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerRowNumber:I

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    sget v4, Lcom/support/appcompat/R$styleable;->COUINumberPicker_internalMinHeight:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->b:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumberPicker_internalMaxHeight:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c:I

    if-eq v4, v2, :cond_8f

    if-eq v5, v2, :cond_8f

    if-gt v4, v5, :cond_87

    goto :goto_8f

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    :goto_8f
    sget v4, Lcom/support/appcompat/R$styleable;->COUINumberPicker_internalMinWidth:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumberPicker_internalMaxWidth:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->m:I

    if-eq v4, v2, :cond_ae

    if-eq v5, v2, :cond_ae

    if-gt v4, v5, :cond_a6

    goto :goto_ae

    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    :goto_ae
    sget v5, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerAlignPosition:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->x0:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumberPicker_focusTextSize:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y0:I

    sget v5, Lcom/support/appcompat/R$styleable;->COUINumberPicker_startTextSize:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerVisualWidth:I

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->w0:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingLeft:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiNOPickerPaddingRight:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M0:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiFocusTextColor:I

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N0:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerBackgroundColor:I

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O0:I

    sget v2, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerTouchEffectInterval:I

    const/16 v6, 0x64

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j0:I

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M0:I

    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N0:I

    invoke-virtual {p0, v2, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->s(II)V

    sget v2, Lcom/support/appcompat/R$styleable;->COUINumberPicker_couiPickerAdaptiveVibrator:I

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Y0:Z

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Z0:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->n:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I0:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J0:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_numberpicker_ignore_bar_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K0:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_number_picker_unit_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_numberpicker_unit_textSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_number_picker_text_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_number_picker_text_margin_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43200000  # 160.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g1:F

    const p3, 0x3f570a3d  # 0.84f

    const v2, 0x43c10b3d

    mul-float/2addr p2, v2

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h1:F

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    sub-int/2addr v4, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S0:I

    sub-int/2addr v4, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W0:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, p2

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U0:I

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V0:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->P:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Q:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    int-to-float p3, v5

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    const-string/jumbo v2, "sys-sans-en"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p3, Landroid/graphics/Paint$FontMetrics;->top:F

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->C0:F

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->D0:F

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/support/appcompat/R$dimen;->coui_numberpicker_textSize_big:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v2, Lcom/coui/appcompat/picker/COUINumberPicker;->j1:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_21b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_21b
    new-instance p2, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z0:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N0:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->P0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Q0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->a1:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O0:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getDampRatio()F
    .registers 2

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    int-to-float p0, p0

    const/high16 v0, 0x42480000  # 50.0f

    div-float/2addr p0, v0

    const v0, 0x3f19999a  # 0.6f

    add-float/2addr p0, v0

    const v0, 0x3fe66666  # 1.8f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .registers 15

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->o(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->o(Landroid/widget/Scroller;)Z

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    if-eqz p1, :cond_20

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2c

    :cond_20
    iget-object v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final c(I)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    if-lt p1, v1, :cond_22

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    if-le p1, v2, :cond_14

    goto :goto_22

    :cond_14
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p:[Ljava/lang/String;

    if-eqz v2, :cond_1d

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_24

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_22
    :goto_22
    const-string p0, ""

    :goto_24
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public computeScroll()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    if-nez v2, :cond_22

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    :cond_22
    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->d()Z

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->p(I)V

    goto :goto_40

    :cond_3d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_40
    :goto_40
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    return p0
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final d()Z
    .registers 12

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e1:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->g(F)D

    move-result-wide v1

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e1:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e1:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->h(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/lit8 v6, v5, 0x2

    if-le v4, v6, :cond_2f

    if-lez v0, :cond_2e

    neg-int v5, v5

    :cond_2e
    add-int/2addr v0, v5

    :cond_2f
    move v8, v0

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x12c

    mul-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0xa

    int-to-double v9, v3

    div-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_4d
    return v1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    if-ge v0, v1, :cond_13

    const/4 v0, 0x3

    goto :goto_1a

    :cond_13
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    if-le v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_47

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3e

    const/16 v2, 0xa

    if-eq p1, v2, :cond_38

    goto :goto_58

    :cond_38
    invoke-virtual {v1, v0, v4}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W:I

    goto :goto_58

    :cond_3e
    invoke-virtual {v1, v0, v7}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W:I

    invoke-virtual {v1, v0, v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_58

    :cond_47
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W:I

    if-eq p1, v0, :cond_58

    if-eq p1, v3, :cond_58

    invoke-virtual {v1, p1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    invoke-virtual {v1, v0, v7}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->f(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->W:I

    invoke-virtual {v1, v0, v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_58
    :goto_58
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_19

    const/16 v1, 0x17

    if-eq v0, v1, :cond_15

    const/16 v1, 0x42

    if-eq v0, v1, :cond_15

    goto :goto_47

    :cond_15
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    goto :goto_47

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    if-eq v1, v3, :cond_23

    goto :goto_47

    :cond_23
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d0:I

    if-ne v1, v0, :cond_47

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d0:I

    return v3

    :cond_2b
    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-nez v1, :cond_4c

    if-ne v0, v2, :cond_3c

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_47

    goto :goto_4c

    :cond_3c
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_47

    goto :goto_4c

    :cond_47
    :goto_47
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d0:I

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_64

    if-ne v0, v2, :cond_60

    move p1, v3

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    :goto_61
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    :cond_64
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUINumberPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    :goto_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    :goto_e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(I)Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method public final f(F)D
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333  # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->a:F

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h1:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final g(F)D
    .registers 8

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->f(F)D

    move-result-wide v0

    sget p1, Lcom/coui/appcompat/picker/COUINumberPicker;->k1:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->a:F

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h1:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr p0, v4

    return-wide p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c0:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c0:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c0:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public getBackgroundColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O0:I

    return p0
.end method

.method public getBottomFadingEdgeStrength()F
    .registers 1

    const p0, 0x3f666666  # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    return p0
.end method

.method public getMinValue()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    return p0
.end method

.method public getNumberPickerPaddingLeft()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    return p0
.end method

.method public getNumberPickerPaddingRight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    return p0
.end method

.method public getTextSize()F
    .registers 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    return p0
.end method

.method public getTopFadingEdgeStrength()F
    .registers 1

    const p0, 0x3f666666  # 0.9f

    return p0
.end method

.method public getTouchEffectInterval()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j0:I

    return p0
.end method

.method public getValue()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    return p0
.end method

.method public final h(F)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->f(F)D

    move-result-wide p0

    sget v0, Lcom/coui/appcompat/picker/COUINumberPicker;->k1:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L  # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final i(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final j(II)I
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    sub-int v2, v0, v1

    if-gtz v2, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 p1, v1, -0x1

    :goto_11
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G0:Z

    add-int/2addr v3, p0

    sub-int/2addr p1, v1

    add-int/2addr p1, p2

    div-int p0, p1, v3

    xor-int p2, p1, v3

    if-gez p2, :cond_26

    mul-int p2, v3, p0

    if-eq p2, p1, :cond_26

    add-int/lit8 p0, p0, -0x1

    :cond_26
    mul-int/2addr p0, v3

    sub-int/2addr p1, p0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2f

    add-int/2addr v1, p1

    return v1

    :cond_2f
    return v2
.end method

.method public final k(IIF)I
    .registers 4

    sub-int p0, p2, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public final l()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    array-length v3, v3

    if-ge v2, v3, :cond_31

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    sub-int v3, v2, v3

    iget-boolean v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G0:Z

    if-eqz v4, :cond_1e

    invoke-virtual {p0, v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result v3

    goto :goto_1f

    :cond_1e
    add-int/2addr v3, v1

    :goto_1f
    iget-boolean v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-eqz v4, :cond_27

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->i(I)I

    move-result v3

    :cond_27
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    return-void
.end method

.method public m()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final n(II)I
    .registers 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return p1

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v1, v2, :cond_28

    if-eqz v1, :cond_23

    if-ne v1, v3, :cond_17

    return p1

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown measure mode: "

    invoke-static {p1, v1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_28
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S0:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_42

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v0, p1

    :cond_42
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U0:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S0:I

    sub-int v1, p1, v1

    add-int/2addr v1, p1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_4d
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public final o(Landroid/widget/Scroller;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    rem-int/2addr p1, v2

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2d

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_28

    if-lez v2, :cond_27

    sub-int/2addr v2, v4

    goto :goto_28

    :cond_27
    add-int/2addr v2, v4

    :cond_28
    :goto_28
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    return v0

    :cond_2d
    return p1
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    :cond_27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    if-nez v0, :cond_39

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    goto :goto_3c

    :cond_39
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_3c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g0:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->g0:Landroid/os/HandlerThread;

    :cond_10
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_17
    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    :cond_23
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->X0:Z

    const/high16 v10, 0x40000000  # 2.0f

    if-eqz v1, :cond_37

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->Q0:I

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->P0:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->Q0:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->P0:I

    int-to-float v6, v5

    add-float/2addr v6, v1

    int-to-float v7, v5

    int-to-float v8, v5

    iget-object v11, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->a1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    if-eqz v2, :cond_69

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->V0:I

    int-to-float v1, v1

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    :cond_69
    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->w0:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v11, 0x2

    if-eq v3, v7, :cond_98

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_98

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->x0:I

    if-eq v3, v8, :cond_94

    if-eq v3, v11, :cond_84

    goto :goto_98

    :cond_84
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->w0:I

    sub-int/2addr v1, v3

    div-int/2addr v3, v11

    add-int/2addr v3, v1

    int-to-float v1, v3

    goto :goto_98

    :cond_94
    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->w0:I

    div-int/2addr v1, v11

    int-to-float v1, v1

    :cond_98
    :goto_98
    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    if-eqz v3, :cond_9e

    int-to-float v3, v3

    add-float/2addr v1, v3

    :cond_9e
    move v12, v1

    iget-object v13, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v14, v1

    move v15, v2

    move v6, v3

    :goto_a6
    array-length v1, v13

    if-ge v6, v1, :cond_251

    aget v1, v13, v6

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->m0:I

    if-le v15, v2, :cond_e6

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->n0:I

    if-ge v15, v2, :cond_e6

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    sub-int v2, v15, v2

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->o0:I

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->s0:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->k(IIF)I

    move-result v3

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->p0:I

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->t0:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->k(IIF)I

    move-result v4

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->q0:I

    iget v11, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->u0:I

    invoke-virtual {v0, v5, v11, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->k(IIF)I

    move-result v5

    iget v11, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->r0:I

    iget v8, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->v0:I

    invoke-virtual {v0, v11, v8, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->k(IIF)I

    move-result v2

    goto :goto_ee

    :cond_e6
    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->o0:I

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->p0:I

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->q0:I

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->r0:I

    :goto_ee
    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->y0:I

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iget v8, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    iget v11, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    mul-int/2addr v8, v11

    add-int/2addr v8, v5

    iget-object v10, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    array-length v10, v10

    add-int/2addr v10, v7

    mul-int/2addr v10, v11

    add-int/2addr v10, v5

    move-object/from16 v18, v13

    move/from16 v19, v14

    int-to-double v13, v15

    move/from16 v20, v6

    int-to-double v6, v8

    move/from16 v21, v1

    move/from16 v22, v2

    int-to-double v1, v11

    const-wide/high16 v23, 0x3fe0000000000000L  # 0.5

    mul-double v1, v1, v23

    sub-double v23, v6, v1

    cmpl-double v23, v13, v23

    const/high16 v24, 0x3f800000  # 1.0f

    if-lez v23, :cond_136

    add-double/2addr v1, v6

    cmpg-double v1, v13, v1

    if-gez v1, :cond_136

    int-to-float v1, v4

    sub-int/2addr v4, v3

    int-to-float v2, v4

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v2, v3

    sub-int v3, v15, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_154

    :cond_136
    sub-int v1, v8, v11

    if-gt v15, v1, :cond_143

    int-to-float v1, v3

    sub-int/2addr v3, v3

    int-to-float v2, v3

    mul-float v2, v2, v24

    sub-int v3, v15, v5

    int-to-float v3, v3

    goto :goto_14d

    :cond_143
    add-int/2addr v8, v11

    int-to-float v1, v3

    if-lt v15, v8, :cond_154

    sub-int/2addr v3, v3

    int-to-float v2, v3

    mul-float v2, v2, v24

    sub-int/2addr v10, v15

    int-to-float v3, v10

    :goto_14d
    mul-float/2addr v2, v3

    int-to-float v3, v11

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_154
    :goto_154
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->H0:Z

    if-nez v4, :cond_189

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->i:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_189

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->H0:Z

    goto :goto_18a

    :cond_189
    const/4 v7, 0x1

    :goto_18a
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1fa

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    move/from16 v6, v20

    if-ne v6, v3, :cond_1b1

    add-int v3, v15, v15

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v3, v1

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    const/4 v4, 0x2

    div-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v3, v1

    float-to-int v1, v3

    goto :goto_1c7

    :cond_1b1
    add-int v1, v15, v15

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->C0:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->D0:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    :goto_1c7
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    int-to-float v5, v4

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v8

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v5, v3

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    const/4 v8, 0x2

    div-int/2addr v3, v8

    int-to-float v3, v3

    add-float/2addr v5, v3

    int-to-float v3, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    int-to-float v3, v3

    if-eqz v2, :cond_1ee

    goto :goto_1f0

    :cond_1ee
    const-string v2, ""

    :goto_1f0
    int-to-float v1, v1

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v12, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v14, v6

    const/high16 v11, 0x40000000  # 2.0f

    goto :goto_243

    :cond_1fa
    move/from16 v6, v20

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->y0:I

    int-to-float v2, v2

    div-float v8, v1, v2

    const/high16 v1, -0x41000000  # -0.5f

    move v10, v1

    :goto_204
    cmpg-float v1, v10, v24

    if-gez v1, :cond_23e

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->I0:F

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->K0:F

    add-float/2addr v2, v1

    mul-float/2addr v2, v10

    mul-float/2addr v2, v8

    mul-float/2addr v1, v8

    iget v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->J0:F

    mul-float/2addr v3, v8

    add-float/2addr v2, v12

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v1, v11

    sub-float v4, v2, v1

    int-to-float v5, v15

    iget v13, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    int-to-float v14, v13

    div-float/2addr v14, v11

    add-float/2addr v14, v5

    div-float/2addr v3, v11

    sub-float/2addr v14, v3

    const/high16 v16, 0x42070000  # 33.75f

    add-float v14, v14, v16

    add-float v17, v2, v1

    int-to-float v1, v13

    div-float/2addr v1, v11

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    add-float v5, v1, v16

    iget-object v13, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v3, v14

    move/from16 v4, v17

    move v14, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v10, v10, v24

    move v6, v14

    goto :goto_204

    :cond_23e
    move v14, v6

    const/high16 v11, 0x40000000  # 2.0f

    move/from16 v3, v19

    :goto_243
    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    add-int/2addr v15, v1

    add-int/lit8 v6, v14, 0x1

    move v14, v3

    move v8, v7

    move v10, v11

    move-object/from16 v13, v18

    const/4 v7, -0x1

    const/4 v11, 0x2

    goto/16 :goto_a6

    :cond_251
    move/from16 v19, v14

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    if-eqz v1, :cond_296

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_265

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    int-to-float v1, v1

    sub-float/2addr v12, v1

    :cond_265
    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v12, v1

    iget v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->W0:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_285

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v12

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v12, v1, v2

    :cond_285
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    iget v2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->z0:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->h:Landroid/graphics/Paint;

    move/from16 v3, v19

    invoke-virtual {v9, v1, v12, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_296
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L:F

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M:J

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T:Z

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L:F

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_44

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    iput v2, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    iput v0, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    iget-object v0, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_62

    :cond_44
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_62

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    iput v2, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    iput v2, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    iget-object v0, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->p(I)V

    goto :goto_b6

    :cond_7f
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_92

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_b6

    :cond_92
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L:F

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0, v1, v3, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->q(ZJ)V

    goto :goto_b6

    :cond_a4
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->q(ZJ)V

    goto :goto_b6

    :cond_b4
    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T:Z

    :goto_b6
    return v2

    :cond_b7
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 12

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    array-length p2, p1

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    mul-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o:I

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    add-int/2addr p3, p1

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->U:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    :cond_5e
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    int-to-double p1, p1

    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    int-to-double p3, p3

    iget p5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    int-to-double v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    sub-double v4, v0, v2

    mul-double/2addr v4, p3

    add-double/2addr v4, p1

    double-to-int p5, v4

    iput p5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->m0:I

    add-double/2addr v0, v2

    mul-double/2addr v0, p3

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->n0:I

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->m:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->n(II)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c:I

    invoke-virtual {p0, p2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->n(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->V0:I

    :cond_22
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    :cond_34
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->n:I

    if-lez v0, :cond_41

    if-le p1, v0, :cond_41

    move p1, v0

    :cond_41
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->b:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v3, :cond_51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    :cond_51
    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12c

    const/4 v3, 0x2

    if-eq v0, v2, :cond_5a

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_19

    goto/16 :goto_13f

    :cond_19
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->d()Z

    goto/16 :goto_13f

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    if-nez v0, :cond_28

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-eq v0, v2, :cond_49

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->P:I

    if-le v0, v1, :cond_56

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->r()V

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->p(I)V

    goto :goto_56

    :cond_49
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f1:I

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_56
    :goto_56
    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N:F

    goto/16 :goto_13f

    :cond_5a
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_61

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_61
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->L:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Q:I

    if-le v6, v7, :cond_d6

    int-to-float p1, v5

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getDampRatio()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e1:I

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->J:I

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->g(F)D

    move-result-wide v4

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    int-to-double v6, v1

    cmpl-double v8, v4, v6

    if-lez v8, :cond_a8

    rem-double v6, v4, v6

    sub-double/2addr v4, v6

    goto :goto_a9

    :cond_a8
    rem-double/2addr v4, v6

    :goto_a9
    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f1:I

    int-to-double v7, v6

    add-double/2addr v4, v7

    if-gez p1, :cond_b7

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    sub-int/2addr p1, v6

    rem-int/2addr p1, v1

    int-to-double v6, p1

    add-double/2addr v4, v6

    neg-double v4, v4

    goto :goto_bd

    :cond_b7
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    add-int/2addr p1, v6

    rem-int/2addr p1, v1

    int-to-double v6, p1

    sub-double/2addr v4, v6

    :goto_bd
    const/high16 p1, 0x3fc00000  # 1.5f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->h(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v11, v0

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j:Landroid/widget/Scroller;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    double-to-int v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->p(I)V

    goto :goto_13f

    :cond_d6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M:J

    sub-long/2addr v5, v7

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->P:I

    if-gt v4, p1, :cond_125

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_125

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T:Z

    if-eqz p1, :cond_f4

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_128

    :cond_f4
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_10e

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    iput v3, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    iput v2, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    iget-object v0, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_121

    :cond_10e
    if-gez v0, :cond_121

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->a(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    iput v3, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->b:I

    iput v3, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a:I

    iget-object v0, p1, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_121
    :goto_121
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->d()Z

    goto :goto_128

    :cond_125
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->d()Z

    :goto_128
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->p(I)V

    goto :goto_13f

    :cond_12c
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    if-nez v0, :cond_137

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    goto :goto_13a

    :cond_137
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_13a
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->O:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_13f
    return v2
.end method

.method public final p(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->v:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

    if-eqz v0, :cond_e

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;->a(Lcom/coui/appcompat/picker/COUINumberPicker;I)V

    :cond_e
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->S:I

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->f:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->u:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    if-eqz p0, :cond_28

    invoke-interface {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;->a()V

    :cond_28
    return-void
.end method

.method public final q(ZJ)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_f

    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_f
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    iput-boolean p1, v0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->a:Z

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final r()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->K:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->l:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->a()V

    return-void
.end method

.method public s(II)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o0:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s0:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p0:I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->t0:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q0:I

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->u0:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r0:I

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->v0:I

    return-void
.end method

.method public scrollBy(II)V
    .registers 9

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-nez v1, :cond_17

    if-lez p2, :cond_17

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget v2, p1, v2

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    if-gt v2, v3, :cond_17

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    return-void

    :cond_17
    if-nez v1, :cond_28

    if-gez p2, :cond_28

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget v1, p1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    if-lt v1, v2, :cond_28

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    return-void

    :cond_28
    const v1, 0xffff

    if-le p2, v1, :cond_30

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->i1:I

    return-void

    :cond_30
    add-int/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    :cond_33
    :goto_33
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o:I

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-le v1, v3, :cond_76

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    move p2, v2

    :goto_4a
    array-length v1, p1

    if-ge p2, v1, :cond_59

    aget v1, p1, p2

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result v1

    aput v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4a

    :cond_59
    aget p2, p1, v2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->c(I)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget p2, p1, p2

    invoke-virtual {p0, p2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->u(IZ)V

    iget-boolean p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-nez p2, :cond_33

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    if-gt p2, v1, :cond_33

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    goto :goto_33

    :cond_76
    :goto_76
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o:I

    neg-int v3, v3

    iget v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->R0:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_b9

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    move p2, v2

    :goto_8c
    array-length v1, p1

    if-ge p2, v1, :cond_9a

    aget v1, p1, p2

    invoke-virtual {p0, v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result v1

    aput v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8c

    :cond_9a
    array-length p2, p1

    sub-int/2addr p2, v4

    aget p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->c(I)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget p2, p1, p2

    invoke-virtual {p0, p2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->u(IZ)V

    iget-boolean p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-nez p2, :cond_76

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    if-lt p2, v1, :cond_76

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    goto :goto_76

    :cond_b9
    if-eq v0, p2, :cond_be

    invoke-virtual {p0, v2, p2, v2, v0}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    :cond_be
    return-void
.end method

.method public setAlignPosition(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->x0:I

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->Y0:Z

    return-void
.end method

.method public setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    return-void
.end method

.method public setHasBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->X0:Z

    return-void
.end method

.method public setIgnorable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G0:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G0:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_16

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    if-ge p1, v0, :cond_f

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    :cond_f
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_16

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    if-le p1, v0, :cond_f

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    :cond_f
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNormalTextColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M0:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->M0:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->N0:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->s(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_e
    return-void
.end method

.method public setNumberPickerPaddingLeft(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->A0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setNumberPickerPaddingRight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->B0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->E:J

    return-void
.end method

.method public setOnScrollListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->v:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->u:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPickerFocusColor(I)V
    .registers 3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s0:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->t0:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->u0:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->v0:I

    return-void
.end method

.method public setPickerNormalColor(I)V
    .registers 3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o0:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->p0:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q0:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r0:I

    return-void
.end method

.method public setPickerRowNumber(I)V
    .registers 3

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    return-void
.end method

.method public setSelectedValueWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->T0:I

    return-void
.end method

.method public setTouchEffectInterval(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->j0:I

    return-void
.end method

.method public setUnitText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F0:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->u(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->x:Z

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->F:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    return-void
.end method

.method public t()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->w:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->w:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->w:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->z:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    return-void
.end method

.method public final u(IZ)V
    .registers 14

    iget-wide v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d1:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, "COUINumberPicker"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d1:J

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c1:I

    goto/16 :goto_dc

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d1:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v0, v6, v8

    if-gez v0, :cond_da

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c1:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c1:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_dc

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->c1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v7, v5

    :goto_43
    if-ge v7, v2, :cond_82

    add-int/lit8 v8, v7, 0x4

    array-length v9, v3

    if-lt v8, v9, :cond_4d

    const-string v8, "<bottom of call stack>"

    goto :goto_77

    :cond_4d
    aget-object v8, v3, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_77
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_82
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmCurrentScrollOffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->I:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mInitialScrollOffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->H:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorTextGapHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorElementHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->G:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorMiddleItemIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->k0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mWrapSelectorWheel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mDebugY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->i1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mMinValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    invoke-static {v0, v2, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_dc

    :cond_da
    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->d1:J

    :cond_dc
    :goto_dc
    const-string/jumbo v0, "setValueInternal current = "

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    if-ne v0, p1, :cond_ea

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    return-void

    :cond_ea
    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->y:Z

    if-eqz v0, :cond_f3

    invoke-virtual {p0, p1, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->j(II)I

    move-result p1

    goto :goto_ff

    :cond_f3
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->q:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->r:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_ff
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->s:I

    if-eqz p2, :cond_146

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_10c

    invoke-interface {p2, p0, v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;->a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V

    :cond_10c
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    invoke-virtual {p2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    invoke-virtual {p2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->e0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_146

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_146

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput v4, p2, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->h0:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_146
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->l()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
