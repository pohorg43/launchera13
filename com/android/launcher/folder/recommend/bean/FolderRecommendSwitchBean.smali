.class public final Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;
    }
.end annotation


# instance fields
.field private folderRecommendEnable:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "folderRecommendEnable"
    .end annotation
.end field

.field private final folderStatus:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "folderStatus"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "folderStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;ILjava/util/ArrayList;ILjava/lang/Object;)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->copy(ILjava/util/ArrayList;)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    return p0
.end method

.method public final component2()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(ILjava/util/ArrayList;)Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;)",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;"
        }
    .end annotation

    const-string p0, "folderStatus"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;-><init>(ILjava/util/ArrayList;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;

    iget v1, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    iget v3, p1, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getFolderRecommendEnable()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    return p0
.end method

.method public final getFolderStatus()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean$RecommendSwitchBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderStatus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setFolderRecommendEnable(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/recommend/bean/FolderRecommendSwitchBean;->folderRecommendEnable:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
