.class public final Lcom/oplus/channel/server/provider/IServerProvider$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/provider/IServerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_NOT_IDLE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    invoke-direct {v0}, Lcom/oplus/channel/server/provider/IServerProvider$Companion;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;->$$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
