.class public Lcom/oplus/quickstep/locksetting/LockSettingRecoveryService;
.super Lcom/oplus/settingslib/service/RecoveryService;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "LockSettingRecoveryService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/settingslib/service/RecoveryService;-><init>()V

    return-void
.end method


# virtual methods
.method public doRecoveryOperation(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "QuickStep"

    const-string v0, "LockSettingRecoveryService"

    const-string v1, "doRecoveryOperation"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->recoveryData(Landroid/content/Context;)V

    :cond_1a
    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->recoveryPhoneManagerSwitch()Z

    invoke-static {p1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->recoveryDisplaySwitch()Z

    move-result p0

    return p0
.end method
