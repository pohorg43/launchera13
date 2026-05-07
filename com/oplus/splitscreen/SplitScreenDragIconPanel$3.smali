.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
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

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_d

    :cond_6
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$3;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const-string p1, "handmessage"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Ljava/lang/String;)Z

    :goto_d
    return-void
.end method
