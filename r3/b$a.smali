.class public final Lr3/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr3/b;->c(JLq3/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/k;

.field public final synthetic b:Lr3/b;


# direct methods
.method public constructor <init>(Lq3/k;Lr3/b;)V
    .registers 3

    iput-object p1, p0, Lr3/b$a;->a:Lq3/k;

    iput-object p2, p0, Lr3/b$a;->b:Lr3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lr3/b$a;->a:Lq3/k;

    iget-object p0, p0, Lr3/b$a;->b:Lr3/b;

    sget-object v1, Ly2/p;->a:Ly2/p;

    invoke-interface {v0, p0, v1}, Lq3/k;->r(Lq3/b0;Ljava/lang/Object;)V

    return-void
.end method
