.class Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/widget/AppWidgetListenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenConsumerTask"
.end annotation


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/launcher/widget/AppWidgetListenHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->this$0:Lcom/android/launcher/widget/AppWidgetListenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->this$0:Lcom/android/launcher/widget/AppWidgetListenHelper;

    invoke-static {v0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->access$100(Lcom/android/launcher/widget/AppWidgetListenHelper;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, "AppWidgetListenHelper"

    if-nez v0, :cond_1d

    const-string v0, "launcher is null, quit: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->mConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "ListenConsumerTask isUnlock = "

    invoke-static {v2, v0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->this$0:Lcom/android/launcher/widget/AppWidgetListenHelper;

    iget-object p0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->mConsumer:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->access$200(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V

    goto :goto_3b

    :cond_30
    iget-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;->this$0:Lcom/android/launcher/widget/AppWidgetListenHelper;

    invoke-static {v0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->access$300(Lcom/android/launcher/widget/AppWidgetListenHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3b
    return-void
.end method
