.class public final Lq0/m$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lq0/m$b<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lg1/f;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lq0/m$b;->d:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;II)Lq0/m$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lq0/m$b<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lq0/m$b;->d:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/m$b;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1d

    if-nez v1, :cond_14

    new-instance v1, Lq0/m$b;

    invoke-direct {v1}, Lq0/m$b;-><init>()V

    :cond_14
    iput-object p0, v1, Lq0/m$b;->c:Ljava/lang/Object;

    iput p1, v1, Lq0/m$b;->b:I

    iput p2, v1, Lq0/m$b;->a:I

    return-object v1

    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    throw p0

    :catchall_1d
    move-exception p0

    goto :goto_1b
.end method


# virtual methods
.method public b()V
    .registers 3

    sget-object v0, Lq0/m$b;->d:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    throw p0

    :catchall_d
    move-exception p0

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lq0/m$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    check-cast p1, Lq0/m$b;

    iget v0, p0, Lq0/m$b;->b:I

    iget v2, p1, Lq0/m$b;->b:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lq0/m$b;->a:I

    iget v2, p1, Lq0/m$b;->a:I

    if-ne v0, v2, :cond_1e

    iget-object p0, p0, Lq0/m$b;->c:Ljava/lang/Object;

    iget-object p1, p1, Lq0/m$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lq0/m$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lq0/m$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lq0/m$b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
