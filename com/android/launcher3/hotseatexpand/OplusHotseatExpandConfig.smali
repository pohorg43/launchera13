.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXPAND_ITEM_MAX_COUNT:I = 0x3

.field public static final EXPAND_ITEM_START_TYPE_ACTIVITY:Ljava/lang/String; = "startActivity"

.field public static final EXPAND_ITEM_START_TYPE_BROADCAST:Ljava/lang/String; = "sendBroadcast"

.field public static final EXPAND_ITEM_START_TYPE_SERVICE:Ljava/lang/String; = "startService"

.field public static final EXPAND_SOURCE_DEFAULT:I = 0x0

.field public static final EXPAND_TYPE_APP_CONNECT:I = 0x2

.field public static final EXPAND_TYPE_MULTI_RECOMMEND:I = 0x3

.field public static final EXPAND_TYPE_RECENT_TASK:I = 0x1

.field public static final GET_RECENT_TASK_MAX_COUNT:I = 0xa

.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandConfig"

.field private static final appConnectPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;

    const v0, 0x7f1203d6

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->appConnectPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAvailableCallingHotseatExpand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusHotseatExpandConfig"

    const-string v3, "Hotseat_expand"

    if-nez v0, :cond_11

    const-string p0, "isAvailableCallingHotseatExpand false,not support hotseat expand"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->isLegalCallingSource(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "isAvailableCallingHotseatExpand false,not Legal calling pkg"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "isAvailableCallingHotseatExpand false,arg is null"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static final isLegalCallingSource(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final getAppConnectPackageName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->appConnectPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHotseatNormalItemMaxCount()I
    .registers 1

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    return p0
.end method
