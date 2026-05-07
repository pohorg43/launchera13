.class public final Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;
.super Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;
.source ""


# instance fields
.field private final allApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/OplusDefaultAppSearchAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;->allApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllApps(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/SuperPowerSaveDefaultAppSearchAlgorithm;->allApps:Ljava/util/List;

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->getAllApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo p0, "super.getAllApps(apps)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method
