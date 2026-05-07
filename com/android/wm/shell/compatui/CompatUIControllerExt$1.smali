.class Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;
.super Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/compatui/CompatUIControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-direct {p0}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->lambda$onCompactWindowStart$0(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    return-void
.end method

.method private synthetic lambda$onCompactWindowStart$0(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .registers 11

    iget-object v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v1, "oplusCompat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$200(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Z

    move-result v1

    iget-object v3, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v4, "rotatioChange"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v1, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_29
    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {v3}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$300(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Z

    move-result v3

    iget-object v4, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string/jumbo v5, "topIsFullscreen"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v3, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_40
    iget-object v4, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v5, "refreshCompactInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_52

    :cond_51
    move v4, v2

    :goto_52
    iget-object v5, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v6, "recentsStart"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v2, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_62
    iget-object v5, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v6, "recentsAnimationFinished"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "onCompactWindowStart "

    if-eqz v5, :cond_a8

    iget-object v5, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    const-string v8, "focusedApp"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    iget-object p1, p1, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->extension:Landroid/os/Bundle;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    :cond_85
    const-string p1, ""

    :goto_87
    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {v6, v5, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$400(Lcom/android/wm/shell/compatui/CompatUIControllerExt;ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " focusedApp "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V

    :cond_a8
    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    const-string v5, " topFullScreen "

    const-string v6, " refresh "

    invoke-static {v7, v1, v5, v3, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fromCompatMode "

    const-string v7, " recentsStart "

    invoke-static {v5, v4, v6, v0, v7}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {p1, v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$500(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$600(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {p1, v4}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$700(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$800(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V

    return-void
.end method


# virtual methods
.method public onCompactWindowDied(Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompactWindowDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V

    return-void
.end method

.method public onCompactWindowExit(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompactWindowExit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V

    return-void
.end method

.method public onCompactWindowStart(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompactWindowStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->access$100(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/compatui/c;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/compatui/c;-><init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
