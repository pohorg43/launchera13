.class Lcom/android/common/multiapp/MultiAppManager$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/multiapp/MultiAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/multiapp/MultiAppManager;


# direct methods
.method public constructor <init>(Lcom/android/common/multiapp/MultiAppManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/multiapp/MultiAppManager$1;->this$0:Lcom/android/common/multiapp/MultiAppManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiAppManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oplus.intent.action.MULTI_APP_PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_50

    const-string/jumbo v0, "oplus.intent.action.MULTI_APP_PACKAGE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    goto :goto_55

    :cond_4a
    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager$1;->this$0:Lcom/android/common/multiapp/MultiAppManager;

    invoke-static {p0, p1, v1}, Lcom/android/common/multiapp/MultiAppManager;->access$100(Lcom/android/common/multiapp/MultiAppManager;Ljava/lang/String;Z)V

    goto :goto_55

    :cond_50
    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager$1;->this$0:Lcom/android/common/multiapp/MultiAppManager;

    invoke-static {p0, p1, v1}, Lcom/android/common/multiapp/MultiAppManager;->access$000(Lcom/android/common/multiapp/MultiAppManager;Ljava/lang/String;Z)V

    :goto_55
    return-void
.end method
