.class public final Lcom/oplus/quickstep/rapidreaction/OnePuttData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final option:Landroid/os/Bundle;

.field private final orientation:I

.field private final rect:Landroid/graphics/Rect;

.field private final taskId:I

.field private final type:I


# direct methods
.method public constructor <init>(IIILandroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "rect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    iput p3, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    iput-object p4, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/rapidreaction/OnePuttData;IIILandroid/graphics/Rect;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/quickstep/rapidreaction/OnePuttData;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    :cond_c
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->copy(IIILandroid/graphics/Rect;Landroid/os/Bundle;)Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    return p0
.end method

.method public final component4()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final component5()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    return-object p0
.end method

.method public final copy(IIILandroid/graphics/Rect;Landroid/os/Bundle;)Lcom/oplus/quickstep/rapidreaction/OnePuttData;
    .registers 12

    const-string p0, "rect"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "option"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;-><init>(IIILandroid/graphics/Rect;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    iget v3, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    iget v3, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    iget v3, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getOption()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getOrientation()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    return p0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "OnePuttData(taskId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->option:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
