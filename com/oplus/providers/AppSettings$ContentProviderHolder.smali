.class final Lcom/oplus/providers/AppSettings$ContentProviderHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/providers/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentProviderHolder"
.end annotation


# static fields
.field private static final USER_CURRENT:I = -0x64


# instance fields
.field private final mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentProviderClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getUriWithUserId(I)Landroid/net/Uri;
    .registers 5

    const/16 v0, -0x64

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "@"

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;
    .registers 7

    const/4 v0, 0x0

    const/16 v1, -0x64

    if-eq p2, v1, :cond_24

    if-ltz p2, :cond_8

    goto :goto_24

    :cond_8
    const-string p0, "AppSettings"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot support user id (below zero) : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " . Please use @link [ActivityManager.getCurrentUser] instead."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
    iget-object v2, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderClient;

    if-nez v2, :cond_74

    invoke-direct {p0, p2}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->getUriWithUserId(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_6b

    const-string p1, "AppSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviderForUser contentProvider == null,uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->getUriWithUserId(I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v0

    :cond_6b
    iget-object p0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    monitor-exit v1

    return-object v2

    :catchall_76
    move-exception p0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_27 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public reacquireProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;
    .registers 6

    iget-object v0, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->mContentProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    invoke-virtual {p0, p1, p2}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->getProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;

    move-result-object p0

    return-object p0

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method
