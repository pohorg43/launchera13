.class Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;)F
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->access$100(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;)F

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;->getValue(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;F)V
    .registers 3

    const p0, 0x3b03126f  # 0.002f

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;->setValue(Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;F)V

    return-void
.end method
