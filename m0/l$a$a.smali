.class public Lm0/l$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh1/a$b<",
        "Lm0/i<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm0/l$a;


# direct methods
.method public constructor <init>(Lm0/l$a;)V
    .registers 2

    iput-object p1, p0, Lm0/l$a$a;->a:Lm0/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lm0/i;

    iget-object p0, p0, Lm0/l$a$a;->a:Lm0/l$a;

    iget-object v1, p0, Lm0/l$a;->a:Lm0/i$d;

    iget-object p0, p0, Lm0/l$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, p0}, Lm0/i;-><init>(Lm0/i$d;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
