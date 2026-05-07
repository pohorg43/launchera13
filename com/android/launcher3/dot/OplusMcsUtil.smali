.class public final Lcom/android/launcher3/dot/OplusMcsUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;
    }
.end annotation


# static fields
.field private static final ANDROID_PKG:Ljava/lang/String; = "android"

.field private static final COLOROS_MCS_PKG:Ljava/lang/String; = "com.coloros.mcs"

.field private static final HEYTAP_MCS_PKG:Ljava/lang/String; = "com.heytap.mcs"

.field public static final INSTANCE:Lcom/android/launcher3/dot/OplusMcsUtil;

.field private static final MCS_ACTION:Ljava/lang/String; = "com.mcs.action.RECEIVE_BADGE_DEEPLINK_MESSAGE"

.field private static final MCS_STATUS_CLICK_ON_MINIMIZED:I = 0x6

.field private static final MCS_STATUS_DEEPLINK_CLEAR:I = 0x3

.field private static final MCS_STATUS_DEEPLINK_ERROR:I = 0x4

.field private static final MCS_STATUS_DEEPLINK_SUCCESS:I = 0x5

.field private static final MCS_STATUS_LAUNCH_ERROR:I = 0x2

.field private static final MCS_STATUS_LAUNCH_SUCCESS:I = 0x1

.field private static final MCS_TYPE:I = 0x3024

.field private static final TAG:Ljava/lang/String; = "OplusMcsUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dot/OplusMcsUtil;

    invoke-direct {v0}, Lcom/android/launcher3/dot/OplusMcsUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/dot/OplusMcsUtil;->INSTANCE:Lcom/android/launcher3/dot/OplusMcsUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMcsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/dot/OplusMcsUtil;->getMcsPackageNameInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const-string p0, "com.coloros.mcs"

    :cond_8
    return-object p0
.end method

.method private static final getMcsPackageNameInner(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "com.heytap.mcs"

    const/4 v1, 0x0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string/jumbo v4, "pm.getApplicationInfoAsU…0, UserHandle.myUserId())"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    move v4, v5

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    const-string v6, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {p0, v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3d

    if-ne v2, p0, :cond_30

    move v3, v5

    :cond_30
    if-nez v4, :cond_36

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move-object v0, v1

    :cond_36
    :goto_36
    :try_start_36
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_3a

    move-object v1, v0

    goto :goto_42

    :catchall_3a
    move-exception p0

    move-object v1, v0

    goto :goto_3e

    :catchall_3d
    move-exception p0

    :goto_3e
    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_42
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get mcs package name: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusMcsUtil"

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    return-object v1
.end method

.method public static final notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "msgExtra"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "OplusMcsUtil"

    if-eqz p0, :cond_58

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.mcs.action.RECEIVE_BADGE_DEEPLINK_MESSAGE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/dot/OplusMcsUtil;->getMcsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x3024

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appPackage"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->getStatus()I

    move-result p1

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notify mcs status: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_58
    const-string p0, "Failed to notify mcs status: The context is null."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method
