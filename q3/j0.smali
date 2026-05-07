.class public final Lq3/j0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Z

.field public static final b:Lq3/m0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp/d;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lq3/j0;->a:Z

    if-nez v0, :cond_e

    sget-object v0, Lq3/i0;->g:Lq3/i0;

    goto :goto_1e

    :cond_e
    sget-object v0, Lq3/q0;->a:Lq3/b0;

    sget-object v0, Lv3/q;->a:Lq3/r1;

    invoke-virtual {v0}, Lq3/r1;->l()Lq3/r1;

    instance-of v1, v0, Lq3/m0;

    if-nez v1, :cond_1c

    sget-object v0, Lq3/i0;->g:Lq3/i0;

    goto :goto_1e

    :cond_1c
    check-cast v0, Lq3/m0;

    :goto_1e
    sput-object v0, Lq3/j0;->b:Lq3/m0;

    return-void
.end method
