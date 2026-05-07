.class public final Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;

.field private static final TAG:Ljava/lang/String; = "DotMcsDeeplinkHelper"

.field private static final TIMESTAMP_UNIT:I = 0x3e8


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;

    invoke-direct {v0}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->INSTANCE:Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final callClearAppDeeplink(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_badge_packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_user_id"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "clearAppDeeplink"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static final clearDeeplink(ZLjava/lang/String;ILandroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDeeplink: pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DotMcsDeeplinkHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_37

    if-eqz p1, :cond_37

    invoke-static {p1, p2}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getDeeplinkInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-static {p0, p3}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->clearDeeplinkForDotInfoIfNeeded(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0

    :cond_31
    const-string p0, "Failed to clear deeplink: DotInfo is null or it has no deeplink!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    const-string p0, "Failed to clear deeplink: Query is not from mcs/launcher or the pkgName is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static final clearDeeplinkForDotInfoIfNeeded(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "DotMcsDeeplinkHelper"

    const-string p1, "clearDeeplinkForDotInfoIfNeeded: dotInfo is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->getMcsDeeplinkInfo()Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object v2

    if-eqz v2, :cond_73

    const-string v1, "DotMcsDeeplinkHelper"

    const-string v2, "clearDeeplinkForDotInfoIfNeeded: Remove from map, pkgName: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p0, :cond_22

    move-object v4, v3

    goto :goto_24

    :cond_22
    iget-object v4, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    :goto_24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", userId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2f

    goto :goto_33

    :cond_2f
    iget-object v4, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    if-nez v4, :cond_35

    :goto_33
    move-object v4, v3

    goto :goto_3d

    :cond_35
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->getMcsDeeplinkInfo()Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->getMcsDeeplinkInfo()Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getMsgExtra()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_CLEAR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {p1, v1, v2, v4}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->PACKAGE_USER_TO_MCS_DEEPLINK_INFOS:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "PACKAGE_USER_TO_MCS_DEEPLINK_INFOS"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_64
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_70

    monitor-exit p1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dot/OplusDotInfo;->setMcsDeeplinkInfo(Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;)V

    const/4 p0, 0x1

    return p0

    :catchall_70
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_73
    return v1
.end method

.method public static final getDeeplinkInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "DotMcsDeeplinkHelper"

    const-string v0, "getDeeplinkInfo: dotInfo is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusDotInfo;->getMcsDeeplinkInfo()Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_f

    :cond_4
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object p0, v0

    :goto_f
    return-object p0
.end method

.method public static final notifyMcsErrorIfNeeded(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->notifyMcsIfNeeded(Landroid/content/Intent;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "DotMcsDeeplinkHelper"

    const-string/jumbo p1, "onFailedLaunched: Failed to launch with deeplink."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static final notifyMcsIfNeeded(Landroid/content/Intent;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_65

    const-string/jumbo v0, "mcs_deeplink_pkgName"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mcs_deeplink_userId"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eqz v0, :cond_65

    if-eq p0, v2, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMcsForDeeplink: pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DotMcsDeeplinkHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getDeeplinkInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getMsgExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v2, v1, p1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    invoke-static {p2, v0, p0}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->callClearAppDeeplink(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_63
    const/4 p0, 0x1

    return p0

    :cond_65
    const/4 p0, 0x0

    return p0
.end method

.method public static final notifyMcsSuccessIfNeeded(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_LAUNCH_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->notifyMcsIfNeeded(Landroid/content/Intent;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "DotMcsDeeplinkHelper"

    const-string/jumbo p1, "onSuccessfullyLaunched: Successfully launched with deeplink."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static final parseActionParamsMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_3a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    const-string v2, "jsonObject.keys()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jsonObject.getString(key)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_3a
    const/4 v0, 0x0

    :cond_3b
    return-object v0
.end method

.method public static final setDeeplinkForDotInfo(Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msgId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msgExtra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    if-nez p0, :cond_21

    const-string p0, "DotMcsDeeplinkHelper"

    const-string/jumbo p1, "setDeeplinkForDotInfo: dotInfo is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_21
    new-instance v7, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo p1, "parse(deeplink)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/dot/OplusDotInfo;->setMcsDeeplinkInfo(Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final setDeeplinkForIntentIfNeeded(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12b

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->getMcsDeeplinkInfo()Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object v2

    if-eqz v2, :cond_12b

    invoke-static {p0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v3

    const-string v4, "DotMcsDeeplinkHelper"

    if-eqz v3, :cond_3c

    const-string p0, "The device turns on the high temperature protection to stop set deeplink."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3c
    invoke-static {p0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher/AppLimitedStartUpManager;->isAppLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string p0, "This package is limited to start."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_50
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDeeplinkForIntentIfNeeded: pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v5, 0x3e8

    int-to-long v9, v5

    div-long/2addr v7, v9

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getOutdatedTime()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-lez v5, :cond_b4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDeeplinkForIntentIfNeeded: Deeplink is outdated! curTimestamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deeplink: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getOutdatedTime()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, p2}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->callClearAppDeeplink(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_12b

    :cond_b4
    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->canShowBadgeNumber()Z

    move-result v0

    if-nez v0, :cond_c1

    const-string/jumbo p0, "setDeeplinkForIntentIfNeeded: Badge is not displayed."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    :cond_c1
    const-string/jumbo v0, "setDeeplinkForIntentIfNeeded: Setup."

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getDeeplink()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "mcs_deeplink_pkgName"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mcs_deeplink_userId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "isStartedFromDeeplink"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/dot/OplusMcsUtil;->getMcsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "deepLinkCallingPackage"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->getActionParams()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_106

    goto :goto_12a

    :cond_106
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10e

    :cond_12a
    :goto_12a
    return v0

    :cond_12b
    :goto_12b
    return v1
.end method
