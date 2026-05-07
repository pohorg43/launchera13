.class public Lo0/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/k$b;
    }
.end annotation


# instance fields
.field public final a:Lg1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/c<",
            "Lj0/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lo0/k$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg1/c;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lg1/c;-><init>(J)V

    iput-object v0, p0, Lo0/k;->a:Lg1/c;

    new-instance v0, Lo0/k$a;

    invoke-direct {v0, p0}, Lo0/k$a;-><init>(Lo0/k;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lh1/a;->a(ILh1/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lo0/k;->b:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public a(Lj0/c;)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lo0/k;->a:Lg1/c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lo0/k;->a:Lg1/c;

    invoke-virtual {v1, p1}, Lg1/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_69

    if-nez v1, :cond_5c

    iget-object v0, p0, Lo0/k;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lo0/k$b;

    :try_start_1b
    iget-object v1, v0, Lo0/k$b;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lj0/c;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Lo0/k$b;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v2, Lg1/f;->b:[C

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_55

    const/4 v3, 0x0

    :goto_2a
    :try_start_2a
    array-length v4, v1

    if-ge v3, v4, :cond_46

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v3, 0x2

    sget-object v6, Lg1/f;->a:[C

    ushr-int/lit8 v7, v4, 0x4

    aget-char v7, v6, v7

    aput-char v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_46
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_52

    iget-object v2, p0, Lo0/k;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_5c

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    iget-object p0, p0, Lo0/k;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1

    :cond_5c
    :goto_5c
    iget-object v2, p0, Lo0/k;->a:Lg1/c;

    monitor-enter v2

    :try_start_5f
    iget-object p0, p0, Lo0/k;->a:Lg1/c;

    invoke-virtual {p0, p1, v1}, Lg1/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_66
    move-exception p0

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_66

    throw p0

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method
