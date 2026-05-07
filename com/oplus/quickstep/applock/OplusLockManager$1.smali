.class Lcom/oplus/quickstep/applock/OplusLockManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/applock/OplusLockManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/applock/OplusLockManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    const-string p1, "OplusLockManager"

    const-string v0, "QuickStep"

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->SMART_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    :try_start_c
    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$000(Lcom/oplus/quickstep/applock/OplusLockManager;)I

    move-result p2

    const/4 v1, 0x1

    if-ne v1, p2, :cond_24

    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$100(Lcom/oplus/quickstep/applock/OplusLockManager;)Lcom/oplus/quickstep/applock/AppLockModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/applock/AppLockModel;->backupLockApps()V

    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$202(Lcom/oplus/quickstep/applock/OplusLockManager;Z)Z

    goto :goto_35

    :cond_24
    if-nez p2, :cond_35

    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$100(Lcom/oplus/quickstep/applock/OplusLockManager;)Lcom/oplus/quickstep/applock/AppLockModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/applock/AppLockModel;->restoreLockApps()V

    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$202(Lcom/oplus/quickstep/applock/OplusLockManager;Z)Z

    :cond_35
    :goto_35
    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$300(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: mIsSmartEnableOn:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager$1;->this$0:Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$200(Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_54} :catch_55

    goto :goto_6a

    :catch_55
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentObserver error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method
