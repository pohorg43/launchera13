.class Lcom/oplus/splitscreen/SplitScreenGuideManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/OplusKeyEventManager$OnKeyEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenGuideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$3;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    sget-object v2, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    const-string v3, "onKeyEvent action="

    const-string v4, ",keycode="

    const-string v5, ",repeatCount="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3b

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$3;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    const-string v2, "KEYCODE_HOME"

    invoke-virtual {v0, v2}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->dismissGuidDialog(Ljava/lang/String;)V

    :cond_2e
    const/16 v0, 0xbb

    if-ne v1, v0, :cond_3b

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$3;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    const-string p1, "KEYCODE_APP_SWITCH"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->dismissGuidDialog(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
