.class public interface abstract Lcom/oplus/channel/server/provider/IServerProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/provider/IServerProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_NOT_IDLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;->$$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    sput-object v0, Lcom/oplus/channel/server/provider/IServerProvider;->Companion:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    return-void
.end method


# virtual methods
.method public abstract getCommandList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdleState()I
.end method

.method public abstract pullCommand(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runCallback(Ljava/lang/String;Ljava/lang/String;[B)V
.end method
