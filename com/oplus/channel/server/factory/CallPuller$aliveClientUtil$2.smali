.class final Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/factory/CallPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/channel/server/utils/AliveClientUtil;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;

    invoke-direct {v0}, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;->INSTANCE:Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/channel/server/utils/AliveClientUtil;
    .registers 1

    new-instance p0, Lcom/oplus/channel/server/utils/AliveClientUtil;

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AliveClientUtil;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;->invoke()Lcom/oplus/channel/server/utils/AliveClientUtil;

    move-result-object p0

    return-object p0
.end method
