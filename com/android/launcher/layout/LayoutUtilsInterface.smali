.class public interface abstract Lcom/android/launcher/layout/LayoutUtilsInterface;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract checkLayoutForScreen(Lcom/android/launcher3/CellLayout;Z)V
.end method

.method public abstract findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "[IIIZ",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)[I"
        }
    .end annotation
.end method

.method public abstract findEmptyCells(Lcom/android/launcher3/CellLayout;[I[II[I[I)Z
.end method

.method public abstract getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[IIIZ[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[IIIZ[I)",
            "Lcom/android/launcher/layout/OplusAbstractViewCluster;"
        }
    .end annotation
.end method

.method public abstract getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[I[I[I)",
            "Lcom/android/launcher/layout/OplusAbstractViewCluster;"
        }
    .end annotation
.end method

.method public abstract orderIconsFree()Z
.end method

.method public abstract shallReorderWhenTargetNotOccupied(Lcom/android/launcher3/CellLayout;[IZ)Z
.end method
