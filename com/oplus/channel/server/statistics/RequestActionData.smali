.class public final Lcom/oplus/channel/server/statistics/RequestActionData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final action:Ljava/lang/String;

.field private clientPuller:Ljava/lang/String;

.field private final requestData:Ljava/lang/String;

.field private requestState:I

.field private runnable:Ljava/lang/Runnable;

.field private final widgetCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    const-string v0, "widgetCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPuller"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    iput-object p5, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x1

    const-string v1, ""

    if-eqz v0, :cond_8

    move-object v3, v1

    goto :goto_9

    :cond_8
    move-object v3, p1

    :goto_9
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_f

    move-object v4, v1

    goto :goto_10

    :cond_f
    move-object v4, p2

    :goto_10
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_17

    const/4 v0, -0x1

    move v6, v0

    goto :goto_18

    :cond_17
    move v6, p4

    :goto_18
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1e

    move-object v7, v1

    goto :goto_1f

    :cond_1e
    move-object v7, p5

    :goto_1f
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_27

    :cond_26
    move-object v8, p6

    :goto_27
    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/oplus/channel/server/statistics/RequestActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/channel/server/statistics/RequestActionData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/oplus/channel/server/statistics/RequestActionData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 14

    const-string p0, "widgetCode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "requestData"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientPuller"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/channel/server/statistics/RequestActionData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/channel/server/statistics/RequestActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/channel/server/statistics/RequestActionData;

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    iget v3, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final getClientPuller()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestState()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    return p0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getWidgetCode()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    if-nez p0, :cond_28

    const/4 p0, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_2c
    add-int/2addr v0, p0

    return v0
.end method

.method public final setClientPuller(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    return-void
.end method

.method public final setRequestState(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    return-void
.end method

.method public final setRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RequestActionData(widgetCode="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->widgetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->requestState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientPuller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->clientPuller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", runnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/statistics/RequestActionData;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
