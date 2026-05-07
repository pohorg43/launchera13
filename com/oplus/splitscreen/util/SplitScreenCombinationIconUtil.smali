.class public Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitScreenCombinationIconUtil"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addSplitScreenCombination(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-class v0, Ljava/lang/String;

    const-string v5, "SplitScreenCombinationIconUtil"

    invoke-direct/range {p0 .. p2}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_17
    const-string v11, "com.oplus.util.PairTaskIconBuilder"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    iget-object v14, v1, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    aput-object v14, v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "makeIcon"

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Class;

    const-class v16, Landroid/graphics/drawable/Drawable;

    aput-object v16, v15, v9

    aput-object v0, v15, v10

    const-class v16, Landroid/graphics/drawable/Drawable;

    aput-object v16, v15, v8

    const/16 v16, 0x3

    aput-object v0, v15, v16

    invoke-virtual {v11, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v14, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p1}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v9

    aput-object v2, v11, v10

    invoke-direct {v1, v3}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v8

    aput-object v3, v11, v16

    invoke-virtual {v0, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_60} :catch_61

    goto :goto_6b

    :catch_61
    move-exception v0

    const-string v11, "An exception occurred at make split screen combination icon."

    invoke-static {v5, v11}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_6b
    iget-object v11, v1, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iget-object v12, v1, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v6, :cond_ea

    if-eqz v7, :cond_ea

    if-eqz v0, :cond_ea

    if-eqz v11, :cond_ea

    if-nez v12, :cond_8a

    goto :goto_ea

    :cond_8a
    const-string v5, "|"

    invoke-static {v6, v5, v7}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    new-instance v7, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v13, v1, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-direct {v7, v13, v5}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v7, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    new-array v0, v8, [Landroid/content/Intent;

    aput-object v11, v0, v9

    aput-object v12, v0, v10

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "SKIP_CONFIRM"

    invoke-virtual {v0, v5, v10}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "isSplitScreenCombination"

    invoke-virtual {v0, v5, v10}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "pkgName1"

    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pkgName2"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userId1"

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "userId2"

    invoke-virtual {v0, v2, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v0, v1, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result v0

    return v0

    :cond_ea
    :goto_ea
    const-string v0, " addSplitScreenCombination; Some parameters are null, return!"

    invoke-static {v5, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_d

    :try_start_4
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p2, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p0, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageName(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "SplitScreenCombinationIconUtil"

    const-string p1, " getPackageName; Some parameters are null, return!"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_27

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_27
    const-string v1, "com.android.permissioncontroller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_2f
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_35
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result p0

    const/16 v1, 0x3e9

    if-eq p0, v1, :cond_47

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_47
    return-object v0
.end method


# virtual methods
.method public addSplitScreenCombination(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 9

    const-string v0, "SplitScreenCombinationIconUtil"

    const/4 v1, 0x1

    if-ne p3, v1, :cond_8

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :cond_8
    const/4 p3, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getPackageName(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->getPackageName(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getSplitScreenMenuOperationInfo()Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setSaveSplitCombination(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-eqz v1, :cond_30

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-ne p1, p2, :cond_30

    const-string p0, " can\'t add same app as split pair"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_30
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/oplus/splitscreen/util/SplitScreenCombinationIconUtil;->addSplitScreenCombination(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    return p0

    :catch_35
    move-exception p0

    const-string p1, " addSplitScreenCombination exception!"

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method
