.class public Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/states/OplusDepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedZoomOutProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/uioverrides/states/OplusDepthController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMaxValue:F

.field private final mMinValue:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4

    const-string v0, "ClampedZoomOut"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->mMinValue:F

    iput p2, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->mMaxValue:F

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$400(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->get(Lcom/android/launcher3/uioverrides/states/OplusDepthController;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->mMinValue:F

    iget p0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->mMaxValue:F

    invoke-static {p2, v0, p0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$000(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;->setValue(Lcom/android/launcher3/uioverrides/states/OplusDepthController;F)V

    return-void
.end method
