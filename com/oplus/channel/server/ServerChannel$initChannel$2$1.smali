.class final Lcom/oplus/channel/server/ServerChannel$initChannel$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/ServerChannel;->initChannel(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/channel/server/factory/SystemApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/channel/server/IUserContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/IUserContext;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/ServerChannel$initChannel$2$1;->$userContext:Lcom/oplus/channel/server/IUserContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ServerChannel$initChannel$2$1;->$userContext:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/ServerChannel$initChannel$2$1;->invoke()Lcom/oplus/channel/server/IUserContext;

    move-result-object p0

    return-object p0
.end method
