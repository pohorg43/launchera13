.class public final Lq3/n1$c;
.super Lv3/l$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/n1;->A(Ljava/lang/Object;Lq3/s1;Lq3/m1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lq3/n1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv3/l;Lq3/n1;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lq3/n1$c;->d:Lq3/n1;

    iput-object p3, p0, Lq3/n1$c;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lv3/l$a;-><init>(Lv3/l;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lv3/l;

    iget-object p1, p0, Lq3/n1$c;->d:Lq3/n1;

    invoke-virtual {p1}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lq3/n1$c;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_13

    const/4 p0, 0x0

    goto :goto_15

    :cond_13
    sget-object p0, Lv3/k;->a:Ljava/lang/Object;

    :goto_15
    return-object p0
.end method
