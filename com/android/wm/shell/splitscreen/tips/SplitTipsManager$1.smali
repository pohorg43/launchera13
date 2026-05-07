.class Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    goto :goto_17

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTips()V

    goto :goto_17

    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->showTips()V

    :goto_17
    return-void
.end method
