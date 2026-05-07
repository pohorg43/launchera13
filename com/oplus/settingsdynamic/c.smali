.class public final synthetic Lcom/oplus/settingsdynamic/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/settingsdynamic/SettingsDynamicController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/settingsdynamic/c;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/c;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/settingsdynamic/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/oplus/settingsdynamic/c;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-static {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->k(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/oplus/settingsdynamic/c;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-static {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->g(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/oplus/settingsdynamic/c;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-static {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->h(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/oplus/settingsdynamic/c;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-static {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->d(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
