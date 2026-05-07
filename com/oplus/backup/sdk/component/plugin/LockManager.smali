.class public Lcom/oplus/backup/sdk/component/plugin/LockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockManager"

.field private static sInstance:Lcom/oplus/backup/sdk/component/plugin/LockManager;


# instance fields
.field private volatile mLockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/oplus/backup/sdk/component/plugin/LockManager;
    .registers 2

    sget-object v0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->sInstance:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/backup/sdk/component/plugin/LockManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/backup/sdk/component/plugin/LockManager;->sInstance:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/backup/sdk/component/plugin/LockManager;

    invoke-direct {v1}, Lcom/oplus/backup/sdk/component/plugin/LockManager;-><init>()V

    sput-object v1, Lcom/oplus/backup/sdk/component/plugin/LockManager;->sInstance:Lcom/oplus/backup/sdk/component/plugin/LockManager;

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
    sget-object v0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->sInstance:Lcom/oplus/backup/sdk/component/plugin/LockManager;

    return-object v0
.end method


# virtual methods
.method public varargs applyLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;
    .registers 7

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1d
    iget-object v1, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "LockManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyLock the same lock is used, waitting for release. Lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_71

    :try_start_41
    iget-object v1, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_48} :catch_49
    .catchall {:try_start_41 .. :try_end_48} :catchall_71

    goto :goto_1d

    :catch_49
    move-exception v1

    :try_start_4a
    const-string v2, "LockManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyLock, e ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_65
    new-instance v1, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    invoke-direct {v1, p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_71

    throw p0
.end method

.method public varargs getLock([Ljava/lang/String;)Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;
    .registers 7

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public notifyLock(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)V
    .registers 2

    if-eqz p1, :cond_f

    monitor-enter p1

    const/4 p0, 0x1

    :try_start_4
    invoke-virtual {p1, p0}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->setOK(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public waitResult(Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    monitor-enter p1

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->isOK()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_5e

    if-nez v0, :cond_2d

    const-wide/16 v0, 0x64

    :try_start_d
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_5e

    goto :goto_5

    :catch_11
    move-exception v0

    :try_start_12
    const-string v1, "LockManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitResult, e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_5e

    invoke-virtual {p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->getResult()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_35
    iget-object v2, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oplus/backup/sdk/component/plugin/LockManager$BooleanLock;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const-string p0, "LockManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitResult over, release lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v0

    :catchall_5b
    move-exception p0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_35 .. :try_end_5d} :catchall_5b

    throw p0

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method
