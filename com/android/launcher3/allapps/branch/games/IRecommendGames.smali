.class public interface abstract Lcom/android/launcher3/allapps/branch/games/IRecommendGames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;,
        Lcom/android/launcher3/allapps/branch/games/IRecommendGames$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

.field public static final DEFAULT_RECOMMEND_GAME:Z = true

.field public static final KEY_RUS_RECOMMEND_GAMES_ENABLED_CONFIG:Ljava/lang/String; = "app_launcher_recommend_games_enabled_config"

.field public static final KEY_SHOW_RECOMMEND_GAME:Ljava/lang/String; = "show_recommend_game"

.field public static final KEY_SP_SHOW_RECOMMEND_GAME:Ljava/lang/String; = "key_sp_show_recommend_game"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;->$$INSTANCE:Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

    sput-object v0, Lcom/android/launcher3/allapps/branch/games/IRecommendGames;->Companion:Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

    return-void
.end method


# virtual methods
.method public abstract addDefaultRecommend(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
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
.end method

.method public abstract addSearchRecommend(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSwitchSummary(Landroid/content/Context;)I
.end method

.method public abstract getSwitchTitle(Landroid/content/Context;)I
.end method

.method public abstract initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
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
.end method

.method public abstract onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
.end method
