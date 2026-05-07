.class Lcom/android/launcher/operators/GeneralCustomizer$2;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/operators/GeneralCustomizer;->replaceAutoInstallAfterOOBE(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/operators/GeneralCustomizer;

.field public final synthetic val$launcherModel:Lcom/android/launcher3/LauncherModel;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/GeneralCustomizer;Landroid/os/Handler;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    iput-object p3, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->val$launcherModel:Lcom/android/launcher3/LauncherModel;

    iput-object p4, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string/jumbo p1, "provision "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-static {v0}, Lcom/android/launcher/operators/GeneralCustomizer;->access$000(Lcom/android/launcher/operators/GeneralCustomizer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeneralCustomizer"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCustomizer;->access$000(Lcom/android/launcher/operators/GeneralCustomizer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCustomizer;->access$000(Lcom/android/launcher/operators/GeneralCustomizer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->this$0:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-static {p1}, Lcom/android/launcher/operators/GeneralCustomizer;->access$000(Lcom/android/launcher/operators/GeneralCustomizer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->val$launcherModel:Lcom/android/launcher3/LauncherModel;

    iget-object p0, p0, Lcom/android/launcher/operators/GeneralCustomizer$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    :cond_43
    return-void
.end method
