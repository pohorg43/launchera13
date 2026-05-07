.class public final Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/games/IInitManager;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public featureSupport()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/games/IInitManager$DefaultImpls;->featureSupport(Lcom/android/launcher3/allapps/branch/games/IInitManager;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/games/IInitManager$DefaultImpls;->init(Lcom/android/launcher3/allapps/branch/games/IInitManager;Landroid/content/Context;)V

    return-void
.end method

.method public rusSupport()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/games/IInitManager$DefaultImpls;->rusSupport(Lcom/android/launcher3/allapps/branch/games/IInitManager;)Z

    move-result p0

    return p0
.end method

.method public updateRecommendRus(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/games/IInitManager$DefaultImpls;->updateRecommendRus(Lcom/android/launcher3/allapps/branch/games/IInitManager;Landroid/content/Context;)V

    return-void
.end method
