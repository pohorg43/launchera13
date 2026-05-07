.class public final Lcom/oplus/card/server/provider/CardServerProvider;
.super Lcom/oplus/channel/server/provider/ChannelServerProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/server/provider/CardServerProvider$Companion;
    }
.end annotation


# static fields
.field public static final CALL_RESPONSE:Ljava/lang/String; = "response"

.field public static final Companion:Lcom/oplus/card/server/provider/CardServerProvider$Companion;

.field public static final PERMISSION_DENY:Ljava/lang/String; = "permission_deny"

.field public static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.oplus.card.server.launcher.provider"

.field public static final PROVIDER_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.ASSISTANT"

.field public static final TAG:Ljava/lang/String; = "CardServerProvider"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/server/provider/CardServerProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/server/provider/CardServerProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/server/provider/CardServerProvider;->Companion:Lcom/oplus/card/server/provider/CardServerProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/provider/ChannelServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    goto :goto_16

    :cond_d
    const-string v2, "com.oplus.permission.safe.ASSISTANT"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    :goto_16
    if-nez v1, :cond_34

    sget-object p1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CardServerProvider permission deny: "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "response"

    const-string p2, "permission_deny"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_34
    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardServerProvider call: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/oplus/channel/server/provider/ChannelServerProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oplus.card.server.launcher.provider"

    return-object p0
.end method
