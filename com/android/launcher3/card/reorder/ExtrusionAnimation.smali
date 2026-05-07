.class public final Lcom/android/launcher3/card/reorder/ExtrusionAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ExtrusionAnimation$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/ExtrusionAnimation$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ExtrusionAnimation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private final mExtrusionItemAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mExtrusionItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->Companion:Lcom/android/launcher3/card/reorder/ExtrusionAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mExtrusionItemList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemAnimationList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/launcher3/card/reorder/ExtrusionOption;

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;-><init>(ILjava/util/List;Z)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    return-void
.end method


# virtual methods
.method public final addToAfterPage()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemAnimationList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->addToAfterPage()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final endExtrusion()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemAnimationList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->endExtrusion()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final isSame(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "extrusionItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    return v2

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_4b

    check-cast v3, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    return v2

    :cond_49
    move v0, v4

    goto :goto_22

    :cond_4b
    invoke-static {}, Li1/j;->r()V

    const/4 p0, 0x0

    throw p0

    :cond_50
    return v1
.end method

.method public final revertExtrusion()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const-string v3, "mLauncher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragInLauncher(Lcom/android/launcher3/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    const-string/jumbo v3, "revertExtrusion(), extrusion size: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pageIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", curPageIndex="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", needAnim="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_ExtrusionAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemAnimationList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->revertExtrusion(ZZ)V

    goto :goto_73

    :cond_91
    return-void
.end method

.method public final startExtrusion()V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v0

    const-string/jumbo v1, "startExtrusion(), extrusion size: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRtl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", screenId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", farthestItem="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mNearestItem="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_ExtrusionAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_8f

    new-instance v9, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation;

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->startDelay(Lcom/android/launcher3/model/data/ItemInfo;)J

    move-result-wide v7

    move-object v3, v9

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;J)V

    goto :goto_ab

    :cond_8f
    new-instance v10, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFinalX()F

    move-result v7

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mOption:Lcom/android/launcher3/card/reorder/ExtrusionOption;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->startDelay(Lcom/android/launcher3/model/data/ItemInfo;)J

    move-result-wide v8

    move-object v3, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;FJ)V

    move-object v9, v10

    :goto_ab
    invoke-virtual {v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->startExtrusion()V

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mExtrusionItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getMAnim()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/card/reorder/ExtrusionAnimation$startExtrusion$lambda-2$lambda-1$$inlined$doOnEnd$1;

    invoke-direct {v3, v9}, Lcom/android/launcher3/card/reorder/ExtrusionAnimation$startExtrusion$lambda-2$lambda-1$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_61

    :cond_df
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionAnimation;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
