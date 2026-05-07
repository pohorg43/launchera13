.class Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICardMultiInputView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget v2, v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    const-string v3, "/"

    if-ge v0, v2, :cond_39

    iget-object p1, v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget v0, v0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$attr;->couiColorHintNeutral:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_79

    :cond_39
    iget-object v1, v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget v4, v4, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget v3, v3, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$attr;->couiColorError:I

    invoke-static {v1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->a:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->f:I

    if-le v0, v1, :cond_79

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
