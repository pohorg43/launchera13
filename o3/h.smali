.class public final Lo3/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .registers 2

    iput-object p1, p0, Lo3/h;->a:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lo3/h;->a:Lkotlin/jvm/functions/Function2;

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo3/f;

    invoke-direct {v0}, Lo3/f;-><init>()V

    invoke-static {p0, v0, v0}, Lq/d;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    iput-object p0, v0, Lo3/f;->d:Lb3/d;

    return-object v0
.end method
