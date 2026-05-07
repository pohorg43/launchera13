.class Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;-><init>(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;->this$0:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_1f

    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;->this$0:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->access$100(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;I)V

    goto :goto_1f

    :cond_16
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;->this$0:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->access$000(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :goto_1f
    return-void
.end method
