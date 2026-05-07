.class public final Lcom/android/launcher3/allapps/branch/games/RecommendInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source ""


# instance fields
.field private final appIcon:I

.field private final gameTitle:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "gameTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/allapps/branch/games/RecommendInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/allapps/branch/games/RecommendInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->copy(ILjava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/allapps/branch/games/RecommendInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/allapps/branch/games/RecommendInfo;
    .registers 4

    const-string p0, "gameTitle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "url"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    iget v3, p1, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getAppIcon()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    return p0
.end method

.method public final getGameTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->appIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->gameTitle:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/games/RecommendInfo;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
