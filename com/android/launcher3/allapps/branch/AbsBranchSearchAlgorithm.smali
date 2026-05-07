.class public abstract Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/search/SearchAlgorithm<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mSearchAlgorithmProxy:Lcom/android/launcher3/search/SearchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;-><init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;-><init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;-><init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mSearchAlgorithmProxy:Lcom/android/launcher3/search/SearchAlgorithm;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move-object p3, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;-><init>(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;Lcom/android/launcher3/search/SearchAlgorithm;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getMBranchResponse()Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMSearchAlgorithmProxy()Lcom/android/launcher3/search/SearchAlgorithm;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mSearchAlgorithmProxy:Lcom/android/launcher3/search/SearchAlgorithm;

    return-object p0
.end method

.method public final setMBranchResponse(Lcom/android/launcher3/allapps/branch/AbsBranchResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchResponse<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mBranchResponse:Lcom/android/launcher3/allapps/branch/AbsBranchResponse;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setMSearchAlgorithmProxy(Lcom/android/launcher3/search/SearchAlgorithm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/search/SearchAlgorithm<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;->mSearchAlgorithmProxy:Lcom/android/launcher3/search/SearchAlgorithm;

    return-void
.end method
