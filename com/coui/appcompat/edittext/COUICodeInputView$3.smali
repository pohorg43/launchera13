.class Lcom/coui/appcompat/edittext/COUICodeInputView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUICodeInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$3;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$3;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget-object v0, p1, Lcom/coui/appcompat/edittext/COUICodeInputView;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$3;->a:Lcom/coui/appcompat/edittext/COUICodeInputView;

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
