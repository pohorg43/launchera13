.class Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;
.super Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/physicsengine/engine/PhysicalAnimator;->scrollY()Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/physicsengine/engine/FloatPropertyHolder<",
        "Lcom/oplus/physicsengine/engine/UIItem<",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/physicsengine/engine/UIItem;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/physicsengine/engine/UIItem<",
            "Landroid/view/View;",
            ">;)F"
        }
    .end annotation

    iget-object p0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;->getValue(Lcom/oplus/physicsengine/engine/UIItem;)F

    move-result p0

    return p0
.end method

.method public onValueSet(Lcom/oplus/physicsengine/engine/UIItem;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/physicsengine/engine/UIItem<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    iget-object p0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method public bridge synthetic onValueSet(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;->onValueSet(Lcom/oplus/physicsengine/engine/UIItem;F)V

    return-void
.end method

.method public update(Lcom/oplus/physicsengine/engine/UIItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/physicsengine/engine/UIItem<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    iget v0, v0, Lcom/oplus/physicsengine/engine/Transform;->y:F

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setValue(Ljava/lang/Object;F)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;->update(Lcom/oplus/physicsengine/engine/UIItem;)V

    return-void
.end method

.method public verifyStartValue(Lcom/oplus/physicsengine/engine/UIItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/physicsengine/engine/UIItem<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget p0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mStartValue:F

    iput p0, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    goto :goto_1e

    :cond_b
    iget-object v0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget-object v1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iget-object p1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget p1, p1, Lcom/oplus/physicsengine/common/Vector;->mY:F

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mStartValue:F

    :goto_1e
    return-void
.end method

.method public bridge synthetic verifyStartValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator$6;->verifyStartValue(Lcom/oplus/physicsengine/engine/UIItem;)V

    return-void
.end method
