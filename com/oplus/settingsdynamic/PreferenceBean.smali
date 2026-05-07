.class public Lcom/oplus/settingsdynamic/PreferenceBean;
.super Lcom/oplus/settingsdynamic/CategoryBean;
.source ""


# static fields
.field public static sCOLUMNPREFERENCE:[Ljava/lang/String;


# instance fields
.field public mCategoryKey:Ljava/lang/String;

.field public mDefaultValue:Ljava/lang/String;

.field public mDialogTitle:Ljava/lang/String;

.field public mEntries:[Ljava/lang/String;

.field public mEntryValues:[Ljava/lang/String;

.field public mIntentAction:Ljava/lang/String;

.field public mIntentClass:Ljava/lang/String;

.field public mIntentExtraKey:Ljava/lang/String;

.field public mIntentExtraValue:Ljava/lang/String;

.field public mIntentPackage:Ljava/lang/String;

.field public mIsChecked:I


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    const-string v0, "key"

    const-string v1, "order"

    const-string v2, "visible"

    const-string v3, "enable"

    const-string v4, "type"

    const-string v5, "title"

    const-string v6, "summary"

    const-string v7, "assignment"

    const-string v8, "checked"

    const-string v9, "intentExtraKey"

    const-string v10, "intentExtraValue"

    const-string v11, "intentPackage"

    const-string v12, "intentClass"

    const-string v13, "dialogTitle"

    const-string v14, "defaultValue"

    const-string v15, "entries"

    const-string v16, "entryValues"

    const-string v17, "categoryKey"

    const-string v18, "intent_action"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/settingsdynamic/PreferenceBean;->sCOLUMNPREFERENCE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/CategoryBean;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p4, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mCategoryKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mCategoryKey:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mDialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getEntries()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getIntentAction()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentClass()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentClass:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentExtraKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentExtraKey:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentExtraValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentExtraValue:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentPackage:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIsChecked:I

    return p0
.end method

.method public setCategoryKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mCategoryKey:Ljava/lang/String;

    return-void
.end method

.method public setChecked(I)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIsChecked:I

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mDialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setEntries([Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public setEntryValues([Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentAction:Ljava/lang/String;

    return-void
.end method

.method public setIntentClass(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentExtraKey(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentExtraKey:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentExtraValue(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentExtraValue:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentPackage(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 2

    iput-object p1, p0, Lcom/oplus/settingsdynamic/PreferenceBean;->mIntentPackage:Ljava/lang/String;

    return-object p0
.end method
