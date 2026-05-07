.class public Lcom/android/launcher3/aer/ProvisioningStateUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisioningStateUtil"

.field private static final WORK_FOLDER_KEY:Ljava/lang/String; = "workFolderSpKey_"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentWorkFolderIdKey()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const-string/jumbo v0, "workFolderSpKey_simple"

    return-object v0

    :cond_10
    const-string/jumbo v0, "workFolderSpKey_standard"

    return-object v0
.end method

.method public static isDeviceOwner(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "ProvisioningStateUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "isDeviceOwner. The context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1b

    const-string p0, "isDeviceOwner. devicePolicyManager is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_29

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1

    :catch_29
    move-exception p0

    const-string v2, "isDeviceOwner. error, "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "isDeviceProvisioned deviceProvision = "

    const-string v2, "ProvisioningStateUtil"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static isProfileOwner(Landroid/content/Context;)Z
    .registers 2

    if-nez p0, :cond_b

    const-string p0, "ProvisioningStateUtil"

    const-string v0, "isProfileOwner. The context is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->hasWorkProfile()Z

    move-result p0

    return p0
.end method

.method public static isUserManagedProfile(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .registers 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_13

    const-string p0, "ProvisioningStateUtil"

    const-string p1, "isUserManagedProfile devicePolicyManager is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method
