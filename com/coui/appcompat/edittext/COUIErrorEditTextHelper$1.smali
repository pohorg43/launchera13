.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    sget-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->v:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->d(ZZZ)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->t:F

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_12

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    :cond_12
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
