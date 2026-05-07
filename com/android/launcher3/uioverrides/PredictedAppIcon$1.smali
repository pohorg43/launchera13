.class Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/PredictedAppIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/uioverrides/PredictedAppIcon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->access$000(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;->get(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->access$002(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)F

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;->setValue(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V

    return-void
.end method
