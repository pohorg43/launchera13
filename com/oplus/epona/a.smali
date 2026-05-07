.class public final synthetic Lcom/oplus/epona/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/epona/a;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    iget-object v0, p0, Lcom/oplus/epona/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/epona/a;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/oplus/epona/Route;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
