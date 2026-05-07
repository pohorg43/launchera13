.class public Lcom/oplus/statistics/record/ContentProviderRecorder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/record/IRecorder;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderRecorder"

.field private static final URI_STRING:Ljava/lang/String; = "content://com.oplus.statistics.provider/track_event"

.field private static final URI_SUPPORT:Ljava/lang/String; = "content://com.oplus.statistics.provider/support"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->lambda$isSupport$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->lambda$insert$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->lambda$insert$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/statistics/record/ContentProviderRecorder;->lambda$insert$3(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getContentValues(Lcom/oplus/statistics/data/TrackEvent;)Landroid/content/ContentValues;
    .registers 5

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/statistics/data/TrackEvent;->getTrackInfo()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_31

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_31
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    :cond_3b
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_45

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    :cond_45
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_11

    :cond_4f
    return-object p0
.end method

.method private static insert(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "ContentProviderRecorder"

    if-nez p0, :cond_13

    sget-object p0, Landroidx/room/f;->m:Landroidx/room/f;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return v0

    :cond_13
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_27

    sget-object p0, Lcom/android/common/util/p;->k:Lcom/android/common/util/p;

    invoke-static {v1, p0}, Lcom/oplus/statistics/util/LogUtil;->d(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_25
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2f

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_24
    return v0

    :catch_25
    move-exception p0

    goto :goto_31

    :cond_27
    :try_start_27
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_25
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_40

    :goto_31
    :try_start_31
    new-instance p1, Lcom/oplus/statistics/agent/a;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/oplus/statistics/agent/a;-><init>(Ljava/lang/Exception;I)V

    invoke-static {v1, p1}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2f

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_3f
    return v0

    :goto_40
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_45
    throw p0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .registers 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.oplus.statistics.provider/support"

    invoke-static {p0, v1, v0}, Lcom/oplus/statistics/record/ContentProviderRecorder;->insert(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-nez p0, :cond_19

    sget-object v0, Landroidx/room/b;->m:Landroidx/room/b;

    const-string v1, "ContentProviderRecorder"

    invoke-static {v1, v0}, Lcom/oplus/statistics/util/LogUtil;->w(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    :cond_19
    return p0
.end method

.method private static synthetic lambda$insert$1()Ljava/lang/String;
    .registers 1

    const-string v0, "get resolver failed."

    return-object v0
.end method

.method private static synthetic lambda$insert$2()Ljava/lang/String;
    .registers 1

    const-string v0, "get provider client failed."

    return-object v0
.end method

.method private static synthetic lambda$insert$3(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSupport$0()Ljava/lang/String;
    .registers 1

    const-string v0, "not support content provider"

    return-object v0
.end method


# virtual methods
.method public addTrackEvent(Landroid/content/Context;Lcom/oplus/statistics/data/TrackEvent;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/statistics/data/TrackEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/oplus/statistics/record/ContentProviderRecorder;->getContentValues(Lcom/oplus/statistics/data/TrackEvent;)Landroid/content/ContentValues;

    move-result-object p0

    const-string p2, "content://com.oplus.statistics.provider/track_event"

    invoke-static {p1, p2, p0}, Lcom/oplus/statistics/record/ContentProviderRecorder;->insert(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method
