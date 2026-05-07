.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    iget v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->a:I

    const/4 v3, 0x1

    if-le p2, v2, :cond_26

    iget p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->b:I

    add-int/2addr v2, p0

    if-lt p2, v2, :cond_24

    goto :goto_26

    :cond_24
    move p0, v1

    goto :goto_27

    :cond_26
    :goto_26
    move p0, v3

    :goto_27
    if-eqz v0, :cond_38

    if-eq v0, v3, :cond_2f

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2f

    goto :goto_41

    :cond_2f
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const-wide/16 v2, 0x46

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_41

    :cond_38
    if-eqz p0, :cond_3b

    return v3

    :cond_3b
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_41
    return v1
.end method
