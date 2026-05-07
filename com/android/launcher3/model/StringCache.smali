.class public Lcom/android/launcher3/model/StringCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALL_APPS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB"

.field private static final ALL_APPS_PERSONAL_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

.field private static final ALL_APPS_WORK_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB"

.field private static final ALL_APPS_WORK_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

.field private static final DISABLED_BY_ADMIN_MESSAGE:Ljava/lang/String; = "Launcher.DISABLED_BY_ADMIN_MESSAGE"

.field private static final PREFIX:Ljava/lang/String; = "Launcher."

.field private static final WIDGETS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.WIDGETS_PERSONAL_TAB"

.field private static final WIDGETS_WORK_TAB:Ljava/lang/String; = "Launcher.WIDGETS_WORK_TAB"

.field public static final WORK_FOLDER_NAME:Ljava/lang/String; = "Launcher.WORK_FOLDER_NAME"

.field private static final WORK_PROFILE_EDU:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU"

.field private static final WORK_PROFILE_EDU_ACCEPT:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU_ACCEPT"

.field private static final WORK_PROFILE_ENABLE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_ENABLE_BUTTON"

.field private static final WORK_PROFILE_PAUSED_DESCRIPTION:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

.field private static final WORK_PROFILE_PAUSED_TITLE:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_TITLE"

.field private static final WORK_PROFILE_PAUSE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSE_BUTTON"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsPersonalTabAccessibility:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public allAppsWorkTabAccessibility:Ljava/lang/String;

.field public disabledByAdminMessage:Ljava/lang/String;

.field public widgetsPersonalTab:Ljava/lang/String;

.field public widgetsWorkTab:Ljava/lang/String;

.field public workFolderName:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEduAccept:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/StringCache;->lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/StringCache;->getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x21
    .end annotation

    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    :try_start_8
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/icons/k;

    invoke-direct {v0, p1, p3}, Lcom/android/launcher3/icons/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUpdatableEnterpriseSting error, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringCache"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/StringCache;
    .registers 3

    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    return-object p0
.end method

.method public loadStrings(Landroid/content/Context;)V
    .registers 4

    const-string v0, "Launcher.WORK_PROFILE_EDU"

    const v1, 0x7f1205da

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    const v1, 0x7f1205d7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    const v1, 0x7f1205d3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    const v1, 0x7f1205cf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    const v1, 0x7f1205ce

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    const v1, 0x7f1205cd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB"

    const v1, 0x7f1200ca

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB"

    const v1, 0x7f1200c4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

    const v1, 0x7f1200bf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

    const v1, 0x7f1200be

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.WORK_FOLDER_NAME"

    const v1, 0x7f1205d4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_WORK_TAB"

    const v1, 0x7f1205c8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_PERSONAL_TAB"

    const v1, 0x7f1205c6

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.DISABLED_BY_ADMIN_MESSAGE"

    const v1, 0x7f12031a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    return-void
.end method
