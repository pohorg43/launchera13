.class public final Ls3/a$f;
.super Lv3/l$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/a;->o(Ls3/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ls3/a;


# direct methods
.method public constructor <init>(Lv3/l;Ls3/a;)V
    .registers 3

    iput-object p2, p0, Ls3/a$f;->d:Ls3/a;

    invoke-direct {p0, p1}, Lv3/l$a;-><init>(Lv3/l;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lv3/l;

    iget-object p0, p0, Ls3/a$f;->d:Ls3/a;

    invoke-virtual {p0}, Ls3/a;->q()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    sget-object p0, Lv3/k;->a:Ljava/lang/Object;

    :goto_e
    return-object p0
.end method
