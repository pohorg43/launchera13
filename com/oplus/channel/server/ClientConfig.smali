.class public final Lcom/oplus/channel/server/ClientConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ClientConfig$Companion;
    }
.end annotation


# static fields
.field public static final ALIVE_TYPE_ALWAYS:I = 0x2

.field public static final ALIVE_TYPE_ALWAYS_IMPORTANT:I = 0x3

.field public static final ALIVE_TYPE_CALL:I = 0x1

.field public static final ALIVE_TYPE_DEFAULT:I

.field public static final Companion:Lcom/oplus/channel/server/ClientConfig$Companion;


# instance fields
.field private final aliveType:I

.field private final clientPackage:Ljava/lang/String;

.field private final isHost:Z

.field private final needKeepAlive:Z

.field private final needNotify:Z

.field private final providerAuthority:Ljava/lang/String;

.field private final serviceComponent:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/ClientConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/ClientConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/ClientConfig;->Companion:Lcom/oplus/channel/server/ClientConfig$Companion;

    return-void
.end method

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

    invoke-direct/range {v0 .. v9}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .registers 9

    const-string v0, "clientPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerAuthority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceComponent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    iput-boolean p5, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    iput-boolean p6, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    iput-boolean p7, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p9, p8, 0x1

    const-string v0, ""

    if-eqz p9, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_17

    move p4, v0

    :cond_17
    and-int/lit8 p9, p8, 0x10

    const/4 v1, 0x1

    if-eqz p9, :cond_1d

    move p5, v1

    :cond_1d
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_22

    move p6, v0

    :cond_22
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_27

    move p7, v1

    :cond_27
    invoke-direct/range {p0 .. p7}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public final getAliveType()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    return p0
.end method

.method public final getClientPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedKeepAlive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    return p0
.end method

.method public final getNeedNotify()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    return p0
.end method

.method public final getProviderAuthority()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceComponent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    return-object p0
.end method

.method public final isHost()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ClientConfig(clientPackage=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', providerAuthority=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serviceComponent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', aliveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
