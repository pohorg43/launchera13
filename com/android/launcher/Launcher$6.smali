.class Lcom/android/launcher/Launcher$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocateStateChange(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher/Launcher;->access$602(Lcom/android/launcher/Launcher;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$600(Lcom/android/launcher/Launcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locationState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "statusbar"

    const/4 v1, 0x0

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    const/high16 p1, 0x1600000

    iget-object v3, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p1

    const-string/jumbo v0, "on_pause"

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->access$700(Lcom/android/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher/Launcher;->access$702(Lcom/android/launcher/Launcher;Z)Z

    iget-object p0, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    goto :goto_7e

    :cond_6b
    iget-object p1, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iput-boolean v1, p1, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    iget-object p0, p0, Lcom/android/launcher/Launcher$6;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_7e
    :goto_7e
    return-void
.end method
