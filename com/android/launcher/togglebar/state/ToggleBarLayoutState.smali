.class public Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;
.super Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
.source ""


# static fields
.field public static final LAYOUT_STATE:Ljava/lang/String; = "layout"


# instance fields
.field private mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canSnapWorkspacePage()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public createUIController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
    .registers 3

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    iget-object v1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;->mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    const v0, 0x7f12054b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;->mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;

    return-object p0
.end method
