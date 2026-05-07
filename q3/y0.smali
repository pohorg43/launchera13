.class public final Lq3/y0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;

.field public static final b:Lv3/y;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/y0;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/y0;->b:Lv3/y;

    return-void
.end method

.method public static final a(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_7

    goto :goto_1a

    :cond_7
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1a

    :cond_16
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_1a
    return-wide v0
.end method
