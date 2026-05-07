.class Lcom/oplus/settingsdynamic/SettingsDynamicController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settingsdynamic/SettingsDynamicController;->createPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

.field public final synthetic val$finalOplusPreference:Landroidx/preference/Preference;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->val$finalOplusPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartLoading()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onSwitchStartLoading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->val$finalOplusPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;->val$key:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->o(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onStopLoading()V
    .registers 1

    return-void
.end method
