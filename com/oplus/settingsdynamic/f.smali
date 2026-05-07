.class public final synthetic Lcom/oplus/settingsdynamic/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

.field public final synthetic b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/f;->a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/f;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

    iput-object p3, p0, Lcom/oplus/settingsdynamic/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/settingsdynamic/f;->d:Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settingsdynamic/f;->a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/f;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

    iget-object v2, p0, Lcom/oplus/settingsdynamic/f;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/f;->d:Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->b(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V

    return-void
.end method
