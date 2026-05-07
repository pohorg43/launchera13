.class Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICardMultiInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_54

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->a:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_54

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->a:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_54

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->g:Landroid/view/inputmethod/InputMethodManager;

    if-nez p2, :cond_3c

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->g:Landroid/view/inputmethod/InputMethodManager;

    :cond_3c
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;->b:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_54
    :goto_54
    return v0
.end method
