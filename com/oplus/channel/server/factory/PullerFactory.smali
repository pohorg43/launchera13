.class public final Lcom/oplus/channel/server/factory/PullerFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/factory/PullerFactory;

.field private static final TAG:Ljava/lang/String; = "PullerFactory"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/factory/PullerFactory;

    invoke-direct {v0}, Lcom/oplus/channel/server/factory/PullerFactory;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/factory/PullerFactory;->INSTANCE:Lcom/oplus/channel/server/factory/PullerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPuller(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)Lcom/oplus/channel/server/IClientPuller;
    .registers 7

    const-string p0, "serverAuthority"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientConfig"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "createPuller serverAuthority = ["

    const-string v1, "], clientName = ["

    const-string v2, "], clientConfig = ["

    invoke-static {v0, p1, v1, p2, v2}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullerFactory"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_45

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3f

    new-instance p0, Lcom/oplus/channel/server/factory/DefaultPuller;

    invoke-direct {p0, p1, p2}, Lcom/oplus/channel/server/factory/DefaultPuller;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_3f
    new-instance p0, Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/channel/server/factory/AlwaysPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V

    goto :goto_4a

    :cond_45
    new-instance p0, Lcom/oplus/channel/server/factory/CallPuller;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/channel/server/factory/CallPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V

    :goto_4a
    return-object p0
.end method
