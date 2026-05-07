.class public final Lcom/android/common/util/SplitScreenUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/SplitScreenUtils;

.field private static final NUM_100:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SplitScreenUtils"

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static iconBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static makeIconMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/SplitScreenUtils;

    invoke-direct {v0}, Lcom/android/common/util/SplitScreenUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->INSTANCE:Lcom/android/common/util/SplitScreenUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCombinationBitmapOriginal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Ljava/lang/String;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_12

    if-eqz p3, :cond_9f

    :cond_12
    if-eqz p1, :cond_9f

    if-nez p2, :cond_18

    goto/16 :goto_9f

    :cond_18
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    if-nez p3, :cond_24

    const-string p3, "com.oplus.util.PairTaskIconBuilder"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    :cond_24
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    if-nez p3, :cond_39

    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    sput-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    :cond_39
    sget-object p3, Lcom/android/common/util/SplitScreenUtils;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-nez v1, :cond_69

    sget-object v1, Lcom/android/common/util/SplitScreenUtils;->iconBuilderClass:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v3

    aput-object v0, v8, v4

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v6

    aput-object v0, v8, v5

    const-string/jumbo v0, "makeIcon"

    invoke-virtual {v1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    :cond_69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_6d
    sget-object v0, Lcom/android/common/util/SplitScreenUtils;->makeIconMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v1, v6

    aput-object p2, v1, v5

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8f

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_91

    goto :goto_96

    :cond_8f
    move-object p0, v2

    goto :goto_96

    :catchall_91
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_96
    instance-of p1, p0, Ly2/j$a;

    if-eqz p1, :cond_9b

    goto :goto_9c

    :cond_9b
    move-object v2, p0

    :goto_9c
    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2

    :cond_9f
    :goto_9f
    if-eqz p1, :cond_a3

    if-nez p2, :cond_a4

    :cond_a3
    move v3, v4

    :cond_a4
    const-string p0, "getCombinationBitmapOriginal(), pkgName null ? "

    const-string p1, "SplitScreenUtils"

    invoke-static {v3, p0, p1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic getCombinationBitmapOriginal$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getCombinationBitmapStyle(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SplitScreenUtils"

    if-eqz p0, :cond_94

    if-nez p1, :cond_d

    goto/16 :goto_94

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-string/jumbo v5, "resources.configuration"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v2
    :try_end_21
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_30

    :catch_22
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getUxIconConfig e:"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v1

    if-nez v1, :cond_40

    const-string p1, "iconConfig is null at getSCBitmap."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_40
    invoke-static {p2}, Lcom/android/common/util/SplitScreenUtils;->getCombinationPkgNames(Landroid/content/pm/ShortcutInfo;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_47

    goto :goto_5a

    :cond_47
    const/4 v1, 0x0

    aget-object v3, p2, v1

    const/4 v1, 0x1

    aget-object v4, p2, v1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/common/util/SplitScreenUtils;->getCombinationBitmapOriginal$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_59

    goto :goto_5a

    :cond_59
    move-object p0, p2

    :goto_5a
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float p2, p2

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    const-string v1, "getCombinationBitmapStyle:dp.mIconVisiableSizePx.toFloat():"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "dp.iconSizePx.toFloat():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scale:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/common/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_94
    :goto_94
    const-string p1, "Some parameters are null at getSCBitmap."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getCombinationPkgNames(Landroid/content/pm/ShortcutInfo;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    if-nez p0, :cond_c

    goto :goto_30

    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_1d

    :cond_16
    const-string/jumbo v1, "pkgName1"

    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    if-nez v1, :cond_20

    return-object v0

    :cond_20
    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string/jumbo v1, "pkgName2"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0

    :cond_30
    :goto_30
    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    const-string p0, "getCombinationPkgNames(), info null ? "

    const-string v0, "SplitScreenUtils"

    invoke-static {v2, p0, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final isCombination(Landroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p0, :cond_b

    goto :goto_18

    :cond_b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_18

    :cond_12
    const-string v0, "isSplitScreenCombination"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_18
    return v1
.end method

.method public static final isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p0, :cond_b

    goto :goto_1d

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez p0, :cond_10

    goto :goto_1d

    :cond_10
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_1d

    :cond_17
    const-string v0, "isSplitScreenCombination"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1d
    return v1
.end method

.method public static final isDefaultCombination(Landroid/content/pm/ShortcutInfo;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-nez p0, :cond_a

    goto :goto_18

    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_17

    :cond_11
    const-string v0, "isDefaultSC"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_17
    return v1

    :cond_18
    :goto_18
    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    const-string v0, "isDefaultCombination(), info null ? "

    const-string v2, "SplitScreenUtils"

    invoke-static {p0, v0, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return v1
.end method
