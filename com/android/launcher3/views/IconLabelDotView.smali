.class public interface abstract Lcom/android/launcher3/views/IconLabelDotView;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static setIconAndDotVisible(Landroid/view/View;Z)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/views/IconLabelDotView;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/launcher3/views/IconLabelDotView;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconVisible(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setForceHideDot(Z)V

    goto :goto_17

    :cond_f
    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    const/4 p1, 0x4

    :goto_14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_17
    return-void
.end method


# virtual methods
.method public abstract setForceHideDot(Z)V
.end method

.method public abstract setIconVisible(Z)V
.end method
