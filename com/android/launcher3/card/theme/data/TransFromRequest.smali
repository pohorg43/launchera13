.class public final Lcom/android/launcher3/card/theme/data/TransFromRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final replaceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final requestId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "replaceActions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/TransFromRequest;ILjava/util/List;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/TransFromRequest;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->copy(ILjava/util/List;)Lcom/android/launcher3/card/theme/data/TransFromRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ILjava/util/List;)Lcom/android/launcher3/card/theme/data/TransFromRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;)",
            "Lcom/android/launcher3/card/theme/data/TransFromRequest;"
        }
    .end annotation

    const-string/jumbo p0, "replaceActions"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getReplaceActions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    return-object p0
.end method

.method public final getRequestId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TransFromRequest(requestId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", replaceActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TransFromRequest;->replaceActions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
