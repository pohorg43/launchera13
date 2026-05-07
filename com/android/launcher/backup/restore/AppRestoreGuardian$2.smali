.class Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/backup/restore/AppRestoreGuardian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;


# direct methods
.method public constructor <init>(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$100(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I

    move-result v0

    const-string v1, "AppRestoreGuardian"

    const/16 v2, 0xa

    if-le v0, v2, :cond_13

    const-string/jumbo p0, "stop detect after max detect attempt count"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$200(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_23

    const-string/jumbo p0, "stop detect after max detect count"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$108(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$300(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$208(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$400(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Z

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;->this$0:Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    invoke-static {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->access$500(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
