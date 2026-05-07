.class public abstract Lcom/oplus/settingsdynamic/SettingsDynamicProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsDynamicProvider"


# instance fields
.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/oplus/settingsdynamic/CategoryBean;Landroid/database/MatrixCursor;)Landroid/database/Cursor;
    .registers 7

    sget-object p0, Lcom/oplus/settingsdynamic/CategoryBean;->sCOLUMNCATRGORY:[Ljava/lang/String;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Object;

    instance-of v0, p1, Lcom/oplus/settingsdynamic/PreferenceBean;

    if-eqz v0, :cond_77

    sget-object p0, Lcom/oplus/settingsdynamic/PreferenceBean;->sCOLUMNPREFERENCE:[Ljava/lang/String;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0x8

    move-object v1, p1

    check-cast v1, Lcom/oplus/settingsdynamic/PreferenceBean;

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->isChecked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0x9

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getIntentExtraKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xa

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getIntentExtraValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xb

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getIntentPackage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xc

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getIntentClass()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xd

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xe

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0xf

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getEntries()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-static {v2, v3}, Lcom/oplus/settingsdynamic/SettingsDynamicConstants;->parseString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0x10

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getEntryValues()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/oplus/settingsdynamic/SettingsDynamicConstants;->parseString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0x11

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    const/16 v0, 0x12

    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/PreferenceBean;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_77
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->isVisible()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->isEnable()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getSummary()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/oplus/settingsdynamic/CategoryBean;->getAssignment()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 6

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    const-string v1, "Provider must be exported"

    const-string v2, "SettingsDynamicProvider"

    if-nez v0, :cond_c

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_c
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_14

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_14
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oplus/settingsdynamic/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    new-instance p1, Landroid/content/UriMatcher;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "category"

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    const-string v0, "preference"

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_43

    :cond_3e
    const-string p0, "no permission:com.oplus.permission.safe.SETTINGS"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive call: method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SettingsDynamicProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_c0

    goto/16 :goto_89

    :sswitch_32
    const-string p2, "onSwitch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_89

    :cond_3b
    const/4 v1, 0x7

    goto :goto_89

    :sswitch_3d
    const-string p2, "onResume"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_89

    :cond_46
    const/4 v1, 0x6

    goto :goto_89

    :sswitch_48
    const-string p2, "onCreate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_89

    :cond_51
    const/4 v1, 0x5

    goto :goto_89

    :sswitch_53
    const-string p2, "onStop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_89

    :cond_5c
    const/4 v1, 0x4

    goto :goto_89

    :sswitch_5e
    const-string p2, "onJump"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_89

    :cond_67
    const/4 v1, 0x3

    goto :goto_89

    :sswitch_69
    const-string p2, "onListClick"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_89

    :cond_72
    const/4 v1, 0x2

    goto :goto_89

    :sswitch_74
    const-string p2, "onDestroy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_89

    :cond_7d
    move v1, v0

    goto :goto_89

    :sswitch_7f
    const-string p2, "onStartLoading"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    packed-switch v1, :pswitch_data_e2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "block"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_97  #0x7
    invoke-virtual {p0, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onSwitch(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_9c  #0x6
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onResumeFragment()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_a1  #0x5
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onCreateFragment()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_a6  #0x4
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onStopFragment()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_ab  #0x3
    invoke-virtual {p0, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onJump(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_b0  #0x2
    invoke-virtual {p0, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onListClick(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_b5  #0x1
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onDestroyFragment()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_ba  #0x0
    invoke-virtual {p0, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->onStartLoading(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_c0
    .sparse-switch
        -0x7eb01207 -> :sswitch_7f
        -0x53865ee5 -> :sswitch_74
        -0x4c59eb95 -> :sswitch_69
        -0x3c649153 -> :sswitch_5e
        -0x3c607d7f -> :sswitch_53
        0x3e5a77bb -> :sswitch_48
        0x57429eec -> :sswitch_3d
        0x59f08df3 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_ba  #00000000
        :pswitch_b5  #00000001
        :pswitch_b0  #00000002
        :pswitch_ab  #00000003
        :pswitch_a6  #00000004
        :pswitch_a1  #00000005
        :pswitch_9c  #00000006
        :pswitch_97  #00000007
    .end packed-switch
.end method

.method public createCategoryBean(Ljava/lang/String;ILjava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 4

    new-instance p0, Lcom/oplus/settingsdynamic/CategoryBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/CategoryBean;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "TYPE_CATEGORY"

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/CategoryBean;->setType(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;

    move-result-object p0

    return-object p0
.end method

.method public createPerfrenceBean(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
    .registers 6

    new-instance p0, Lcom/oplus/settingsdynamic/PreferenceBean;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oplus/settingsdynamic/PreferenceBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/CategoryBean;->setType(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;

    move-result-object p0

    check-cast p0, Lcom/oplus/settingsdynamic/PreferenceBean;

    return-object p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllCategory()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/settingsdynamic/CategoryBean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getAllPreference()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/settingsdynamic/PreferenceBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getCategory(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPreference(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const-string p0, "vnd.android.cursor.dir/preference"

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown URI "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const-string p0, "vnd.android.cursor.dir/category"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onCreateFragment()Landroid/os/Bundle;
.end method

.method public onDestroyFragment()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onJump(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onListClick(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onResumeFragment()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartLoading(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStopFragment()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSwitch(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public parseCategory(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/oplus/settingsdynamic/CategoryBean;->sCOLUMNCATRGORY:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getCategory(Ljava/lang/String;)Lcom/oplus/settingsdynamic/CategoryBean;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p0, p1, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->addItem(Lcom/oplus/settingsdynamic/CategoryBean;Landroid/database/MatrixCursor;)Landroid/database/Cursor;

    goto :goto_32

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getAllCategory()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1f

    return-object v0

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/settingsdynamic/CategoryBean;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->addItem(Lcom/oplus/settingsdynamic/CategoryBean;Landroid/database/MatrixCursor;)Landroid/database/Cursor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_32
    :goto_32
    return-object v0
.end method

.method public parsePreference(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/oplus/settingsdynamic/PreferenceBean;->sCOLUMNPREFERENCE:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getPreference(Ljava/lang/String;)Lcom/oplus/settingsdynamic/PreferenceBean;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p0, p1, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->addItem(Lcom/oplus/settingsdynamic/CategoryBean;Landroid/database/MatrixCursor;)Landroid/database/Cursor;

    goto :goto_32

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->getAllPreference()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1f

    return-object v0

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/settingsdynamic/CategoryBean;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->addItem(Lcom/oplus/settingsdynamic/CategoryBean;Landroid/database/MatrixCursor;)Landroid/database/Cursor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_32
    :goto_32
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    if-eqz p4, :cond_9

    array-length p2, p4

    if-lez p2, :cond_9

    const/4 p2, 0x0

    aget-object p2, p4, p2

    goto :goto_b

    :cond_9
    const-string p2, ""

    :goto_b
    iget-object p3, p0, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_28

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1c

    invoke-virtual {p0, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->parsePreference(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unknown Uri "

    invoke-static {p2, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    invoke-virtual {p0, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicProvider;->parseCategory(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
