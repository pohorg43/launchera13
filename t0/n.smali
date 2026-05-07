.class public final Lt0/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Ljava/io/File;

.field public static volatile f:Lt0/n;


# instance fields
.field public final a:Z

.field public final b:I

.field public c:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public d:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt0/n;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt0/n;->d:Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_12

    goto :goto_39

    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_40

    goto :goto_39

    :sswitch_22
    const-string v2, "SM-N935"

    goto :goto_36

    :sswitch_25
    const-string v2, "SM-J720"

    goto :goto_36

    :sswitch_28
    const-string v2, "SM-G965"

    goto :goto_36

    :sswitch_2b
    const-string v2, "SM-G960"

    goto :goto_36

    :sswitch_2e
    const-string v2, "SM-G935"

    goto :goto_36

    :sswitch_31
    const-string v2, "SM-G930"

    goto :goto_36

    :sswitch_34
    const-string v2, "SM-A520"

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    iput-boolean v0, p0, Lt0/n;->a:Z

    const/16 v0, 0x4e20

    iput v0, p0, Lt0/n;->b:I

    return-void

    :sswitch_data_40
    .sparse-switch
        -0x535d271b -> :sswitch_34
        -0x535a5dbe -> :sswitch_31
        -0x535a5db9 -> :sswitch_2e
        -0x535a5d61 -> :sswitch_2b
        -0x535a5d5c -> :sswitch_28
        -0x53590842 -> :sswitch_25
        -0x53572f20 -> :sswitch_22
    .end sparse-switch
.end method

.method public static a()Lt0/n;
    .registers 2

    sget-object v0, Lt0/n;->f:Lt0/n;

    if-nez v0, :cond_17

    const-class v0, Lt0/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lt0/n;->f:Lt0/n;

    if-nez v1, :cond_12

    new-instance v1, Lt0/n;

    invoke-direct {v1}, Lt0/n;-><init>()V

    sput-object v1, Lt0/n;->f:Lt0/n;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lt0/n;->f:Lt0/n;

    return-object v0
.end method


# virtual methods
.method public b(IIZZ)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_60

    iget-boolean p3, p0, Lt0/n;->a:Z

    if-eqz p3, :cond_60

    if-eqz p4, :cond_a

    goto :goto_60

    :cond_a
    const/4 p3, 0x1

    if-ltz p1, :cond_60

    if-ltz p2, :cond_60

    monitor-enter p0

    :try_start_10
    iget p1, p0, Lt0/n;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lt0/n;->c:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_56

    iput v0, p0, Lt0/n;->c:I

    sget-object p1, Lt0/n;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    iget p2, p0, Lt0/n;->b:I

    if-ge p1, p2, :cond_28

    move p2, p3

    goto :goto_29

    :cond_28
    move p2, v0

    :goto_29
    iput-boolean p2, p0, Lt0/n;->d:Z

    if-nez p2, :cond_56

    const-string p2, "Downsampler"

    const/4 p4, 0x5

    invoke-static {p2, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_56

    const-string p2, "Downsampler"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", limit "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lt0/n;->b:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-boolean p1, p0, Lt0/n;->d:Z
    :try_end_58
    .catchall {:try_start_10 .. :try_end_58} :catchall_5d

    monitor-exit p0

    if-eqz p1, :cond_60

    move v0, p3

    goto :goto_60

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_60
    :goto_60
    return v0
.end method
