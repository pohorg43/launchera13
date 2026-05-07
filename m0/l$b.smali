.class public Lm0/l$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lp0/a;

.field public final b:Lp0/a;

.field public final c:Lp0/a;

.field public final d:Lp0/a;

.field public final e:Lm0/n;

.field public final f:Lm0/q$a;

.field public final g:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lm0/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp0/a;Lp0/a;Lp0/a;Lp0/a;Lm0/n;Lm0/q$a;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/l$b$a;

    invoke-direct {v0, p0}, Lm0/l$b$a;-><init>(Lm0/l$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lh1/a;->a(ILh1/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lm0/l$b;->g:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lm0/l$b;->a:Lp0/a;

    iput-object p2, p0, Lm0/l$b;->b:Lp0/a;

    iput-object p3, p0, Lm0/l$b;->c:Lp0/a;

    iput-object p4, p0, Lm0/l$b;->d:Lp0/a;

    iput-object p5, p0, Lm0/l$b;->e:Lm0/n;

    iput-object p6, p0, Lm0/l$b;->f:Lm0/q$a;

    return-void
.end method
