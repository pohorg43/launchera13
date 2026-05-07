.class public final Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source ""


# instance fields
.field private entity:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;Ljava/lang/Object;ILjava/lang/Object;)Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->copy(Ljava/lang/Object;)Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;)Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;
    .registers 2

    new-instance p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getEntity()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_a
    return p0
.end method

.method public final setEntity(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;->entity:Ljava/lang/Object;

    return-void
.end method
