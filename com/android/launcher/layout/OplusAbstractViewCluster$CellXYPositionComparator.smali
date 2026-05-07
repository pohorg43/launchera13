.class Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/OplusAbstractViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellXYPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/OplusAbstractViewCluster;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/OplusAbstractViewCluster;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;->this$0:Lcom/android/launcher/layout/OplusAbstractViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;->this$0:Lcom/android/launcher/layout/OplusAbstractViewCluster;

    iget-object v0, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;->this$0:Lcom/android/launcher/layout/OplusAbstractViewCluster;

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/CellAndSpan;

    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne p2, v0, :cond_24

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget p0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr p1, p0

    return p1

    :cond_24
    sub-int/2addr p2, v0

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
