.class public final synthetic Lcom/android/launcher/settings/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/settings/LauncherSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/settings/e;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/settings/e;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_29

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->f(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_d  #0x3
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->n(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_14  #0x2
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->o(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x1
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->p(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_22  #0x0
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->e(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :goto_29
    iget-object p0, p0, Lcom/android/launcher/settings/e;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->m(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1b  #00000001
        :pswitch_14  #00000002
        :pswitch_d  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
