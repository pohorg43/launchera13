.class public final Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/games/IRecommendGames;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

.field private static recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final featureAndRusSupport()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->rusSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final featureSupport()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->featureSupport()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addDefaultRecommend(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;)I"
        }
    .end annotation

    const-string v0, "adapterItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastScrollerSections"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_18

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->addDefaultRecommend(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_18
    if-nez v0, :cond_1f

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames$DefaultImpls;->addDefaultRecommend(Lcom/android/launcher3/allapps/branch/games/IRecommendGames;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_23
    return p0
.end method

.method public addSearchRecommend(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string p0, "adapterItems"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->addSearchRecommend(Ljava/util/ArrayList;)V

    :goto_d
    return-void
.end method

.method public final getRecommendGamesProxy()Lcom/android/launcher3/allapps/branch/games/IRecommendGames;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    return-object p0
.end method

.method public getSwitchSummary(Landroid/content/Context;)I
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_a

    :cond_6
    invoke-interface {p0, p1}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->getSwitchSummary(Landroid/content/Context;)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSwitchTitle(Landroid/content/Context;)I
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_a

    :cond_6
    invoke-interface {p0, p1}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->getSwitchTitle(Landroid/content/Context;)I

    move-result p0

    :goto_a
    return p0
.end method

.method public initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Lcom/android/launcher3/allapps/OplusAllAppsContainerView;",
            ")V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parent"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    :goto_18
    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
    .registers 4

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adapterItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V

    :goto_12
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 4

    const-string p0, "inflater"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    :goto_11
    return-void
.end method

.method public final setRecommendGamesProxy(Lcom/android/launcher3/allapps/branch/games/IRecommendGames;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->recommendGamesProxy:Lcom/android/launcher3/allapps/branch/games/IRecommendGames;

    return-void
.end method

.method public final updateRecommendRus(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->updateRecommendRus(Landroid/content/Context;)V

    return-void
.end method
