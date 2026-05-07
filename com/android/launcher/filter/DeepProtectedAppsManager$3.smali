.class Lcom/android/launcher/filter/DeepProtectedAppsManager$3;
.super Lcom/oplus/app/IOplusAccessControlObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/DeepProtectedAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-direct {p0}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptEnableChange(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onEncryptEnableChange: b = "

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$500(Lcom/android/launcher/filter/DeepProtectedAppsManager;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$400(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEncryptStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEncryptStateChange: colorAccessControlInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeepProtectedAppsManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onHideEnableChange(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onHideEnableChange: b = "

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$500(Lcom/android/launcher/filter/DeepProtectedAppsManager;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$400(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHideStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHideStateChange: colorAccessControlInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object p1, p1, Lcom/oplus/app/OplusAccessControlInfo;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$300(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$400(Lcom/android/launcher/filter/DeepProtectedAppsManager;Ljava/lang/Runnable;)V

    goto :goto_3b

    :cond_2f
    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$3;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivateSafeShortcutIfNeed(Z)V

    :cond_3b
    :goto_3b
    return-void
.end method
