.class public final synthetic Lcom/oplus/settingsdynamic/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

.field public final synthetic b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/e;->a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/e;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/settingsdynamic/e;->a:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/e;->b:Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

    invoke-static {v0, p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->a(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V

    return-void
.end method
