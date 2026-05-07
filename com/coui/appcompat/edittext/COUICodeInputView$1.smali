.class Lcom/coui/appcompat/edittext/COUICodeInputView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUICodeInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    if-eqz p1, :cond_60

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUICodeInputView;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    if-ge v0, v2, :cond_56

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget v2, v2, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    if-le v0, v2, :cond_3d

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3d
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    goto :goto_56

    :cond_4f
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->a(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->b(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    :cond_60
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
