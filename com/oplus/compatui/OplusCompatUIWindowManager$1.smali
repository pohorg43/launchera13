.class Lcom/oplus/compatui/OplusCompatUIWindowManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/compatui/OplusCompatUILayout$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compatui/OplusCompatUIWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusCompatUIWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreenClick(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-static {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->access$300(Lcom/oplus/compatui/OplusCompatUIWindowManager;)Lcom/oplus/compatui/OplusFullscreenSwitchController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->showSwitchFullscreenDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onMoveBottomClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->onMoveRightClick()V

    return-void
.end method

.method public onMoveLeftClick()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-static {v1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->access$000(Lcom/oplus/compatui/OplusCompatUIWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/compatmode/OplusCompatModeManager;->moveCompatModeWindowToLeft(I)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-static {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->access$100(Lcom/oplus/compatui/OplusCompatUIWindowManager;I)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception p0

    const-string v0, "OplusCompatUIWindowManager"

    const-string v1, "onMoveLeftClick "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public onMoveRightClick()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-static {v1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->access$200(Lcom/oplus/compatui/OplusCompatUIWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/compatmode/OplusCompatModeManager;->moveCompatModeWindowToRight(I)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->this$0:Lcom/oplus/compatui/OplusCompatUIWindowManager;

    invoke-static {p0, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->access$100(Lcom/oplus/compatui/OplusCompatUIWindowManager;I)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception p0

    const-string v0, "OplusCompatUIWindowManager"

    const-string v1, "onMoveRightClick "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public onMoveTopClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusCompatUIWindowManager$1;->onMoveLeftClick()V

    return-void
.end method
