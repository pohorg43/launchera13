.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterMinimizedFinish(I)V
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterMinimizedFinish() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const-string p1, "onEnterMinimizedFinish"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)V

    :cond_31
    return-void
.end method
