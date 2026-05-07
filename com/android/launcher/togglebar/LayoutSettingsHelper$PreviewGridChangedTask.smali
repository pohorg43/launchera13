.class public Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/LayoutSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewGridChangedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCellCountX:I

.field private final mCellCountY:I

.field private final mCompleteRunnable:Ljava/lang/Runnable;

.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Runnable;)V
    .registers 7

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewGridChangedTask -- cellX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutSettingsHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mLauncher:Lcom/android/launcher/Launcher;

    iput p2, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    iput p3, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountY:I

    iput-object p4, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private changeToOriginLayoutMode(Landroid/content/Context;II)Z
    .registers 4

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne p1, p2, :cond_14

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ne p0, p3, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private createWorkSpaceScreenData()Lcom/android/launcher/bean/WorkSpaceScreenData;
    .registers 6

    new-instance p0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {p0}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$200()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_57

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minWidth:I

    iput v1, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minWidth:I

    iget v1, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minHeight:I

    iput v1, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minHeight:I

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_57
    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_5d
    return-object p0
.end method

.method private handleMovingScreenData(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    iget-object v0, v0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/util/Pair;

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_5a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_69

    const-string p0, "LayoutSettingsHelper"

    const-string p1, "PreviewGridChanged doInBackground() screenData size 1"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_69
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$700()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v2, :cond_86

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$700()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_9e
    const/4 v0, 0x1

    :goto_9f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_132

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/bean/WorkSpaceScreenData;

    iget-object v1, v1, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b1
    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$000()Ljava/util/Map;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$600()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$600()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$600()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    :cond_108
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$700()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Landroid/util/Pair;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9f

    :cond_132
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13e
    :goto_13e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    if-ge v2, v3, :cond_13e

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13e

    :cond_17f
    return-void
.end method

.method private setNewCellCount(II)V
    .registers 14

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const-string v0, "LayoutSettingsHelper"

    if-nez p0, :cond_11

    const-string/jumbo p0, "setNewCellCount() workspace is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusCellLayout;->setGridSize(II)V

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v10, p2

    :goto_28
    if-ge v10, p1, :cond_d7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$400()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animate out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/launcher3/OplusCellLayout;->animateChildHorizontally(Landroid/view/View;IIZ)V

    goto :goto_d3

    :cond_6b
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animate in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/launcher3/OplusCellLayout;->animateChildHorizontally(Landroid/view/View;IIZ)V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d3

    :cond_ae
    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$600()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_d3

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1c2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_d3
    :goto_d3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_28

    :cond_d7
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const-string v0, "LayoutSettingsHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    const-string p0, "PreviewGridChanged doInBackground() sCurrentScreenChildren is empty."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    iget-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mLauncher:Lcom/android/launcher/Launcher;

    iget v2, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountY:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->switchCurrentCellLayout(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_27

    goto :goto_2b

    :cond_27
    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->handleMovingScreenData(Ljava/util/List;)V

    return-object v1

    :cond_2b
    :goto_2b
    const-string p0, "PreviewGridChanged doInBackground() screenData is empty."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountX:I

    iget v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCellCountY:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->setNewCellCount(II)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "LayoutSettingsHelper"

    const-string v1, "PreviewGridChanged onPreExecute() sCurrentScreenChildren is empty. try init again"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$100(Lcom/android/launcher/Launcher;)V

    :cond_19
    return-void
.end method

.method public switchCurrentCellLayout(Landroid/content/Context;II)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/launcher/bean/WorkSpaceScreenData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->createWorkSpaceScreenData()Lcom/android/launcher/bean/WorkSpaceScreenData;

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;->changeToOriginLayoutMode(Landroid/content/Context;II)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_21

    invoke-static {v2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$302(Z)Z

    invoke-static {p1, v9, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeCardSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    invoke-static {p1, v9, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeBigFolderSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_21
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->access$302(Z)Z

    aget v3, v0, p0

    aget v4, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, v9

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/common/util/LauncherLayoutUtils;->resizeWidgetSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;IIIIZZ)V

    invoke-static {p1, v9, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeCardSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    invoke-static {p1, v9, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->resizeBigFolderSpanXY(Landroid/content/Context;Lcom/android/launcher/bean/WorkSpaceScreenData;II)V

    invoke-static {v9, p2, p3}, Lcom/android/common/util/LauncherLayoutUtils;->arrangeItemsOnScreen(Lcom/android/launcher/bean/WorkSpaceScreenData;II)Ljava/util/List;

    move-result-object v1

    :goto_3c
    const-string/jumbo p0, "switchCurrentCellLayout -- list.size = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutSettingsHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
