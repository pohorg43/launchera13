.class public final Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ExtrusionReorderSolution"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private isPreformFromAcceptDrop:Z

.field private final mExtrusionAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/card/reorder/ExtrusionAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

.field private mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->Companion:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V
    .registers 3

    const-string v0, "mInspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    new-instance p1, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-direct {p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    return-void
.end method

.method private final addExtrusionAnimationView()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->updateClip(Lcom/android/launcher3/CellLayout;Z)V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "LCR_ExtrusionReorderSolution"

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->isSame(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v0, "addExtrusionAnimationView(), listSize="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", it="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", hasAdded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_60
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-static {v1}, Lz2/r;->G(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;

    if-nez v1, :cond_6b

    goto :goto_6e

    :cond_6b
    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->endExtrusion()V

    :goto_6e
    new-instance v1, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-direct {v1, v2, v4, v0}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addExtrusionAnimationView(), extrusionSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", extrusionItemSize="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->startExtrusion()V

    return-void
.end method


# virtual methods
.method public final attemptExtrusion()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const-string v1, "mInspector.cellLayout.mOccupied"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragArea()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1c

    move v1, v2

    goto :goto_23

    :cond_1c
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragArea()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_23
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->build(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragMode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_38

    move v3, v2

    :cond_38
    iput-boolean v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isPreformFromAcceptDrop:Z

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->setHasExtrusion(Z)V

    goto :goto_61

    :cond_40
    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v4

    const/4 v5, -0x1

    aput v5, v4, v3

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v4

    aput v5, v4, v2

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object v4

    aput v5, v4, v3

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object v3

    aput v5, v3, v2

    :goto_61
    const-string v2, "attemptExtrusion(), finally, cellLayoutIndex="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "toString(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", resultSpan="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extrusionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragMode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LCR_ExtrusionReorderSolution"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final canAddExtrusionItems()Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->isAttemptReorder()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v4, "mInspector.launcher.workspace"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->attemptExtrusion(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->setCanExtrusion(Z)V

    goto :goto_35

    :cond_34
    move v2, v3

    :goto_35
    return v2
.end method

.method public final dropExtrusionItems()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->hadAnimation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "onDrop(), extrusionViewSize="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellLayoutIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_ExtrusionReorderSolution"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->addToAfterPage()V

    goto :goto_34

    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->clear()V

    return-void
.end method

.method public final hadAnimation()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isExtrusionContains(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->hasExtrusionItemsContains(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final isPreformFromAcceptDrop()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isPreformFromAcceptDrop:Z

    return p0
.end method

.method public final performExtrusion(Lcom/android/launcher3/card/reorder/CardConfiguration;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/reorder/CardConfiguration;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "solution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intersectingViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->isAttemptReorder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->setAttemptReorder(Z)V

    :cond_19
    invoke-direct {p0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->addExtrusionAnimationView()V

    sget-object v2, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->apply(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Ljava/util/ArrayList;Landroid/view/View;[I[I)V

    iget-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isPreformFromAcceptDrop:Z

    if-eqz p1, :cond_76

    const-string/jumbo p1, "onFoundSolution(), cellLayoutIndex="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", on accept drop."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LCR_ExtrusionReorderSolution"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    const-string v0, "mInspector.launcher.workspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->onAcceptDrop(Lcom/android/launcher3/OplusWorkspace;)V

    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isPreformFromAcceptDrop:Z

    :cond_76
    return-void
.end method

.method public final revertExtrusionItems(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 4

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->hadAnimation()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string/jumbo v0, "revertExtrusionItems(), extrusionViewSize="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellLayoutIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  isItemPlacementDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->isItemPlacementDirty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  isItemCompactReordered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->isItemCompactReordered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_ExtrusionReorderSolution"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->isItemCompactReordered()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    const/4 v0, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 v0, 0x1

    :goto_5b
    if-eqz v0, :cond_62

    sget-object v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->revertShift(Lcom/android/launcher3/OplusCellLayout;)V

    :cond_62
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->revertExtrusion()V

    goto :goto_68

    :cond_78
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->mExtrusionItemBuilder:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->clear()V

    return-void
.end method

.method public final setPreformFromAcceptDrop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isPreformFromAcceptDrop:Z

    return-void
.end method
