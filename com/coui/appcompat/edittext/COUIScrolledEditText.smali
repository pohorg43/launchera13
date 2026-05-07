.class public Lcom/coui/appcompat/edittext/COUIScrolledEditText;
.super Lcom/coui/appcompat/edittext/COUIEditText;
.source ""


# instance fields
.field public t0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_33

    :cond_8
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIScrolledEditText;->t0:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIScrolledEditText;->t0:I

    if-lt v0, v1, :cond_33

    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_33
    :goto_33
    invoke-super {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
