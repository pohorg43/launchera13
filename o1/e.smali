.class public final Lo1/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Z = false
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static b:Z = true
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static c:Ljava/lang/Boolean;


# direct methods
.method public static final a(Landroid/content/Context;Z)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo1/e;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    if-eqz p1, :cond_ac

    :cond_b
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    const-string v2, "SupportBrowserNewsHelper"

    const/4 v3, 0x0

    if-eqz p1, :cond_19

    const-string p1, "getSupportSlideUpInformation is export,not support"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_19
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_4c

    :cond_28
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v4, :cond_32

    const-string p1, "getSupportSlideUpInformation is realme or oneplus,not support"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_32
    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "getSupportSlideUpInformation is lightweightos,not support"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_3e
    invoke-static {}, Lcom/android/launcher/UiConfig;->isLijing()Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "getSupportSlideUpInformation is the low memory types, not support"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_4a
    move p1, v1

    goto :goto_52

    :cond_4c
    :goto_4c
    const-string p1, "getSupportSlideUpInformation is tablet or foldscreen,not support. "

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    move p1, v3

    :goto_52
    if-eqz p1, :cond_a5

    const-string p1, "getBrowserNewsSupport,browser apk version is not support"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1203db

    :try_start_5c
    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v0, "support_window_news"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_7e} :catch_90
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5c .. :try_end_7e} :catch_85
    .catchall {:try_start_5c .. :try_end_7e} :catchall_83

    goto :goto_80

    :cond_7f
    move p0, v3

    :goto_80
    if-nez p0, :cond_9e

    goto :goto_9b

    :catchall_83
    move-exception p0

    goto :goto_a1

    :catch_85
    move-exception p0

    :try_start_86
    const-string v0, "getBrowserNewsSupport NotFoundException"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :catch_90
    move-exception p0

    const-string v0, "getBrowserNewsSupport NameNotFoundException"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_86 .. :try_end_9a} :catchall_83

    :goto_9a
    move p0, v3

    :goto_9b
    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    if-eqz p0, :cond_a5

    goto :goto_a6

    :goto_a1
    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_a5
    move v1, v3

    :goto_a6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo1/e;->c:Ljava/lang/Boolean;

    :cond_ac
    sget-object p0, Lo1/e;->c:Ljava/lang/Boolean;

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_browser_news"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_1d

    const-string p0, "SupportBrowserNewsHelper"

    const-string v0, "getBrowserNewsSwitch, switch not open"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return v1
.end method

.method public static final c(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo1/e;->a(Landroid/content/Context;Z)Z

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-eqz p0, :cond_28

    sget p0, Lq1/b;->d:I

    if-eq p0, v1, :cond_23

    sget p0, Lq1/b;->d:I

    if-ne p0, v2, :cond_21

    goto :goto_23

    :cond_21
    move p0, v0

    goto :goto_24

    :cond_23
    :goto_23
    move p0, v2

    :goto_24
    if-eqz p0, :cond_28

    move p0, v2

    goto :goto_29

    :cond_28
    move p0, v0

    :goto_29
    if-nez p0, :cond_5e

    const-string v3, "getShowSwitchVisiableState,launcherMode: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mBrowserCallBackOpenState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " BrowserNewsRusHelper.isBrowserNewsRusOpenResult(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lq1/b;->d:I

    if-eq v4, v1, :cond_51

    sget v1, Lq1/b;->d:I

    if-ne v1, v2, :cond_52

    :cond_51
    move v0, v2

    :cond_52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportBrowserNewsHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return p0
.end method

.method public static final d(Landroid/content/Context;)V
    .registers 6

    const-string v0, "initBrowserOverlayKeepAliveFeature mIsSupportBrowserKeepAlive = "

    const-string v1, "SupportBrowserNewsHelper"

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1203db

    const/4 v3, 0x0

    :try_start_d
    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v2, 0x1

    if-nez p0, :cond_21

    goto :goto_47

    :cond_21
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_26

    goto :goto_47

    :cond_26
    const-string v4, "processPriorityStrategy"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_2c} :catch_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_2c} :catch_32
    .catchall {:try_start_d .. :try_end_2c} :catchall_30

    if-ne p0, v2, :cond_47

    move v3, v2

    goto :goto_47

    :catchall_30
    move-exception p0

    goto :goto_4d

    :catch_32
    move-exception p0

    :try_start_33
    const-string v2, "initBrowserOverlayKeepAliveFeature NotFoundException"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :catch_3d
    move-exception p0

    const-string v2, "initBrowserOverlayKeepAliveFeature NameNotFoundException"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_30

    :cond_47
    :goto_47
    sput-boolean v3, Lo1/e;->b:Z

    invoke-static {v3, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4d
    sput-boolean v3, Lo1/e;->b:Z

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_browser_news"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static final f(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    invoke-static {p0}, Lo1/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {p0, v3}, Lo1/e;->a(Landroid/content/Context;Z)Z

    move-result p0

    if-eqz p0, :cond_2e

    sget p0, Lq1/b;->d:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eq p0, v2, :cond_2a

    sget p0, Lq1/b;->d:I

    if-ne p0, v4, :cond_2b

    :cond_2a
    move v3, v4

    :cond_2b
    sput-boolean v3, Lo1/e;->a:Z

    goto :goto_30

    :cond_2e
    sput-boolean v3, Lo1/e;->a:Z

    :goto_30
    const-string/jumbo p0, "updateSupportBrowserUI mBrowserSupportResult:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v2, Lo1/e;->a:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " use time: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SupportBrowserNewsHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
