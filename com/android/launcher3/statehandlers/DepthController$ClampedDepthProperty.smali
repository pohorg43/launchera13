.class public Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedDepthProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/statehandlers/DepthController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMaxValue:F

.field private final mMinValue:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4

    const-string v0, "depthClamped"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMinValue:F

    iput p2, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMaxValue:F

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Float;
    .registers 2

    iget p0, p1, Lcom/android/launcher3/statehandlers/DepthController;->mDepth:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->get(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/statehandlers/DepthController;F)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMinValue:F

    iget p0, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMaxValue:F

    invoke-static {p2, v0, p0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statehandlers/DepthController;->setDepth(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->setValue(Lcom/android/launcher3/statehandlers/DepthController;F)V

    return-void
.end method
