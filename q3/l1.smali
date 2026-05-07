.class public Lq3/l1;
.super Lq3/n1;
.source ""

# interfaces
.implements Lq3/s;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lq3/i1;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lq3/n1;-><init>(Z)V

    invoke-virtual {p0, p1}, Lq3/n1;->S(Lq3/i1;)V

    invoke-virtual {p0}, Lq3/n1;->O()Lq3/p;

    move-result-object p1

    instance-of v1, p1, Lq3/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast p1, Lq3/q;

    goto :goto_14

    :cond_13
    move-object p1, v2

    :goto_14
    if-nez p1, :cond_18

    move-object p1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lq3/m1;->t()Lq3/n1;

    move-result-object p1

    :goto_1c
    const/4 v1, 0x0

    if-nez p1, :cond_21

    :goto_1f
    move v0, v1

    goto :goto_3f

    :cond_21
    invoke-virtual {p1}, Lq3/n1;->L()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_3f

    :cond_28
    invoke-virtual {p1}, Lq3/n1;->O()Lq3/p;

    move-result-object p1

    instance-of v3, p1, Lq3/q;

    if-eqz v3, :cond_33

    check-cast p1, Lq3/q;

    goto :goto_34

    :cond_33
    move-object p1, v2

    :goto_34
    if-nez p1, :cond_38

    move-object p1, v2

    goto :goto_3c

    :cond_38
    invoke-virtual {p1}, Lq3/m1;->t()Lq3/n1;

    move-result-object p1

    :goto_3c
    if-nez p1, :cond_21

    goto :goto_1f

    :goto_3f
    iput-boolean v0, p0, Lq3/l1;->b:Z

    return-void
.end method


# virtual methods
.method public L()Z
    .registers 1

    iget-boolean p0, p0, Lq3/l1;->b:Z

    return p0
.end method

.method public M()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
