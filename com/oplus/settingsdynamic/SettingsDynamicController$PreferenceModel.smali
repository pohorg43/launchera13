.class Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingsdynamic/SettingsDynamicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferenceModel"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategoryKey:Ljava/lang/String;

.field private mChecked:I

.field private mDefaultValue:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mEntries:Ljava/lang/String;

.field private mEntryValues:Ljava/lang/String;

.field private mIntentClass:Ljava/lang/String;

.field private mIntentExtraKey:Ljava/lang/String;

.field private mIntentExtraValue:Ljava/lang/String;

.field private mIntentPackage:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;


# direct methods
.method public constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "checked"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mChecked:I

    const-string p1, "intentExtraKey"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentExtraKey:Ljava/lang/String;

    const-string p1, "intentExtraValue"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentExtraValue:Ljava/lang/String;

    const-string p1, "intentPackage"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentPackage:Ljava/lang/String;

    const-string p1, "intentClass"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentClass:Ljava/lang/String;

    const-string p1, "dialogTitle"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mDialogTitle:Ljava/lang/String;

    const-string p1, "defaultValue"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mDefaultValue:Ljava/lang/String;

    const-string p1, "entries"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mEntries:Ljava/lang/String;

    const-string p1, "entryValues"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mEntryValues:Ljava/lang/String;

    const-string p1, "categoryKey"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mCategoryKey:Ljava/lang/String;

    const-string p1, "intent_action"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mCategoryKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mChecked:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mDialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mEntryValues:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentClass:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentExtraKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentExtraValue:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->mIntentPackage:Ljava/lang/String;

    return-object p0
.end method
