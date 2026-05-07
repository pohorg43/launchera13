.class public Lcom/android/launcher/settings/LauncherIndexablesProvider;
.super Lcom/oplus/settingslib/provider/OplusSearchIndexablesProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;,
        Lcom/android/launcher/settings/LauncherIndexablesProvider$DependencyApp;,
        Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_ID:I = -0x1

.field private static final EMPTY_RES_ID:I = -0x1

.field private static final LAUNCHER_SETTINGS_ACTION:Ljava/lang/String; = "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

.field private static final PERSONALITY_SETTING_ACTION:Ljava/lang/String; = "com.oplus.uxdesign.personal.ACTION_LAUNCH_PERSONAL"

.field private static final RANK_ONE:I = 0x1

.field private static final RANK_THREE:I = 0x3

.field private static final RANK_TWO:I = 0x2

.field private static final RECENT_TASK_SETTINGS_ACTION:Ljava/lang/String; = "com.android.launcher.action.quickstep.LOCK_SETTINGS"

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final SPECIAL_VARIABLE_DISABLE:Ljava/lang/String; = "disable"

.field private static final SPECIAL_VARIABLE_ENABLE:Ljava/lang/String; = "enable"

.field private static final TAG:Ljava/lang/String; = "SearchIndex"

.field private static final UX_DESIGN_MAIN_ACTIVITY:Ljava/lang/String; = "com.oplus.uxdesign.personal.PersonalActivity"

