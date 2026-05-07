.class public abstract Lw3/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:Lw3/i;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lw3/l;->f:Lw3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lw3/h;->a:J

    iput-object v0, p0, Lw3/h;->b:Lw3/i;

    return-void
.end method

.method public constructor <init>(JLw3/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lw3/h;->a:J

    iput-object p3, p0, Lw3/h;->b:Lw3/i;

    return-void
.end method
