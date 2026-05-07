.class public final Ls3/c$b;
.super Lv3/l$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/c;->d(Ls3/v;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ls3/c;


# direct methods
.method public constructor <init>(Lv3/l;Ls3/c;)V
    .registers 3

    iput-object p2, p0, Ls3/c$b;->d:Ls3/c;

    invoke-direct {p0, p1}, Lv3/l$a;-><init>(Lv3/l;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lv3/l;

    iget-object p0, p0, Ls3/c$b;->d:Ls3/c;

    invoke-virtual {p0}, Ls3/c;->j()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    sget-object p0, Lv3/k;->a:Ljava/lang/Object;

    :goto_e
    return-object p0
.end method