.field private static final sIndexableName:[[I

.field private static final sIndexableRes:[Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;


# instance fields
.field private final mDependencySearchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;

    new-instance v2, Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;

    const-class v3, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f150001

    const v5, 0x7f080799

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;-><init>(IILjava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/launcher/settings/LauncherIndexablesProvider;->sIndexableRes:[Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->sIndexableName:[[I

    return-void

    :array_26
    .array-data 4
        0x7f1200ad
        0x7f120395
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/settingslib/provider/OplusSearchIndexablesProvider;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mSearchItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mDependencySearchItems:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->isDependency()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mDependencySearchItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mSearchItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    return-void
.end method

.method private static getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1e

    aget v3, p1, v2

    invoke-static {p0, v3}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_1b

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFirstTitleResId(Landroid/content/Context;)I
    .registers 2

    const p0, 0x7f1200ad

    return p0
.end method

.method private static getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string v0, ";"

    invoke-static {p0, v0}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_b

    const-string p1, "enable"

    goto :goto_d

    :cond_b
    const-string p1, "disable"

    :goto_d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method


# virtual methods
.method public clearSearchData()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mDependencySearchItems:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mSearchItems:Ljava/util/List;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_e
    return-void
.end method

.method public initSearchData(Landroid/content/Context;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-class v17, Lcom/android/launcher/settings/LauncherSettingsActivity;

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getFirstTitleResId(Landroid/content/Context;)I

    move-result v18

    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    aput v18, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0x1

    const v20, 0x7f080799

    const-string v4, "launcher_page"

    const/16 v21, -0x1

    const/16 v22, -0x1

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    const/4 v13, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v5, v18

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v16

    move/from16 v16, v24

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const/4 v15, 0x1

    new-array v8, v15, [I

    const/4 v1, 0x0

    aput v18, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v4, "launcher_category"

    const v5, 0x7f12028e

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/16 v16, -0x1

    move-object/from16 v1, p1

    move-object/from16 v13, v24

    move/from16 v19, v15

    move-object/from16 v15, v23

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const/4 v1, 0x2

    new-array v8, v1, [I

    const/4 v1, 0x0

    aput v18, v8, v1

    const v23, 0x7f1202a4

    aput v23, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x2

    const-string v4, "launcher_mode"

    const v5, 0x7f1202a4

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const/4 v1, 0x3

    new-array v8, v1, [I

    const/4 v1, 0x0

    aput v18, v8, v1

    aput v23, v8, v19

    const v24, 0x7f1202a8

    const/4 v1, 0x2

    aput v24, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, "key_launcher_mode_introduction"

    const v5, 0x7f1202a8

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v1, p1

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move/from16 v16, v28

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const/4 v1, 0x3

    new-array v8, v1, [I

    const/4 v1, 0x0

    aput v18, v8, v1

    aput v23, v8, v19

    const v1, 0x7f1202a6

    const/4 v2, 0x2

    aput v1, v8, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, "key_launcher_mode_introduction"

    const v5, 0x7f1202a6

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getResourceId(I)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_13d

    const/4 v2, 0x2

    const v3, 0x7f080799

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v15

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v24, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v20, -0x1

    const-string v4, "launcher_mode"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v20

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    goto :goto_14a

    :cond_13d
    move/from16 v21, v15

    const-string v1, "SearchIndex"

    const-string v2, "get pull up string index id error"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    :cond_147
    const/4 v1, 0x0

    move/from16 v21, v1

    :goto_14a
    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v1

    if-nez v1, :cond_181

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f12053e

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f1203fe

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_layout"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_181
    invoke-static/range {p1 .. p1}, Lo1/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f12013c

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f12013c

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "browser_news_switch"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_1b6
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v1

    if-nez v1, :cond_2a2

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f1202ad

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v20, 0x7f1202ad

    aput v20, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_slide_down"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v1

    if-eqz v1, :cond_22a

    const v1, 0x7f120420

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f1202ad

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v20, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-string v4, "launcher_slide_down"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v15, v16

    move/from16 v16, v22

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_22a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v1

    if-eqz v1, :cond_269

    const v1, 0x7f12041e

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f1202ad

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v20, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-string v4, "launcher_slide_down"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v15, v16

    move/from16 v16, v22

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_269
    const v1, 0x7f120472

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f1202ad

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v20, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, -0x1

    const-string v4, "launcher_slide_down"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v15, v16

    move/from16 v16, v20

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_2a2
    invoke-static {}, Lcom/android/launcher3/search/SearchEntry;->isSearchEntrySupported()Z

    move-result v1

    if-eqz v1, :cond_2d7

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f120470

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120470

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_search_entry_enable"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_2d7
    const/16 v20, 0x2

    const v22, 0x7f080799

    const v5, 0x7f120299

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120299

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v15, 0x0

    const/16 v28, -0x1

    const-string v4, "key_launcher_icon_fallen_switch"

    const-string v10, "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherIconFallenSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move/from16 v16, v28

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v5, 0x7f120294

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120294

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, "key_dock_expand"

    const-string v10, "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherDockExpandSettingActivity"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v5, 0x7f1202a1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f1202a1

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v4, "launcher_locked"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v5, 0x7f12042c

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f12042c

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v4, "launcher_recent_manage"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v5, 0x7f120295

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120295

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v4, "launcher_double_click_lock"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v2

    if-eqz v2, :cond_3e7

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v1, v2, :cond_3e7

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f1204c4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f1204c4

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string/jumbo v4, "smart_search_settings_title"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_3e7
    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f12029b

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f12029b

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_is_compact_arrangement"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v1

    if-eqz v1, :cond_427

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v1

    if-nez v1, :cond_427

    move/from16 v15, v19

    goto :goto_429

    :cond_427
    move/from16 v15, v21

    :goto_429
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isNotSupportSpeedModify()Z

    move-result v1

    if-eqz v1, :cond_431

    if-eqz v15, :cond_4a0

    :cond_431
    const/16 v20, 0x2

    const v22, 0x7f080799

    const v24, 0x7f1200f4

    const/4 v6, -0x1

    const/16 v25, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v26, 0x7f1200f4

    aput v26, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "app_startup_anim_speed"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v5, v24

    move/from16 v7, v25

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v6, 0x7f1200f5

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v26, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f1200f5

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v26, -0x1

    const-string v4, "app_startup_anim_speed"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move-object/from16 v15, v16

    move/from16 v16, v26

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_4a0
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v1

    const v20, 0x7f12029c

    const v22, 0x7f1200b2

    if-eqz v1, :cond_630

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_530

    const/16 v24, 0x2

    const v25, 0x7f080799

    sget-object v15, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v5

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/4 v2, 0x3

    new-array v8, v2, [I

    aput v18, v8, v21

    aput v23, v8, v19

    invoke-virtual {v15, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v8, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v28, 0x0

    const/16 v16, 0x0

    const/16 v29, -0x1

    const-string v4, "key_branch_personalize_search"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v14, v28

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    move/from16 v16, v29

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const/4 v1, 0x7

    move-object/from16 v2, v30

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v5

    const/4 v3, 0x3

    new-array v8, v3, [I

    aput v18, v8, v21

    const v3, 0x7f120130

    aput v3, v8, v19

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v8, v2

    const/4 v14, 0x0

    const/16 v16, -0x1

    const-string v4, "key_add_search_notification"

    const-string v9, "com.android.launcher.settings.LauncherDrawerModeSettingsActivity"

    const-string v10, "android.intent.action.MAIN"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherDrawerModeSettingsActivity"

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v15, v28

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_530
    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_572

    const/4 v2, 0x2

    const v3, 0x7f080799

    sget-object v1, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->getSwitchTitle(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, 0x3

    new-array v8, v4, [I

    aput v18, v8, v21

    aput v23, v8, v19

    invoke-virtual {v1, v15}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->getSwitchTitle(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x2

    aput v1, v8, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v24, -0x1

    const-string/jumbo v4, "show_recommend_game"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move-object/from16 v15, v16

    move/from16 v16, v24

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_572
    const/16 v24, 0x2

    const v25, 0x7f080799

    const v5, 0x7f12029c

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v20, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    const-string v4, "launcher_is_show_indicated_app"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v13, v20

    move-object/from16 v15, v28

    move/from16 v16, v29

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v5, 0x7f120497

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const v1, 0x7f120497

    const/4 v2, 0x2

    aput v1, v8, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, "key_show_inputmethod_in_drawer"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v30, 0x7f1200b2

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v22, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v4, "add_app_to_launcher"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v5, v30

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v6, 0x7f1200b3

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v22, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f1200b3

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v22, -0x1

    const-string v4, "add_app_to_launcher"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move-object/from16 v15, v16

    move/from16 v16, v22

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    goto/16 :goto_6c3

    :cond_630
    const/4 v1, 0x3

    const/16 v24, 0x2

    const v25, 0x7f080799

    const v5, 0x7f12029c

    const/16 v26, -0x1

    const/16 v27, -0x1

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v20, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_is_show_indicated_app"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v13, v20

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v28, 0x7f1200b2

    const/4 v1, 0x3

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v23, v8, v19

    const/4 v1, 0x2

    aput v22, v8, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v23, 0x0

    const/16 v29, -0x1

    const-string v4, "add_app_to_launcher"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move/from16 v5, v28

    move-object/from16 v14, v23

    move/from16 v16, v29

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    const v6, 0x7f1200b3

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    aput v22, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f1200b3

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "add_app_to_launcher"

    const-string v10, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    const-string v11, "com.android.launcher"

    const-string v12, "com.android.launcher.settings.LauncherModeSettingActivity"

    move-object/from16 v1, p1

    move-object/from16 v15, v16

    move/from16 v16, v29

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :goto_6c3
    invoke-static {}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isSupportAppUpdateDot()Z

    move-result v1

    if-eqz v1, :cond_703

    const/4 v2, 0x2

    const v3, 0x7f080799

    const v5, 0x7f120582

    const v6, 0x7f120581

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120582

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v20, -0x1

    const-string v4, "app_update_dot"

    const-string v10, "android.intent.action.MAIN"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    move-object/from16 v15, v16

    move/from16 v16, v20

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_703
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_740

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_740

    const/4 v2, 0x2

    const v3, 0x7f080799

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getMPreferenceTitle()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, 0x2

    new-array v8, v4, [I

    aput v18, v8, v21

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getMPreferenceTitle()I

    move-result v1

    aput v1, v8, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_is_show_search_box"

    const-string v10, "com.android.launcher.action.settings.LAUNCHER_SETTINGS"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_740
    const/4 v2, 0x2

    const v3, 0x7f080753

    const v5, 0x7f12054a

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    fill-array-data v8, :array_7a0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string/jumbo v4, "personality_icon_style"

    const-string v9, "com.oplus.uxdesign.personal.PersonalActivity"

    const-string v10, "com.oplus.uxdesign.personal.ACTION_LAUNCH_PERSONAL"

    const-string v11, "com.oplus.uxdesign"

    const-string v12, "com.oplus.uxdesign.personal.PersonalActivity"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v1

    if-eqz v1, :cond_79f

    const/4 v2, 0x2

    const v3, 0x7f0805ec

    const v5, 0x7f120565

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x2

    new-array v8, v1, [I

    aput v18, v8, v21

    const v1, 0x7f120565

    aput v1, v8, v19

    const-class v1, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const-string v4, "launcher_layout_upgrade_guide_settings"

    const-string v10, "is_from_launcher_settings"

    const-string v11, "com.android.launcher"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v16}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;->build(Landroid/content/Context;IILjava/lang/String;III[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;Ljava/lang/Object;Ljava/lang/String;I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->autoAddItems(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;)V

    :cond_79f
    return-void

    :array_7a0
    .array-data 4
        0x7f1203fd
        0x7f12054a
    .end array-data
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mDependencySearchItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    invoke-virtual {v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->getDependency()Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;->enable(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v2}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->getKey()Ljava/lang/String;

    move-result-object v2

    instance-of v5, v5, Lcom/android/launcher/settings/LauncherIndexablesProvider$DependencyApp;

    if-eqz v5, :cond_3c

    invoke-static {v2, v7}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    :cond_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryNonIndexableKeys key = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", nonIndexKey = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SearchIndex"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19

    :cond_71
    new-array p0, v3, [Ljava/lang/Object;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_82

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isSupportShowInputInDrawer:Z

    if-eqz v5, :cond_82

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v5

    if-nez v5, :cond_82

    move v5, v3

    goto :goto_83

    :cond_82
    move v5, v4

    :goto_83
    const-string v6, "key_show_inputmethod_in_drawer"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_96

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_96

    move v5, v3

    goto :goto_97

    :cond_96
    move v5, v4

    :goto_97
    const-string v6, "key_drawer_mode_settings"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_ac

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v5

    if-eqz v5, :cond_ac

    move v5, v3

    goto :goto_ad

    :cond_ac
    move v5, v4

    :goto_ad
    const-string v6, "key_branch_personalize_search"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_bc

    move v5, v3

    goto :goto_bd

    :cond_bc
    move v5, v4

    :goto_bd
    const-string v6, "launcher_is_show_indicated_app"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_cc

    move v5, v3

    goto :goto_cd

    :cond_cc
    move v5, v4

    :goto_cd
    const-string v6, "add_app_to_launcher"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v5, 0x3

    if-eq v1, v5, :cond_dd

    move v6, v3

    goto :goto_de

    :cond_dd
    move v6, v4

    :goto_de
    const-string v7, "launcher_mode"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eq v1, v5, :cond_ed

    move v6, v3

    goto :goto_ee

    :cond_ed
    move v6, v4

    :goto_ee
    const-string v7, "key_launcher_mode_introduction"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eq v1, v5, :cond_103

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v6

    if-nez v6, :cond_103

    move v6, v3

    goto :goto_104

    :cond_103
    move v6, v4

    :goto_104
    const-string v7, "launcher_layout"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eq v1, v5, :cond_113

    move v6, v3

    goto :goto_114

    :cond_113
    move v6, v4

    :goto_114
    const-string/jumbo v7, "personality_launcher_layout"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eq v1, v5, :cond_128

    sget-boolean v6, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    if-eqz v6, :cond_128

    move v6, v3

    goto :goto_129

    :cond_128
    move v6, v4

    :goto_129
    const-string v7, "key_launcher_icon_fallen_switch"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v6

    const-string v7, "key_dock_expand"

    invoke-static {v7, v6}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eq v1, v5, :cond_153

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_153

    sget-object v5, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v5

    if-eqz v5, :cond_153

    move v5, v3

    goto :goto_154

    :cond_153
    move v5, v4

    :goto_154
    const-string v6, "launcher_is_show_search_box"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_16b

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_171

    :cond_16b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v5

    if-eqz v5, :cond_173

    :cond_171
    move v5, v3

    goto :goto_174

    :cond_173
    move v5, v4

    :goto_174
    xor-int/2addr v5, v3

    const-string v6, "launcher_slide_down"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_190

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v5

    if-eqz v5, :cond_190

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result v5

    if-eqz v5, :cond_190

    move v5, v3

    goto :goto_191

    :cond_190
    move v5, v4

    :goto_191
    const-string v6, "key_add_search_notification"

    invoke-static {v6, v5}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-ne v1, v2, :cond_1a6

    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_1a6

    move v1, v3

    goto :goto_1a7

    :cond_1a6
    move v1, v4

    :goto_1a7
    const-string/jumbo v2, "show_recommend_game"

    invoke-static {v2, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    const-string v2, "launcher_layout_upgrade_guide_settings"

    invoke-static {v2, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "color_lock_setting"

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-array p0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result v1

    const-string v2, "display_phone_manager_entrance"

    invoke-static {v2, v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-array p0, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_1f3

    invoke-static {v0}, Lcom/android/common/config/FeatureOption;->isBrowserNewsAddSearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_1f3

    goto :goto_1f4

    :cond_1f3
    move v3, v4

    :goto_1f4
    const-string v0, "browser_news_switch"

    invoke-static {v0, v3}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getSpecialKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->clearSearchData()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->initSearchData(Landroid/content/Context;)V

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    invoke-virtual {v1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->create()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_17

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider;->mDependencySearchItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;

    invoke-virtual {v0}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->create()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_31

    :cond_45
    return-object p1
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    const-string/jumbo v0, "queryXmlResources:  strings:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchIndex"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/launcher/settings/LauncherIndexablesProvider;->sIndexableRes:[Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_27
    if-ge v3, v1, :cond_78

    const-string/jumbo v4, "queryXmlResources:  n:"

    invoke-static {v4, v3, v0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher/settings/LauncherIndexablesProvider;->sIndexableRes:[Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;

    aget-object v6, v5, v3

    iget v6, v6, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    aget-object v6, v5, v3

    iget v6, v6, Lcom/oplus/settingslib/provider/OplusSearchIndexableResource;->xmlResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    sget-object v7, Lcom/android/launcher/settings/LauncherIndexablesProvider;->sIndexableName:[[I

    aget-object v7, v7, v3

    invoke-static {p0, v7}, Lcom/android/launcher/settings/LauncherIndexablesProvider;->getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aget-object v7, v5, v3

    iget v7, v7, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->iconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "com.android.launcher.action.quickstep.LOCK_SETTINGS"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/oplus/settingslib/provider/OplusSearchIndexableData;->className:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_78
    return-object p1
.end method
