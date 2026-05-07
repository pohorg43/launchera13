.class Lcom/android/launcher3/util/OverScroller$SplineOverScroller$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/util/OverScroller$SplineOverScroller;",
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
.method public getValue(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$100(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller$1;->getValue(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;F)V
    .registers 3

    float-to-int p0, p2

    invoke-static {p1, p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$102(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller$1;->setValue(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;F)V

    return-void
.end method
