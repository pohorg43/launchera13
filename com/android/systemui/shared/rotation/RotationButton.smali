.class public interface abstract Lcom/android/systemui/shared/rotation/RotationButton;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;
    }
.end annotation


# virtual methods
.method public acceptRotationProposal()Z
    .registers 1

    invoke-interface {p0}, Lcom/android/systemui/shared/rotation/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onTaskbarStateChanged(ZZ)V
    .registers 3

    return-void
.end method

.method public setCanShowRotationButton(Z)V
    .registers 2

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 2

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 2

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .registers 2

    return-void
.end method

.method public setUpdatesCallback(Lcom/android/systemui/shared/rotation/RotationButton$RotationButtonUpdatesCallback;)V
    .registers 2

    return-void
.end method

.method public show()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public updateIcon(II)V
    .registers 3

    return-void
.end method
