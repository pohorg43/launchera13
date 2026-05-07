.class public Lcom/android/launcher/settings/LauncherModeSettingActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""


# instance fields
.field private mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/settings/LauncherModelFragment;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherModelFragment;-><init>()V

    const v1, 0x7f0a024e

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    new-instance p1, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-direct {p1, p0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModeSettingActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-virtual {p1}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initNavigationBar(Landroid/content/Context;Landroid/view/Window;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initToolbarWindow(Landroid/app/Activity;ZZ)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->adjustNavigationBar(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModeSettingActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onDestroy()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
