.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    sget-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->v:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e(ZZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    :goto_f
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_25

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v1, v0}, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;->a(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget v0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method
