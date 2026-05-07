.class Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;
.super Landroid/os/FileObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/NewUpdatedAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewUpdatedAppsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/NewUpdatedAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p1}, Lcom/android/launcher/NewUpdatedAppsManager;->access$000(Lcom/android/launcher/NewUpdatedAppsManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->access$100()Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p2, "NewUpdatedAppsManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent newUpdatedAppList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object p2, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p2}, Lcom/android/launcher/NewUpdatedAppsManager;->access$200(Lcom/android/launcher/NewUpdatedAppsManager;)Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

    move-result-object p2

    if-eqz p2, :cond_49

    iget-object p2, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p2}, Lcom/android/launcher/NewUpdatedAppsManager;->access$200(Lcom/android/launcher/NewUpdatedAppsManager;)Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {v0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->access$300(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;->onRemoveGreenPointApps(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p2}, Lcom/android/launcher/NewUpdatedAppsManager;->access$200(Lcom/android/launcher/NewUpdatedAppsManager;)Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {v0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->access$400(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;->onAddGreenPointApps(Ljava/util/ArrayList;)V

    :cond_49
    iget-object p2, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    monitor-enter p2

    :try_start_4c
    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "NewUpdatedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent mNewUpdatedAppPkgNames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {v2}, Lcom/android/launcher/NewUpdatedAppsManager;->access$500(Lcom/android/launcher/NewUpdatedAppsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    iget-object p0, p0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;->this$0:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-static {p0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->access$502(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit p2

    return-void

    :catchall_76
    move-exception p0

    monitor-exit p2
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_76

    throw p0
.end method
