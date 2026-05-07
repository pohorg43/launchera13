.class public final synthetic Lr3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/s0;


# instance fields
.field public final synthetic a:Lr3/b;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lr3/b;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a;->a:Lr3/b;

    iput-object p2, p0, Lr3/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    iget-object v0, p0, Lr3/a;->a:Lr3/b;

    iget-object p0, p0, Lr3/a;->b:Ljava/lang/Runnable;

    iget-object v0, v0, Lr3/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
