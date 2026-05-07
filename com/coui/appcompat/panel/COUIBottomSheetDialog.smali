.class public Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source ""

# interfaces
.implements Lcom/oplus/physicsengine/engine/AnimationListener;
.implements Lcom/oplus/physicsengine/engine/AnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetDialog$DialogOffsetListener;
    }
.end annotation


# static fields
.field public static final u0:Landroid/view/animation/Interpolator;

.field public static final v0:Landroid/view/animation/Interpolator;

.field public static final w0:Landroid/view/animation/Interpolator;

.field public static final x0:Landroid/view/animation/Interpolator;

.field public static final y0:Landroid/view/animation/Interpolator;

.field public static final z0:Landroid/view/animation/Interpolator;


# instance fields
.field public E:Z

.field public F:Z

.field public G:Landroid/view/inputmethod/InputMethodManager;

.field public H:Landroid/animation/AnimatorSet;

.field public I:F

.field public J:F

.field public K:Z

.field public L:Landroid/view/View$OnApplyWindowInsetsListener;

.field public M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

.field public N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

.field public O:Landroid/view/WindowInsets;

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public T:Z

.field public U:Z

.field public V:F

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:Landroid/content/res/Configuration;

.field public a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

.field public a0:Z

.field public b:Landroid/view/View;

.field public b0:Z

.field public c:Landroid/view/View;

.field public c0:F

.field public d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

.field public d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

.field public e:Landroid/view/View;

.field public e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

.field public f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field public f0:Z

.field public g:Landroid/view/ViewGroup;

.field public g0:Z

.field public h:Landroid/graphics/drawable/Drawable;

.field public h0:Z

.field public i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public i0:F

.field public j:Landroid/graphics/drawable/Drawable;

.field public j0:F

.field public k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public k0:F

.field public l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public l0:F

.field public m:Z

.field public m0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

.field public n:Landroid/view/View$OnTouchListener;

.field public n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

.field public o:Z

.field public o0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

.field public p:Z

.field public p0:Landroid/view/WindowManager;

.field public q:Z

.field public q0:Z

.field public r:I

.field public r0:Z

.field public s:I

.field public s0:Landroid/content/ComponentCallbacks;

.field public t:I

.field public t0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public u:I

.field public v:Landroid/view/View;

.field public w:Lm1/d;

.field public x:Lm1/d;

