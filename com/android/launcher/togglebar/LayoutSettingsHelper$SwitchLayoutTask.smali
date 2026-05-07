.class Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/LayoutSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchLayoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCellXCount:I

.field private final mCellYCount:I

.field private final mIsBackActionNotNull:Z

.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;IIZ)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    iput p2, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellXCount:I

    iput p3, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellYCount:I

    iput-boolean p4, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mIsBackActionNotNull:Z

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellXCount:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellYCount:I

    return p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellXCount:I

    iget v1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellYCount:I

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mIsBackActionNotNull:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;IIZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "LayoutSettingsHelper"

    if-eqz p1, :cond_48

    const-string/jumbo p1, "switch layout success!"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask$1;-><init>(Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher/Launcher;->setIsSwitchingLayout(Z)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher/Launcher;->animateFadeScreen(ZLandroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellXCount:I

    iget v1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellYCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/mode/LauncherModeManager;->saveCurrentModeLayout(II)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellXCount:I

    iget v1, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mCellYCount:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p1, :cond_59

    invoke-virtual {p0, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    goto :goto_59

    :cond_48
    const-string p1, "apply grid change failed!"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->mLauncher:Lcom/android/launcher/Launcher;

    const p1, 0x7f1202b0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_59
    :goto_59
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
