.class Lcom/android/wm/shell/splitscreen/StageTaskListenerExt$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

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
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt$1;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->access$002(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;Ljava/lang/String;)Ljava/lang/String;

    :goto_d
    return-void
.end method
