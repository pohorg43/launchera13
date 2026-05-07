.class public Lcom/android/launcher/settings/LauncherIconFallenFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

.field private static final KEY_LAUNCHER_ICON_FALLEN_INTRODUCTION:Ljava/lang/String; = "key_launcher_mode_introduction"

.field public static final KEY_LAUNCHER_ICON_FALLEN_SWITCH:Ljava/lang/String; = "key_launcher_icon_fallen_switch"

.field public static final PREF_KEY_ICON_FALLEN_SWITCH:Ljava/lang/String; = "sp_key_icon_fallen_switch"

.field private static final TAG:Ljava/lang/String; = "LauncherIconFallenFragment"


# instance fields
.field private mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mIconFallenSwitchState:Z

.field private mLauncherIconFallenPreference:Lcom/android/launcher/settings/LauncherIconFallenPreference;

.field private mSharePf:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method private initIconFallenAreaChoice(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mSharePf:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "sp_key_icon_fallen_switch"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    return-void
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "key_launcher_mode_introduction"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherIconFallenPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mLauncherIconFallenPreference:Lcom/android/launcher/settings/LauncherIconFallenPreference;

    const-string v0, "key_launcher_icon_fallen_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "LauncherIconFallenFragment"

    const-string/jumbo v1, "onControllerInterceptTouchEvent, isInSimpleMode return false"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_41
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherIconFallenFragment;->initIconFallenAreaChoice(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherIconFallenFragment;->initPreference()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1  # Landroid/view/ContextMenu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f15001a

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mLauncherIconFallenPreference:Lcom/android/launcher/settings/LauncherIconFallenPreference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/settings/LauncherIconFallenPreference;->destroy()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mLauncherIconFallenPreference:Lcom/android/launcher/settings/LauncherIconFallenPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_launcher_icon_fallen_switch"

    if-ne p1, v0, :cond_1d

    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mSharePf:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    const-string/jumbo v1, "sp_key_icon_fallen_switch"

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 4

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_launcher_icon_fallen_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_17

    const/4 v0, 0x0

    goto :goto_28

    :cond_17
    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->mIconFallenSwitchState:Z

    const-string/jumbo v1, "sp_key_icon_fallen_switch"

    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_28
    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method
