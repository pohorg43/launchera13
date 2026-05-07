.class public Lcom/coui/appcompat/progressbar/COUILoadProgress;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;,
        Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;,
        Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityManager;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

.field public i:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

.field public j:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->coui_state_default:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->k:[I

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->coui_state_wait:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->l:[I

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->coui_state_fail:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->m:[I

    new-array v0, v0, [I

    sget v1, Lcom/support/appcompat/R$attr;->coui_state_ing:I

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->n:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUILoadProgress:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    sget v0, Lcom/support/appcompat/R$styleable;->COUILoadProgress_couiProgress:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_3c

    const/4 p2, 0x1

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_3c
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->a:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->a:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->j:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Lcom/coui/appcompat/progressbar/COUILoadProgress$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->j:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    goto :goto_22

    :cond_1f
    invoke-virtual {p0, v0}, Landroid/widget/Button;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_22
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->j:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_13
    return-void
.end method

.method public getMax()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    return p0
.end method

.method public getState()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->k:[I

    invoke-static {p1, v1}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_11
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1c

    sget-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->n:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_1c
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->l:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_28
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_34

    sget-object p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->m:[I

    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_34
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->j:Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/Button;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget p1, p1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->b:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setFreezesText(Z)V

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->a:I

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    iput p0, v1, Lcom/coui/appcompat/progressbar/COUILoadProgress$SavedState;->b:I

    return-object v1
.end method

.method public performClick()Z
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_1c

    :cond_9
    const/4 v2, 0x2

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_1c

    :cond_10
    if-ne v0, v2, :cond_16

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    goto :goto_1c

    :cond_16
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    :cond_1c
    :goto_1c
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setButtonDrawable(I)V
    .registers 3

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->e:I

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->e:I

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_16
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_34
    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    return-void
.end method

.method public setMax(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    if-eq p1, v0, :cond_12

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    if-le v0, p1, :cond_f

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    :cond_f
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_12
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->h:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    return-void
.end method

.method public setOnStateChangeWidgetListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->i:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    if-le p1, v0, :cond_8

    move p1, v0

    :cond_8
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    if-eq p1, v0, :cond_e

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    :cond_e
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->a()V

    return-void
.end method

.method public setState(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    if-eq v0, p1, :cond_26

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->g:Z

    if-eqz p1, :cond_e

    return-void

    :cond_e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->g:Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->h:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_1a

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;->a(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V

    :cond_1a
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->i:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    if-eqz p1, :cond_23

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;->a(Lcom/coui/appcompat/progressbar/COUILoadProgress;I)V

    :cond_23
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->g:Z

    :cond_26
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
