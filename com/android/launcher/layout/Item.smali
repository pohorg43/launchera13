.class final Lcom/android/launcher/layout/Item;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final container:I

.field private final id:I

.field private final movable$delegate:Ly2/e;

.field private final originalPosition:Landroid/graphics/Point;

.field private final screenId:I

.field private final span:Landroid/graphics/Point;

.field private final success$delegate:Ly2/e;

.field private final tagName:Ljava/lang/String;

.field private final verifiedPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 9

    const-string/jumbo v0, "tagName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalPosition"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifiedPosition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "span"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/layout/Item;->id:I

    iput p2, p0, Lcom/android/launcher/layout/Item;->container:I

    iput p3, p0, Lcom/android/launcher/layout/Item;->screenId:I

    iput-object p4, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    iput-object p6, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    iput-object p7, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    new-instance p1, Lcom/android/launcher/layout/Item$success$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/Item$success$2;-><init>(Lcom/android/launcher/layout/Item;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/Item;->success$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher/layout/Item$movable$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/Item$movable$2;-><init>(Lcom/android/launcher/layout/Item;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/Item;->movable$delegate:Ly2/e;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p9, p8, 0x1

    const/4 v0, -0x1

    if-eqz p9, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p9, p8, 0x2

    const/4 v1, 0x0

    if-eqz p9, :cond_c

    move p2, v1

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_11

    move p3, v0

    :cond_11
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_17

    const-string p4, ""

    :cond_17
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_20

    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_20
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_29

    new-instance p6, Landroid/graphics/Point;

    invoke-direct {p6, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    :cond_29
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_33

    new-instance p7, Landroid/graphics/Point;

    const/4 p8, 0x1

    invoke-direct {p7, p8, p8}, Landroid/graphics/Point;-><init>(II)V

    :cond_33
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/layout/Item;IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ILjava/lang/Object;)Lcom/android/launcher/layout/Item;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/android/launcher/layout/Item;->id:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/android/launcher/layout/Item;->container:I

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/android/launcher/layout/Item;->screenId:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    :cond_28
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-object p7, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    :cond_2f
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher/layout/Item;->copy(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/android/launcher/layout/Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->id:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->container:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->screenId:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final component6()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final component7()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    return-object p0
.end method

.method public final copy(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/android/launcher/layout/Item;
    .registers 16

    const-string/jumbo p0, "tagName"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "originalPosition"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "verifiedPosition"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "span"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher/layout/Item;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/layout/Item;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/layout/Item;

    iget v1, p0, Lcom/android/launcher/layout/Item;->id:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->id:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->container:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    iget v3, p1, Lcom/android/launcher/layout/Item;->screenId:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    iget-object v3, p1, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    return v2

    :cond_4d
    return v0
.end method

.method public final getContainer()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->container:I

    return p0
.end method

.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->id:I

    return p0
.end method

.method public final getMovable()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->movable$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getOriginalPosition()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/layout/Item;->screenId:I

    return p0
.end method

.method public final getSpan()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getSuccess()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->success$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTagName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifiedPosition()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher/layout/Item;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Point;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Point;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Item(id="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/layout/Item;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/layout/Item;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/layout/Item;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->originalPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verifiedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/layout/Item;->verifiedPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/layout/Item;->span:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
