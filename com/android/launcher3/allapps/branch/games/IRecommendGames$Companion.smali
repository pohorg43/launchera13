.class public final Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/branch/games/IRecommendGames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

.field public static final DEFAULT_RECOMMEND_GAME:Z = true

.field public static final KEY_RUS_RECOMMEND_GAMES_ENABLED_CONFIG:Ljava/lang/String; = "app_launcher_recommend_games_enabled_config"

.field public static final KEY_SHOW_RECOMMEND_GAME:Ljava/lang/String; = "show_recommend_game"

.field public static final KEY_SP_SHOW_RECOMMEND_GAME:Ljava/lang/String; = "key_sp_show_recommend_game"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;->$$INSTANCE:Lcom/android/launcher3/allapps/branch/games/IRecommendGames$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
