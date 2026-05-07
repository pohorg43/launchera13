.class public final synthetic Lcom/oplus/settingsdynamic/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V
    .registers 4

    iput p3, p0, Lcom/oplus/settingsdynamic/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/b;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget v0, p0, Lcom/oplus/settingsdynamic/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/settingsdynamic/b;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->e(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :goto_f
    iget-object v0, p0, Lcom/oplus/settingsdynamic/b;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->l(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
