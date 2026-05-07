.class public Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BROWSER_WIDGET_PROVIDER:Ljava/lang/String; = "com.android.browser.widget.DefaultSearchWidgetProvider"

.field public static final COMMON_SETTING_STYLE:Ljava/lang/String; = "common_settings"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final QUICKSEARCHBOX_WIDGET_PROVIDER:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field private static final TAG:Ljava/lang/String; = "FixedWidgetShortcutLoader"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "oplus.appwidget.shortcuts"

.field private static final XML_TAG_STYLE_ID_NAME:Ljava/lang/String; = "id"

.field private static final XML_TAG_STYLE_NAME:Ljava/lang/String; = "style"

.field private static final XML_TAG_SYSTEM_SHORTCUT_NAME:Ljava/lang/String; = "system_shortcut"

.field private static sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->lambda$loadFixedShortcutInfo$0(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static getFixedPopupWidgetShortcutInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;
    .registers 3

    sget-object v0, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static invalidCache(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2c
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    const-string v2, "FixedWidgetShortcutLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->loadFixedShortcutInfo(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_30

    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method private static synthetic lambda$loadFixedShortcutInfo$0(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 8

    const-string v0, "FixedWidgetShortcutLoader"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_15

    return-void

    :cond_15
    const-string v4, "oplus.appwidget.shortcuts"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_1f

    return-void

    :cond_1f
    invoke-static {p0, v3, p1}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->loadXmlData(Landroid/content/Context;ILandroid/content/ComponentName;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "time cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    const-string p0, "File not found causing system exception."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method private static loadFixedShortcutInfo(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {p1}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->getFixedPopupWidgetShortcutInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "FixedWidgetShortcutLoader"

    const-string v1, "Start getting and parsing the data in MetaData."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/m;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadShortcutsFromMetaData(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->supportFixedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "FixedWidgetShortcutLoader"

    const-string v0, "The set shortcut menu data cannot be loaded from MetaData configured by other applications."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->loadFixedShortcutInfo(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static loadXmlData(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_ba
    .catchall {:try_start_1 .. :try_end_11} :catchall_b8

    :try_start_11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :cond_19
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_26

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_ae

    :cond_26
    const/4 v5, 0x1

    if-eq v3, v5, :cond_ae

    const/4 v6, 0x2

    if-ne v3, v6, :cond_19

    const-string/jumbo v3, "system_shortcut"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move-object v7, v0

    move-object v8, v7

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-ne v9, v4, :cond_4b

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_6f

    :cond_4b
    if-eq v9, v5, :cond_6f

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-ne v9, v6, :cond_62

    const-string/jumbo v9, "style"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    const-string v8, "id"

    invoke-interface {p1, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_62
    const-string v9, "intent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-static {p0, p1, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_3f

    :cond_6f
    if-eqz v7, :cond_19

    const-string v3, "common_settings"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;

    invoke-direct {p0}, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->setStyleId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->setHostComponent(Landroid/content/ComponentName;)V

    sget-object p2, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_8a} :catch_b5
    .catchall {:try_start_11 .. :try_end_8a} :catchall_b2

    :try_start_8a
    sget-object v0, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->sFixedPopupWidgetShortcutInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->getHostComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_ab

    :try_start_94
    const-string p2, "FixedWidgetShortcutLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadXmlData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_aa} :catch_b5
    .catchall {:try_start_94 .. :try_end_aa} :catchall_b2

    goto :goto_ae

    :catchall_ab
    move-exception p0

    :try_start_ac
    monitor-exit p2
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw p0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ae} :catch_b5
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b2

    :cond_ae
    :goto_ae
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_d6

    :catchall_b2
    move-exception p0

    move-object v0, p1

    goto :goto_d7

    :catch_b5
    move-exception p0

    move-object v0, p1

    goto :goto_bb

    :catchall_b8
    move-exception p0

    goto :goto_d7

    :catch_ba
    move-exception p0

    :goto_bb
    :try_start_bb
    const-string p1, "FixedWidgetShortcutLoader"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadXmlData error, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_b8

    if-eqz v0, :cond_d6

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d6
    :goto_d6
    return-void

    :goto_d7
    if-eqz v0, :cond_dc

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_dc
    throw p0
.end method

.method private static supportFixedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v0, :cond_b

    return v1

    :cond_b
    if-eqz p0, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_33

    :cond_14
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.browser.widget.DefaultSearchWidgetProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    const/4 v1, 0x1

    :cond_33
    :goto_33
    return v1
.end method
