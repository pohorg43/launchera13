.class public final Lh0/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lh0/a$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lh0/a;


# direct methods
.method public constructor <init>(Lh0/a;Lh0/a$d;Lh0/a$a;)V
    .registers 4

    iput-object p1, p0, Lh0/a$c;->d:Lh0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh0/a$c;->a:Lh0/a$d;

    iget-boolean p2, p2, Lh0/a$d;->e:Z

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    iget p1, p1, Lh0/a;->g:I

    new-array p1, p1, [Z

    :goto_11
    iput-object p1, p0, Lh0/a$c;->b:[Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/a$c;->d:Lh0/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lh0/a;->a(Lh0/a;Lh0/a$c;Z)V

    return-void
.end method

.method public b(I)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/a$c;->d:Lh0/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh0/a$c;->a:Lh0/a$d;

    iget-object v2, v1, Lh0/a$d;->f:Lh0/a$c;

    if-ne v2, p0, :cond_29

    iget-boolean v2, v1, Lh0/a$d;->e:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lh0/a$c;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    :cond_12
    iget-object v1, v1, Lh0/a$d;->d:[Ljava/io/File;

    aget-object p1, v1, p1

    iget-object v1, p0, Lh0/a$c;->d:Lh0/a;

    iget-object v1, v1, Lh0/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object p0, p0, Lh0/a$c;->d:Lh0/a;

    iget-object p0, p0, Lh0/a;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_27
    monitor-exit v0

    return-object p1

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method
