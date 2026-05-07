.class public final Lcom/oplus/channel/server/data/Command;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/data/Command$Companion;,
        Lcom/oplus/channel/server/data/Command$Method;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/data/Command$Companion;

.field public static final DATA_ITEM_END:I = 0x64

.field public static final DATA_TYPE_BYTE_ARRAY:I = 0x3

.field public static final DATA_TYPE_INT:I = 0x1

.field public static final DATA_TYPE_STRING:I = 0x2

.field public static final DATA_VERSION_OF_TYPE:I = 0x1


# instance fields
.field private final businessTag:Ljava/lang/Object;

.field private final callbackId:Ljava/lang/String;

.field private final methodType:I

.field private final params:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/data/Command$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/data/Command$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/data/Command;->Companion:Lcom/oplus/channel/server/data/Command$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLjava/lang/Object;)V
    .registers 6

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    iput-object p2, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/data/Command;->params:[B

    iput-object p4, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;[BLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_c

    move-object p3, v0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    move-object p4, v0

    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBusinessTag()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethodType()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    return p0
.end method

.method public final getParams()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->params:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Command(methodType="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callbackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", businessTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
