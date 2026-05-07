.class public final Lcom/android/launcher/familyspace/FamilySpaceUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;
    }
.end annotation


# static fields
.field public static final FAMILYSPACE_PKG:Ljava/lang/String; = "com.coloros.familyguard"

.field private static final FAMILY_SPACE_DEFENDED_VALUE:I = 0xf

.field public static final INSTANCE:Lcom/android/launcher/familyspace/FamilySpaceUtil;

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final REQUEST_CHECK_UNINSTALLABLE:I = 0x3e8

.field private static final SETTING_FAMILY_SPACE_DEFENDED:Ljava/lang/String; = "oplus_system_family_defend"

.field private static final TAG:Ljava/lang/String; = "FamilySpaceUtil"

.field private static final UNINSTALL_ACTION:Ljava/lang/String; = "oplus.intent.action.settings.UNINSTALL_APP"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/familyspace/FamilySpaceUtil;

    invoke-direct {v0}, Lcom/android/launcher/familyspace/FamilySpaceUtil;-><init>()V

    sput-object v0, Lcom/android/launcher/familyspace/FamilySpaceUtil;->INSTANCE:Lcom/android/launcher/familyspace/FamilySpaceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->handleActivityResult$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/PendingRequestArgs;)V

    return-void
.end method

.method public static final handleActivityResult(Landroid/content/Context;ILandroid/content/Intent;Lcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleActivityResult: resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FamilySpaceUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6e

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_32

    :cond_30
    move p1, v0

    goto :goto_3b

    :cond_32
    const-string/jumbo v2, "uninstall_continue"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, p1, :cond_30

    :goto_3b
    if-eqz p1, :cond_6e

    new-instance p1, Lcom/android/launcher/UninstallRemoveAppPanel;

    invoke-direct {p1, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p2}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->isLauncherDialogShown()Z

    move-result v0

    if-nez v0, :cond_66

    new-instance v0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/PendingRequestArgs;)V

    invoke-direct {v0, p0, p2, v1}, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/AppInfo;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_73

    :cond_66
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->isLauncherDialogShown()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->startFamilySpaceUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_73

    :cond_6e
    const-string p0, "handleActivityResult: Uninstall request failed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return-void
.end method

.method private static final handleActivityResult$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/PendingRequestArgs;)V
    .registers 4

    const-string v0, "$uninstallRemoveAppPanel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uninstallItemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->isLauncherDialogShown()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->startFamilySpaceUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method public static final isCloneAppEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cloned Package : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , enabled: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FamilySpaceUtil"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    const/4 p0, 0x1

    :goto_43
    return p0
.end method

.method public static final isFamilySpaceDefended(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFeatureSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "oplus_system_family_defend"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "oplus_system_family_defend = "

    const-string v3, "FamilySpaceUtil"

    invoke-static {p0, v0, v3}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p0, p0, 0xf

    if-ne p0, v1, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    return v1
.end method

.method public static final isFamilySpaceDefendedPackage(Landroid/content/Context;Lcom/android/launcher/model/UninstallItemInfoWithIcon;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_9

    goto :goto_14

    :cond_9
    invoke-virtual {p1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    :goto_14
    const-string v1, "com.coloros.familyguard"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result p1

    if-nez p1, :cond_2a

    invoke-static {p0}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFamilySpaceDefended(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public static final isFeatureSupported()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v2

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/2addr v0, v1

    return v0
.end method

.method public static final startFamilySpaceVerifier(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfoWithIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "startFamilySpaceVerifier: launcherDialog: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FamilySpaceUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oplus.intent.action.settings.UNINSTALL_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x210000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1, p2, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forFamilySpaceIntent(IILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
