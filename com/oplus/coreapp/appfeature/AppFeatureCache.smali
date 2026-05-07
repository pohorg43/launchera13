.class Lcom/oplus/coreapp/appfeature/AppFeatureCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;,
        Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureCacheHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppFeatureCache"

.field private static final mAppFeatureCacheFirstList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field public static final mAppFeatureCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAppFeatureCacheSecondList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field public static mCachedEnabled:Z

.field public static mCachedModeDefault:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

.field public static mCachedModeFirst:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

.field public static mCachedModeSecond:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

.field private static final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheFirstList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheSecondList:Ljava/util/List;

    const-string v0, "content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app_feature"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedEnabled:Z

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->CACHE_AND_DB:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeDefault:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeFirst:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    sput-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeSecond:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearCursorInCache(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;)V"
        }
    .end annotation

    const-class p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    monitor-enter p0

    :try_start_3
    const-string v0, "AppFeatureCache"

    const-string v1, "clearCursorInCache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public static getCachedMode(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;
    .registers 2

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$1;->$SwitchMap$com$oplus$coreapp$appfeature$AppFeatureProviderUtils$FeatureID:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_14

    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeSecond:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getListFromSlot simSlot is not support"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeFirst:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-object p0

    :cond_1f
    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeDefault:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    return-object p0
.end method

.method private getFeatureCacheData(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getMatrixCursor()Landroid/database/MatrixCursor;

    move-result-object p0

    const-class v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    monitor-enter v0

    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getId()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getParameters()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;->getJasonStr()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b

    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_58

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    if-nez p1, :cond_57

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->close()V

    const/4 p0, 0x0

    :cond_57
    return-object p0

    :catchall_58
    move-exception p0

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public static getInstance()Lcom/oplus/coreapp/appfeature/AppFeatureCache;
    .registers 1

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureCacheHolder;->INSTANCE:Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    return-object v0
.end method

.method private getListFromSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache$1;->$SwitchMap$com$oplus$coreapp$appfeature$AppFeatureProviderUtils$FeatureID:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1c

    const/4 p1, 0x3

    if-ne p0, p1, :cond_14

    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheSecondList:Ljava/util/List;

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getListFromSlot simSlot is not support"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheFirstList:Ljava/util/List;

    return-object p0

    :cond_1f
    sget-object p0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheList:Ljava/util/List;

    return-object p0
.end method

.method private getMatrixCursor()Landroid/database/MatrixCursor;
    .registers 4

    const-string p0, "_id"

    const-string v0, "featurename"

    const-string v1, "parameters"

    const-string v2, "lists"

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private insertCursorToCache(Ljava/util/List;Landroid/database/Cursor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_4a

    :cond_8
    const-string p0, "_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "featurename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "parameters"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lists"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    monitor-enter v3

    :try_start_37
    new-instance v4, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_47

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4a

    :catchall_47
    move-exception p0

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method

.method private invalidateAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
            "Ljava/util/List<",
            "Lcom/oplus/coreapp/appfeature/AppFeatureCache$AppFeatureData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppFeatureCache"

    const-string v1, "invalidateAppFeatureCache run in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getUriFromSimSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_3b

    :cond_1b
    const/4 v4, 0x0

    const-string p2, "featurename in(\'"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\',\'"

    invoke-static {v1, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\')"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_3b
    invoke-direct {p0, p3, p1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->insertCursorToCache(Ljava/util/List;Landroid/database/Cursor;)V

    if-eqz p1, :cond_43

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_43
    const-string p0, "invalidateAppFeatureCache size: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isEmpty(Ljava/util/List;)Z
    .registers 2

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;",
            ")V"
        }
    .end annotation

    const-string v0, "enableAppFeatureCache: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFeatureCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getListFromSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oplus/coreapp/appfeature/AppFeatureCache$1;->$SwitchMap$com$oplus$coreapp$appfeature$AppFeatureProviderUtils$FeatureID:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    const/4 v0, 0x2

    if-eq v1, v0, :cond_37

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2c

    goto :goto_4a

    :cond_2c
    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheSecondList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->clearCursorInCache(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->invalidateAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Ljava/util/List;)V

    sput-object p4, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeSecond:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    goto :goto_4a

    :cond_37
    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheFirstList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->clearCursorInCache(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->invalidateAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Ljava/util/List;)V

    sput-object p4, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeFirst:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    goto :goto_4a

    :cond_42
    invoke-direct {p0, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->clearCursorInCache(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->invalidateAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Ljava/util/List;)V

    sput-object p4, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mCachedModeDefault:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    :goto_4a
    return-void
.end method

.method public getCursorFromCache(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->mAppFeatureCacheList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-direct {p0, p1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getListFromSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getFeatureCacheData(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
