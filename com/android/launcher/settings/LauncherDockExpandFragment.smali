.class public Lcom/android/launcher/settings/LauncherDockExpandFragment;
.super Lcom/android/launcher/settings/BasePreferenceFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

.field private static final KEY_LAUNCHER_DOCK_EXPAND_SP:Ljava/lang/String; = "key_launcher_dock_expand"

.field private static final KEY_LAUNCHER_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "key_launcher_dock_expand_switch"

.field public static final PREF_KEY_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "sp_key_dock_expand_switch"

.field private static final TAG:Ljava/lang/String; = "LauncherDockExpandFragment"


# instance fields
.field private mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mDockExpandSwitchState:Z

.field private mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

.field private mSharePf:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private initIconExpandAreaChoice(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mSharePf:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "sp_key_dock_expand_switch"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    return-void
.end method

.method private initPreference()V
    .registers 2

    const-string v0, "key_launcher_dock_expand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/settings/LauncherDockExpandPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

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

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherDockExpandFragment;->initIconExpandAreaChoice(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherDockExpandFragment;->initPreference()V

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

    const p1, 0x7f150019

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;->destroy()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mLauncherDockExpandPreference:Lcom/android/launcher/settings/LauncherDockExpandPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_launcher_dock_expand_switch"

    if-ne p1, v0, :cond_1b

    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    const-string/jumbo v1, "sp_key_dock_expand_switch"

    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    return v0

    :cond_1b
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

    const-string v0, "key_launcher_dock_expand_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_17

    const/4 v0, 0x0

    goto :goto_28

    :cond_17
    iget-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherDockExpandFragment;->mDockExpandSwitchState:Z

    const-string/jumbo v1, "sp_key_dock_expand_switch"

    invoke-static {p1, v1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_28
    return v0
.end method
