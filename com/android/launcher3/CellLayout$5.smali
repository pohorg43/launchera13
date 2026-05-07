.class Lcom/android/launcher3/CellLayout$5;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)Ljava/lang/Float;
    .registers 2

    iget p0, p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animationProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout$5;->get(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;Ljava/lang/Float;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->access$000(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout$5;->set(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;Ljava/lang/Float;)V

    return-void
.end method
