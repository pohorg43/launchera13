.class public Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;,
        Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;
    }
.end annotation


# static fields
.field private static final APP_TABLE_NAME:Ljava/lang/String; = "app_feature"

.field private static final APP_TABLE_SLOT_FIRST_NAME:Ljava/lang/String; = "app_feature_first"

.field private static final APP_TABLE_SLOT_SECOND_NAME:Ljava/lang/String; = "app_feature_second"

.field private static final CFG_ARGS_SPLIT:Ljava/lang/String; = ";"

.field private static final CFG_ARG_SPLIT:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "AppFeatureProviderUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;)V
    .registers 5
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

    invoke-static {}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getInstance()Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;)V

    return-void
.end method

.method public static enableAppFeatureCache(Landroid/content/ContentResolver;Ljava/util/List;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/util/List;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;)V

    return-void
.end method

.method private static getAppFeatureCursor(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    invoke-static {}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getInstance()Lcom/oplus/coreapp/appfeature/AppFeatureCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getCursorFromCache(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {p1}, Lcom/oplus/coreapp/appfeature/AppFeatureCache;->getCachedMode(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    move-result-object v1

    sget-object v2, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;->CACHE_ONLY:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$CACHE_MODE;

    if-eq v1, v2, :cond_25

    invoke-static {p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getUriFromSimSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v7, p1

    const/4 v8, 0x0

    const-string v6, "featurename=?"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Z)Z
    .registers 5

    const-string v0, "boolean"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getBoolean: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_10
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getBoolean(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;F)F
    .registers 5

    const-string v0, "float"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getFloat: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_10
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getFloat(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;I)I
    .registers 5

    const-string v0, "int"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getInt: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getInt(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;J)J
    .registers 6

    const-string v0, "long"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getLong: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3

    :cond_10
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 5

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getLong(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "String"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getString: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_10
    return-object p0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    if-eqz p3, :cond_6b

    invoke-static {p0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getAppFeatureCursor(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_66

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_66

    :cond_17
    const-string p1, "parameters"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_60

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_60

    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_35
    if-ge v2, p2, :cond_5d

    aget-object v3, p1, v2

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5a

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_60

    goto :goto_66

    :cond_60
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_17

    :cond_66
    :goto_66
    if-eqz p0, :cond_6b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6b
    return-object v0
.end method

.method public static getStringList(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringListForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getStringList(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getStringListForFeature(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_45

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {p0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getAppFeatureCursor(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_40

    const-string p1, "lists"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_23
    invoke-static {p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->jsonString2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_29

    move-object v0, p1

    goto :goto_40

    :catch_29
    move-exception p1

    const-string p2, "getStringListForFeature error: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppFeatureProviderUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_45
    return-object v0
.end method

.method public static getUriFromSimSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Landroid/net/Uri;
    .registers 3

    const-string v0, "content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$1;->$SwitchMap$com$oplus$coreapp$appfeature$AppFeatureProviderUtils$FeatureID:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2e

    const/4 v1, 0x3

    if-ne p0, v1, :cond_26

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature_second"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getUriBySimSlot simSlot is not support"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature_first"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getAppFeatureCursor(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p0, :cond_14

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_14
    return p1
.end method

.method public static isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static jsonString2List(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1b

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :cond_1b
    return-object v0
.end method

.method public static registerContentObserver(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;ZLandroid/database/ContentObserver;)V
    .registers 4

    invoke-static {p1}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getUriFromSimSlot(Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p0, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    return-void
.end method

.method public static registerContentObserver(Landroid/content/ContentResolver;ZLandroid/database/ContentObserver;)V
    .registers 4

    sget-object v0, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;->STATIC_COMPONENT:Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->registerContentObserver(Landroid/content/ContentResolver;Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils$FeatureID;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static unRegisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 2

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    return-void
.end method
