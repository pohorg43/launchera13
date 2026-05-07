.class public final Lq3/x1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lq3/b0;

.field public final b:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/b0;Lq3/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b0;",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/x1;->a:Lq3/b0;

    iput-object p2, p0, Lq3/x1;->b:Lq3/k;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lq3/x1;->b:Lq3/k;

    iget-object p0, p0, Lq3/x1;->a:Lq3/b0;

    sget-object v1, Ly2/p;->a:Ly2/p;

    invoke-interface {v0, p0, v1}, Lq3/k;->r(Lq3/b0;Ljava/lang/Object;)V

    return-void
.end method
