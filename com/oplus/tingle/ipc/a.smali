.class public final synthetic Lcom/oplus/tingle/ipc/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic a:Lcom/oplus/tingle/ipc/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/tingle/ipc/a;

    invoke-direct {v0}, Lcom/oplus/tingle/ipc/a;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/a;->a:Lcom/oplus/tingle/ipc/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->a()V

    return-void
.end method
