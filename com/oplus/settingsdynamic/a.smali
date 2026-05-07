.class public final synthetic Lcom/oplus/settingsdynamic/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/settingsdynamic/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V
    .registers 5

    iput p3, p0, Lcom/oplus/settingsdynamic/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/oplus/settingsdynamic/a;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2d

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->i(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_13  #0x1
    iget-object v0, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->f(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_20  #0x0
    iget-object v0, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->j(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_2d
    iget-object v0, p0, Lcom/oplus/settingsdynamic/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->g(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_13  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
