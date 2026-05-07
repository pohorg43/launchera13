.class Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    const-string v0, "LockSettingPresenter"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-static {v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->access$002(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Z)Z

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->updateInterestedApps()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: mIsPowerSavingModleOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter$1;->this$0:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-static {v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->access$000(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v1

    const-string v2, "onChange error: "

    invoke-static {v2, v1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_31
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
