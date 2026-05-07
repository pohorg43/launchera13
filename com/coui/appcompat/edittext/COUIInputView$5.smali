.class Lcom/coui/appcompat/edittext/COUIInputView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v2, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {v3}, Lcom/coui/appcompat/edittext/COUIInputView;->b(Lcom/coui/appcompat/edittext/COUIInputView;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v2, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v2, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->a:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v4, v4, v2, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method
