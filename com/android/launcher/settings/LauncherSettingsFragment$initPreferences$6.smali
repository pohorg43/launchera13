.class public final Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartLoading()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_22

    :cond_15
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    if-eqz p0, :cond_22

    instance-of v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$setCompactArrangementting$p(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$syncLauncherArrangementModeStatus(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$stopLoading(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V

    return-void
.end method

.method public onStopLoading()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$getMLauncherLockedSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    :cond_a
    move v0, v2

    goto :goto_13

    :cond_c
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_13
    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v2

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    :goto_23
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v3}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_30

    :cond_2c
    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;->this$0:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->access$setCompactArrangementting$p(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V

    return-void
.end method
