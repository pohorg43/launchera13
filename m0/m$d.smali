.class public final Lm0/m$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lc1/f;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lc1/f;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/m$d;->a:Lc1/f;

    iput-object p2, p0, Lm0/m$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lm0/m$d;

    if-eqz v0, :cond_f

    check-cast p1, Lm0/m$d;

    iget-object p0, p0, Lm0/m$d;->a:Lc1/f;

    iget-object p1, p1, Lm0/m$d;->a:Lc1/f;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lm0/m$d;->a:Lc1/f;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
