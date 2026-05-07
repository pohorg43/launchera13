.class public final synthetic Lx1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/oplus/epona/ipc/remote/Dispatcher;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a;->a:Lcom/oplus/epona/ipc/remote/Dispatcher;

    iput-object p2, p0, Lx1/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lx1/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lx1/a;->a:Lcom/oplus/epona/ipc/remote/Dispatcher;

    iget-object v1, p0, Lx1/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lx1/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/epona/ipc/remote/Dispatcher;->a(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
