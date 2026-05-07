.class Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-static {v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->access$800(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_by_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-static {v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->access$900(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-static {v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->access$1000(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->changeCellsLayout(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-static {p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->access$1000(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;->this$0:Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->access$1000(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_43
    return-void
.end method
