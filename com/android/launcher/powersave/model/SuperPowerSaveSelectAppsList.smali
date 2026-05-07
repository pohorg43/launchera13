.class public Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SuperPowerSaveSelectAppsList"


# instance fields
.field private mAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mFilteredApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-object v0
.end method

.method private hasFilter()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private refillAdapterItems()Z
    .registers 10

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasFilter()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iget-object v3, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasFilter()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v1

    goto :goto_36

    :cond_2c
    :goto_2c
    invoke-static {v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->asAllAppsDivider(I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_36
    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v5, 0x1

    invoke-static {v3, v6, v5}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->asApp(ILcom/android/launcher3/model/data/AppInfo;I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    move v5, v8

    goto :goto_3f

    :cond_60
    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasFilter()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasNoFilteredResults()Z

    move-result v4

    if-eqz v4, :cond_77

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->asEmptySearch(I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p0, v2

    goto :goto_78

    :cond_77
    move p0, v1

    :goto_78
    if-eqz v0, :cond_7c

    if-nez p0, :cond_7d

    :cond_7c
    move v1, v2

    :cond_7d
    return v1
.end method

.method private refreshRecyclerView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private updateAdapterItems()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->refillAdapterItems()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->refreshRecyclerView()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getAdapterItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    return-object p0
.end method

.method public hasNoFilteredResults()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onAppsUpdated()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mItemFilter:Ljava/util/function/Predicate;

    if-eqz v4, :cond_21

    invoke-interface {v4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->hasFilter()Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_21
    iget-object v4, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mApps:Ljava/util/List;

    sget-object v1, Lcom/android/common/sort/AppNameComparator;->SUPER_POWER_MODE_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->updateAdapterItems()V

    return-void
.end method

.method public setAdapter(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_17

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v1, v2

    :cond_f
    iput-object p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->onAppsUpdated()V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_17
    return v1
.end method

.method public updateItemFilter(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->mItemFilter:Ljava/util/function/Predicate;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->onAppsUpdated()V

    return-void
.end method
