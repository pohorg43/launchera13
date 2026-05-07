.class public Lcom/android/launcher/operators/DockBrowserUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CHROME_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.chrome.Main"

.field public static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field public static final DOCKBAR_BROWSER_TYPE_CHROME:I = 0x5

.field public static final DOCKBAR_BROWSER_TYPE_NONE:I = -0x1

.field public static final DOCKBAR_BROWSER_TYPE_OPERA:I = 0x4

.field public static final DOCKBAR_BROWSER_TYPE_OPLUS_NEW:I = 0x1

.field public static final DOCKBAR_BROWSER_TYPE_OPLUS_NEW_HEYTAP:I = 0x2

.field public static final DOCKBAR_BROWSER_TYPE_OPLUS_OLD:I = 0x0

.field public static final DOCKBAR_BROWSER_TYPE_OPLUS_OPLUS:I = 0x3

.field public static final DOCKBAR_BROWSER_TYPE_YANDEX:I = 0x6

.field public static final OPERA_CLASS_NAME:Ljava/lang/String; = "com.opera.Opera"

.field public static final OPERA_PACKAGE_NAME:Ljava/lang/String; = "com.opera.browser"

.field public static final OPLUS_BROWSER_CLASS_NAME:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field public static final OPLUS_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.nearme.browser"

.field public static final OPLUS_BROWSER_PACKAGE_NAME_NEW:Ljava/lang/String;

.field public static final OPLUS_BROWSER_PACKAGE_NAME_NEW_HEYTAP:Ljava/lang/String; = "com.heytap.browser"

.field public static final OPLUS_BROWSER_PACKAGE_NAME_OLD:Ljava/lang/String; = "com.android.browser"

.field public static final RU_YANDEX_BROWSER_CLASS_NAME:Ljava/lang/String; = "com.yandex.browser.YandexBrowserActivity"

.field public static final RU_YANDEX_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.yandex.browser"

.field private static final TAG:Ljava/lang/String; = "DockBrowserUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f120028

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/operators/DockBrowserUtils;->OPLUS_BROWSER_PACKAGE_NAME_NEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOplusBrowserType(Landroid/content/Context;)I
    .registers 3

    const-string v0, "com.android.browser"

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    goto :goto_2f

    :cond_a
    sget-object v0, Lcom/android/launcher/operators/DockBrowserUtils;->OPLUS_BROWSER_PACKAGE_NAME_NEW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    goto :goto_2f

    :cond_1a
    const-string v0, "com.heytap.browser"

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x2

    goto :goto_2f

    :cond_24
    const-string v0, "com.nearme.browser"

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x3

    goto :goto_2f

    :cond_2e
    const/4 p0, -0x1

    :goto_2f
    return p0
.end method

.method public static initDockBarBrowserType(Landroid/content/Context;)I
    .registers 10

    invoke-static {}, Lcom/android/launcher/operators/DockBrowserUtils;->isNoBrowserInDockBar()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/android/launcher/operators/DockBrowserUtils;->getOplusBrowserType(Landroid/content/Context;)I

    move-result v0

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v3, "DockBrowserUtils"

    if-nez v2, :cond_18

    const-string p0, "initDockBarBrowserType, not exp"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_18
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isGoogleRsa3()Z

    move-result v2

    const/4 v4, 0x6

    const-string v5, "com.yandex.browser"

    const/4 v6, 0x5

    if-eqz v2, :cond_79

    const-string v2, "initDockBarBrowserType, is google rsa 3, dockbarBrowserType:"

    const-string v7, ", isGooglePremierTier1:"

    invoke-static {v2, v0, v7}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v7}, Lcom/android/common/config/FeatureOption;->isRsa3PremierTier()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", region:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/config/VersionInfo;->getRegionMark()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/common/config/FeatureOption;->isRsa3PremierTier()Z

    move-result v2

    if-eqz v2, :cond_4d

    return v6

    :cond_4d
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIdThaVnm()Z

    move-result v2

    if-eqz v2, :cond_56

    if-le v0, v1, :cond_56

    return v0

    :cond_56
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isPhilippinesVersion()Z

    move-result v2

    if-eqz v2, :cond_5f

    if-le v0, v1, :cond_5f

    return v0

    :cond_5f
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isMalaysiaVersion()Z

    move-result v2

    if-eqz v2, :cond_68

    if-le v0, v1, :cond_68

    return v0

    :cond_68
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-static {p0, v5}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_75

    return v4

    :cond_75
    if-le v0, v1, :cond_78

    return v0

    :cond_78
    return v6

    :cond_79
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isGoogleRsa()Z

    move-result v2

    if-eqz v2, :cond_88

    const-string p0, "initDockBarBrowserType, is google rsa"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v1, :cond_87

    move v0, v6

    :cond_87
    return v0

    :cond_88
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIndonesiaVersion()Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_a2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIndiaVersion()Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVietnamVersion()Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isThailandVersion()Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a2
    if-le v0, v1, :cond_a6

    move v2, v7

    goto :goto_a7

    :cond_a6
    move v2, v8

    :goto_a7
    if-eqz v2, :cond_af

    const-string p0, "initDockBarBrowserType, isIndonesiaVersion or isIndiaVersion"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_af
    invoke-static {p0}, Lcom/android/common/config/VersionInfo;->isChromeHotseatVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_be

    const-string v2, "com.android.chrome"

    invoke-static {p0, v2}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    goto :goto_bf

    :cond_be
    move v7, v8

    :goto_bf
    if-eqz v7, :cond_c7

    const-string p0, "initDockBarBrowserType, isChromeHotseatVersion"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_c7
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-static {p0, v5}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d9

    const-string p0, "initDockBarBrowserType, isRussianVersion yandex"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_d9
    const-string p0, "initDockBarBrowserType, isRussianVersion none"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_df
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isGoogleRsa3()Z

    move-result v2

    if-nez v2, :cond_ed

    if-le v0, v1, :cond_ed

    const-string p0, "initDockBarBrowserType, dockbarBrowserType:"

    invoke-static {p0, v0, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_ed
    const-string v1, "com.opera.browser"

    invoke-static {p0, v1}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDockBarBrowserType, get default type for browser. hasOpera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "dockbarBrowserType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_112

    const/4 v6, 0x4

    :cond_112
    return v6
.end method

.method private static isNoBrowserInDockBar()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    return v0
.end method

.method public static isOwnBrowser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "com.android.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/launcher/operators/DockBrowserUtils;->OPLUS_BROWSER_PACKAGE_NAME_NEW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_16
    const-string v0, "com.heytap.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "com.nearme.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_26
    const-string p0, "com.android.browser.BrowserActivity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method
