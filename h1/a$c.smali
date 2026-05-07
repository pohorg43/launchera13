.class public final Lh1/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lh1/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/a$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lh1/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/a$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;Lh1/a$b;Lh1/a$e;)V
    .registers 4
    .param p1  # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lh1/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lh1/a$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lh1/a$b<",
            "TT;>;",
            "Lh1/a$e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/a$c;->c:Landroidx/core/util/Pools$Pool;

    iput-object p2, p0, Lh1/a$c;->a:Lh1/a$b;

    iput-object p3, p0, Lh1/a$c;->b:Lh1/a$e;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lh1/a$c;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object p0, p0, Lh1/a$c;->a:Lh1/a$b;

    invoke-interface {p0}, Lh1/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 p0, 0x2

    const-string v1, "FactoryPools"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "Created new "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    instance-of p0, v0, Lh1/a$d;

    if-eqz p0, :cond_3b

    move-object p0, v0

    check-cast p0, Lh1/a$d;

    invoke-interface {p0}, Lh1/a$d;->a()Lh1/d;

    move-result-object p0

    const/4 v1, 0x0

    check-cast p0, Lh1/d$b;

    iput-boolean v1, p0, Lh1/d$b;->a:Z

    :cond_3b
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lh1/a$d;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lh1/a$d;

    invoke-interface {v0}, Lh1/a$d;->a()Lh1/d;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lh1/d$b;

    iput-boolean v1, v0, Lh1/d$b;->a:Z

    :cond_10
    iget-object v0, p0, Lh1/a$c;->b:Lh1/a$e;

    invoke-interface {v0, p1}, Lh1/a$e;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lh1/a$c;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
