.class Lcom/oplus/compatui/OplusFullscreenSwitchController$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compatui/OplusFullscreenSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityEnter fullscreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityExit fullscreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    return-void
.end method

.method public onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppEnter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " wait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    iget v0, p1, Lcom/oplus/app/OplusAppEnterInfo;->windowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    iget-object p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p1

    iget-boolean p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    if-eqz p1, :cond_72

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    goto :goto_72

    :cond_4d
    iget-object p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p1

    iget-boolean p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    if-nez p1, :cond_72

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p1

    iget-object p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p1

    iget-boolean p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object p1

    iget-object p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
