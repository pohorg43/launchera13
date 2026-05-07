.class public final Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final data:Ljava/lang/String;

.field private final masterid:I

.field private final size:I

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    iput p4, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 5

    const-string/jumbo p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    iget p1, p1, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    if-eq p0, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final getMasterid()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    return p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    return p0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ThemeCardInfo(uri="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", masterid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->masterid:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
