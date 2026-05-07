.class public Lcom/oplus/tingle/ipc/cursor/ProviderCursor;
.super Landroid/database/MatrixCursor;
.source ""


# static fields
.field public static final BINDER_KEY:Ljava/lang/String; = "IBinder"

.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ProviderCursor"

.field private static volatile mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    const-string p0, "IBinder"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static generateCursor(Landroid/os/IBinder;)Lcom/oplus/tingle/ipc/cursor/ProviderCursor;
    .registers 4

    sget-object v0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    if-nez v0, :cond_19

    const-class v0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    if-nez v1, :cond_14

    new-instance v1, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    sget-object v2, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    sput-object v1, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    sget-object p0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->mCursor:Lcom/oplus/tingle/ipc/cursor/ProviderCursor;

    return-object p0
.end method

.method public static stripBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v0, "IBinder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "ProviderCursor"

    const-string v2, "Get cursor bundle null."

    invoke-static {v1, v2, p0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/tingle/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-object p0
.end method