.field public y:Landroid/view/View;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x0:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    move v0, p2

    goto :goto_19

    :cond_9
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_19
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->I:F

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->L:Landroid/view/View$OnApplyWindowInsetsListener;

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    const v3, 0x7fffffff

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:I

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Y:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    const v3, 0x43a68000  # 333.0f

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c0:F

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h0:Z

    const/4 v3, 0x1

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j0:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:F

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:Z

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Landroid/content/ComponentCallbacks;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog:[I

    sget v3, Lcom/support/appcompat/R$attr;->couiBottomSheetDialogStyle:I

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_c0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_c0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_panel_pull_up_max_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:F

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_111

    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Ljava/lang/ref/WeakReference;

    :cond_111
    return-void
.end method

.method public static a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_11

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIBottomSheetDialog"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public static b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    return-object v0
.end method

.method public static c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V
    .registers 12

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez v0, :cond_12

    goto/16 :goto_d2

    :cond_12
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i()I

    move-result v2

    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    if-eqz v3, :cond_1d

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    goto :goto_1e

    :cond_1d
    add-int/2addr v2, p1

    :goto_1e
    const/high16 v3, 0x43040000  # 132.0f

    add-int/lit8 v4, v2, 0x0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v0, v0

    const/high16 v5, 0x43960000  # 300.0f

    invoke-static {v3, v0, v5}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v3

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->l(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_44

    const/high16 v3, 0x43160000  # 150.0f

    mul-float/2addr v4, v3

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float v3, v0, v5

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w0:Landroid/view/animation/Interpolator;

    :cond_44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_68
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_ac

    :cond_7a
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    const/high16 v3, 0x43270000  # 167.0f

    sget-object v6, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_ac

    :cond_92
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    check-cast v6, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v2, v1, v3, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v7, v1

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v5, v3, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_ac
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz p2, :cond_d2

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    if-eqz p2, :cond_c2

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    int-to-float p1, p1

    goto :goto_c8

    :cond_c2
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i()I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p1, p2

    :goto_c8
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    invoke-virtual {p2, p1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

    invoke-virtual {p0, v4}, Lcom/oplus/physicsengine/engine/SnapBehavior;->start(F)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public static d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 14

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v2, v0, Lm1/d;->c:Lm1/d$b;

    iget-wide v2, v2, Lm1/d$b;->b:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lm1/d;->c()Lm1/d;

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    :cond_14
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    if-nez v0, :cond_124

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l()V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/high16 v5, 0x43480000  # 200.0f

    const/4 v6, 0x0

    if-ne v0, v2, :cond_7a

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    :cond_3b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v1, :cond_64

    new-array v1, v3, [Landroid/animation/Animator;

    sget-object v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v6, v5, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_75

    :cond_64
    new-array v2, v4, [Landroid/animation/Animator;

    sget-object v4, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v6, v5, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_75
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_132

    :cond_7a
    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x()V

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_8c

    :cond_8b
    move v2, v6

    :goto_8c
    if-nez v2, :cond_90

    goto/16 :goto_132

    :cond_90
    iget-object v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v8, v7

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->I:F

    float-to-int v7, v7

    iget-boolean v9, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    if-eqz v9, :cond_b9

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b9

    iget v8, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    :cond_b9
    const/high16 v9, 0x43050000  # 133.0f

    sub-int v10, v7, v8

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v2, v2

    invoke-static {v9, v2, v5}, Lcom/coui/appcompat/panel/a;->a(FFF)F

    move-result v9

    sget-object v11, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x0:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->l(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_dc

    const/high16 v1, 0x42ea0000  # 117.0f

    mul-float/2addr v10, v1

    div-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float v9, v1, v5

    sget-object v11, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y0:Landroid/view/animation/Interpolator;

    :cond_dc
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    new-array v2, v4, [Landroid/animation/Animator;

    iget-boolean v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v4, :cond_ec

    iget v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c0:F

    goto :goto_ed

    :cond_ec
    move v5, v9

    :goto_ed
    if-eqz v4, :cond_f5

    new-instance v4, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    goto :goto_f8

    :cond_f5
    move-object v4, v11

    check-cast v4, Landroid/view/animation/PathInterpolator;

    :goto_f8
    invoke-virtual {p0, v7, v8, v5, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v2, v6

    iget-boolean v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v4, :cond_104

    const/high16 v9, 0x43370000  # 183.0f

    :cond_104
    if-eqz v4, :cond_10c

    new-instance v4, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    goto :goto_110

    :cond_10c
    sget-object v4, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v0:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/PathInterpolator;

    :goto_110
    invoke-virtual {p0, v6, v9, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_132

    :cond_124
    :try_start_124
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_132

    :catch_128
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIBottomSheetDialog"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_132
    return-void
.end method

.method public final e(I)Landroid/animation/ValueAnimator;
    .registers 8
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_30

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v4, v3, v5, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_30
    if-eq v2, p1, :cond_59

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$10;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Landroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :cond_59
    return-object v1
.end method

.method public final f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .registers 8

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J:F

    if-eqz p1, :cond_7

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    float-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$9;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final g(IIFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    float-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$7;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_b
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    return-object p0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public final i()I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public j(F)F
    .registers 3

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-nez p0, :cond_5

    return p1

    :cond_5
    const/4 p0, 0x0

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x40000000  # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final k(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p3  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_1e

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1e
    return-object p1
.end method

.method public final l()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->T:Z

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1e
    return-void
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:I

    if-eqz v1, :cond_e

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()V

    return-void
.end method

.method public final n(Landroid/view/WindowInsets;)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_61

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_54

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-static {p1, v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->j(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_45

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    :cond_45
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v6

    goto :goto_55

    :cond_54
    move v5, v4

    :goto_55
    if-nez v5, :cond_5b

    invoke-static {v2, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->g(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v5

    :cond_5b
    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    sub-int/2addr v5, p1

    goto :goto_6b

    :cond_61
    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->g(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {v1, v3, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    sub-int v5, v2, p1

    :goto_6b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_panel_max_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lt v0, p1, :cond_7c

    const/4 v4, 0x1

    :cond_7c
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->U:Z

    const/4 v1, -0x1

    if-nez v0, :cond_8c

    if-eqz v4, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v2, -0x2

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v2, v1

    :goto_8d
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_9d

    if-nez v0, :cond_97

    if-eqz v4, :cond_9d

    :cond_97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9d
    return-void
.end method

.method public final o()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    :cond_14
    return-void
.end method

.method public onAnimationCancel(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogExpanded()V

    :cond_a
    return-void
.end method

.method public onAnimationStart(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:Z

    return-void
.end method

.method public onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_4d

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3b

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_32
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_3e
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K:Z

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->I:F

    :cond_4a
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K:Z

    :cond_4d
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/Configuration;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->T:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Y:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, v4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->f(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5a

    iget-object v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_54

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->k(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_54

    move v5, v1

    goto :goto_55

    :cond_54
    move v5, v2

    :goto_55
    if-nez v5, :cond_5a

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Y:Z

    move v4, v2

    :cond_5a
    or-int/lit8 v1, v4, 0x10

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_66

    goto :goto_8c

    :cond_66
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_87

    and-int/lit16 v1, v4, -0x2001

    and-int/lit8 v1, v1, -0x11

    goto :goto_89

    :cond_87
    or-int/lit16 v1, v4, 0x100

    :goto_89
    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_8c
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w(Landroid/view/Window;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    instance-of v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v1, :cond_c5

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    if-eqz v1, :cond_b8

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    :cond_b8
    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_c5
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:Z

    if-nez v0, :cond_ca

    goto :goto_e7

    :cond_ca
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->L:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_d5

    goto :goto_e7

    :cond_d5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->L:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_e7
    :goto_e7
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Z:Landroid/content/res/Configuration;

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_75

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:F

    const/4 v1, 0x1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_22

    const p1, 0x3fcccccd  # 1.6f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:F

    :cond_22
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2d

    const p1, 0x3efae148  # 0.49f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    :cond_2d
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->create(Landroid/content/Context;)Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-instance p1, Lcom/oplus/physicsengine/engine/FloatValueHolder;

    invoke-direct {p1, v0}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    new-instance p1, Lcom/oplus/physicsengine/engine/SnapBehavior;

    invoke-direct {p1}, Lcom/oplus/physicsengine/engine/SnapBehavior;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o0:Lcom/oplus/physicsengine/engine/FloatValueHolder;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withProperty([Lcom/oplus/physicsengine/engine/FloatPropertyHolder;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    check-cast p1, Lcom/oplus/physicsengine/engine/SnapBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k0:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->l0:F

    invoke-virtual {p1, v1, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p1

    check-cast p1, Lcom/oplus/physicsengine/engine/SnapBehavior;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v1, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

    invoke-virtual {p1, v1, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m0:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

    invoke-virtual {p1, v1, p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/BaseBehavior;Lcom/oplus/physicsengine/engine/AnimationUpdateListener;)V

    :cond_75
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_145

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:F

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j0:F

    invoke-virtual {p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->applyPhysics(FF)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setIsInTinyScreen(Z)V

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Z

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    if-eqz v1, :cond_9f

    const/4 v1, 0x4

    goto :goto_a0

    :cond_9f
    const/4 v1, 0x3

    :goto_a0
    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_bd

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_bd
    sget p1, Lcom/support/appcompat/R$id;->container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    sget p1, Lcom/support/appcompat/R$id;->panel_outside:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    sget p1, Lcom/support/appcompat/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    sget p1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    sget p1, Lcom/support/appcompat/R$id;->panel_drag_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelBarView;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->U:Z

    if-eqz v0, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v1, -0x2

    :goto_f7
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_100

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_100
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a:Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v0, :cond_12d

    if-eqz p1, :cond_125

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m()V

    return-void

    :cond_125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "design_bottom_sheet can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "panel_outside can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_135
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "coordinator can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "container can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_145
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use COUIBottomSheetBehavior, check value of bottom_sheet_behavior in strings.xml"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->c()Z

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->N:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    :cond_c
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->L:Landroid/view/View$OnApplyWindowInsetsListener;

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Landroid/content/ComponentCallbacks;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s0:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_35
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o()V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    const-string/jumbo v1, "state_focus_changes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b0:Z

    const-string/jumbo v1, "state_focus_changes"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final p(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Q:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_c

    goto :goto_2f

    :cond_c
    if-nez p1, :cond_1d

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2f

    :cond_1d
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$color;->coui_panel_navigation_bar_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public final q(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->c(Landroid/content/Context;Landroid/content/res/Configuration;)I

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    return-void
.end method

.method public r(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    if-eq v0, p1, :cond_26

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q:Z

    if-eqz p1, :cond_18

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->M:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V

    :cond_26
    return-void
.end method

.method public s(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->U:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_11
    const/4 v0, 0x0

    if-eqz p2, :cond_96

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez p1, :cond_1a

    goto/16 :goto_a3

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog:[I

    const/4 v1, 0x0

    sget v2, Lcom/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewIcon:I

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelDragViewTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackground:I

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIBottomSheetDialog_panelBackgroundTintColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSurface:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7a

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7a
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a3

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->k:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Z

    if-eqz p2, :cond_8b

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    :cond_8b
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a3

    :cond_96
    if-eqz p1, :cond_a3

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m()V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o:Z

    :cond_c
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p:Z

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_71

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v1, :cond_20

    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_22

    :cond_20
    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout:I

    :goto_22
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_37

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_37
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->a(Landroid/view/View;I)I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->b(Landroid/content/res/Configuration;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    :cond_44
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    sget v1, Lcom/support/appcompat/R$id;->panel_content:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-super {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    goto :goto_6e

    :cond_6b
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    :goto_6e
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e:Landroid/view/View;

    return-void

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContentView can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_navigationbar_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_39
    return-void
.end method

.method public u(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-nez v0, :cond_c

    sget v0, Lcom/support/appcompat/R$id;->panel_outside:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    :cond_c
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n:Landroid/view/View$OnTouchListener;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_15
    return-void
.end method

.method public final v()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:I

    if-eqz v1, :cond_e

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n(Landroid/view/WindowInsets;)V

    :cond_1a
    return-void
.end method

.method public final w(Landroid/view/Window;)V
    .registers 6

    if-eqz p1, :cond_46

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Z

    if-nez v0, :cond_b

    goto :goto_46

    :cond_b
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h0:Z

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-class v1, Landroid/view/OplusBaseLayoutParams;

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v1, v0

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    check-cast v1, Landroid/view/OplusBaseLayoutParams;

    if-eqz v1, :cond_46

    iget v2, v1, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:Landroid/view/WindowManager;

    if-nez v1, :cond_3d

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:Landroid/view/WindowManager;

    :cond_3d
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p0:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public final x()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->K:Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_12
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q0:Z

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->n0:Lcom/oplus/physicsengine/engine/SnapBehavior;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/SnapBehavior;->stop()V

    :cond_1f
    return-void
.end method

.method public y(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Z:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->d()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->q(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->p(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_27

    :cond_25
    const/high16 v1, 0x40000000  # 2.0f

    :goto_27
    iput v1, v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->j:F

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->O:Landroid/view/WindowInsets;

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->d(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_41
    return-void
.end method
