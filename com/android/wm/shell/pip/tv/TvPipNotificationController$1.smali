.class Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipNotificationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$100(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$100(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$202(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$300(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    return-void
.end method

.method public onExpandedAspectRatioChanged(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateExpansionState()V

    return-void
.end method

.method public onSubtitleChanged(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$502(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$300(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$402(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$300(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    return-void
.end method
