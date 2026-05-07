.class public abstract Lcom/android/launcher3/allapps/branch/AbsBranchResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/AbsBranchResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/AbsBranchResponse$Companion;

.field public static final TYPE_DATA_BRANCH_AUTO_SUGGEST:I = 0x3

.field public static final TYPE_DATA_BRANCH_HINTS:I = 0x2

.field public static final TYPE_DATA_BRANCH_LOCAL_APP:I = 0x5

.field public static final TYPE_DATA_BRANCH_REMOTE_APP:I = 0x4

.field public static final TYPE_DATA_BRANCH_SUGGESTED_APP:I = 0x6

.field public static final TYPE_DATA_BRANCH_SUGGESTED_LINK:I = 0x1


# instance fields
.field private mAppList:Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/AbsBranchResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->Companion:Lcom/android/launcher3/allapps/branch/AbsBranchResponse$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;-><init>(Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->mAppList:Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;-><init>(Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;)V

    return-void
.end method


# virtual methods
.method public abstract appStoreEmpty(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract appStoreSearch(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract cancelQuery()V
.end method

.method public final getMAppList()Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->mAppList:Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    return-object p0
.end method

.method public abstract hints(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract searchAutoSuggests(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalApps(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract searchLocalEmpty(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final setMAppList(Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/AbsBranchResponse;->mAppList:Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;

    return-void
.end method

.method public abstract suggestedApps(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract suggestedLinks(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
