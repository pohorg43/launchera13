.class Lcom/coui/appcompat/edittext/COUICodeInputView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUICodeInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object v0, p1, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_3a

    const/16 p1, 0x43

    if-ne p2, p1, :cond_3a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->a(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->b(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    return v0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method
