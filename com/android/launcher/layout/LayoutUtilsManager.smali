.class public Lcom/android/launcher/layout/LayoutUtilsManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;,
        Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;
    }
.end annotation


# static fields
.field public static final IS_DEFAULT_COMPACT_ARRANGEMENT:Z = false

.field public static final PREF_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final TAG:Ljava/lang/String; = "LayoutUtilsManager"

.field private static sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->COMPACT:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    sput-object v0, Lcom/android/launcher/layout/LayoutUtilsManager;->sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;
    .registers 2

    sget-object v0, Lcom/android/launcher/layout/LayoutUtilsManager$1;->$SwitchMap$com$android$launcher$layout$LayoutUtilsManager$LayoutArrangementType:[I

    sget-object v1, Lcom/android/launcher/layout/LayoutUtilsManager;->sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const-string v0, "getLayoutUtils -- Invalid type: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/layout/LayoutUtilsManager;->sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutUtilsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CompactLayoutUtils;->getInstance()Lcom/android/launcher/layout/CompactLayoutUtils;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-static {}, Lcom/android/launcher/layout/FreeLayoutUtils;->getInstance()Lcom/android/launcher/layout/FreeLayoutUtils;

    move-result-object v0

    return-object v0

    :cond_2e
    invoke-static {}, Lcom/android/launcher/layout/CompactLayoutUtils;->getInstance()Lcom/android/launcher/layout/CompactLayoutUtils;

    move-result-object v0

    return-object v0
.end method

.method public static initLayoutArrangementType(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "layout_is_compact"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->isLauncherFirstLoad(Landroid/content/Context;)Z

    move-result p0

    if-nez v2, :cond_1d

    xor-int/lit8 v3, p0, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_22

    :cond_1d
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_22
    const-string v0, "initLayoutArrangementType -- isCompactParamExist = "

    const-string v1, ", isLauncherFirstLoad = "

    const-string v4, ", isCompact = "

    invoke-static {v0, v2, v1, p0, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LayoutUtilsManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher/layout/LayoutUtilsManager;->setLayoutArrangementType(Z)V

    return-void
.end method

.method public static isCompactArrangement()Z
    .registers 2

    sget-object v0, Lcom/android/launcher/layout/LayoutUtilsManager;->sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    sget-object v1, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->COMPACT:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static saveIsCompact(Landroid/content/Context;Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveIsCompact isCompact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutUtilsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "layout_is_compact"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_30

    :cond_2a
    const-string/jumbo v0, "saveIsCompact sharedPreferences is null!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutUtilsManager;->setLayoutArrangementType(Z)V

    if-eqz p1, :cond_40

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_40
    return-void
.end method

.method public static setLayoutArrangementType(Z)V
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->COMPACT:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;->FREE:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    :goto_7
    sput-object p0, Lcom/android/launcher/layout/LayoutUtilsManager;->sLayoutArrangementType:Lcom/android/launcher/layout/LayoutUtilsManager$LayoutArrangementType;

    return-void
.end method
