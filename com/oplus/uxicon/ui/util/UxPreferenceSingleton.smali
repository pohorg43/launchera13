.class public Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile sInstance:Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;


# instance fields
.field private mDefaultFgSize:I

.field private mDefaultIconSize:I

.field private mIsOHExport:Z

.field public mIsSimpleMode:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSimpleModeIconSize:I

.field private mThemeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mThemeNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsOHExport:Z

    const/16 v1, 0x15e0

    iput v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultIconSize:I

    iput v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultFgSize:I

    const-string v1, "ICON_CONFIG_PREFERENCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oplus/uxicon/ui/R$bool;->is_flavor_oh:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsOHExport:Z

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->initDefaultValues()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;
    .registers 3

    sget-object v0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->sInstance:Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->sInstance:Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->sInstance:Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->sInstance:Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;

    return-object p0
.end method

.method private initDefaultValues()V
    .registers 3

    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->isPadDevices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x15e0

    if-eqz v0, :cond_15

    iput v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultIconSize:I

    const/16 v0, 0x1900

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultFgSize:I

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    goto :goto_30

    :cond_15
    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsFoldScreen:Z

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->sIsDragonFly:Z

    if-nez v0, :cond_28

    const/16 v0, 0x1518

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultIconSize:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultFgSize:I

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    goto :goto_30

    :cond_28
    const/16 v0, 0x1388

    iput v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultIconSize:I

    iput v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultFgSize:I

    iput v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    :goto_30
    return-void
.end method


# virtual methods
.method public clearPreference()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mThemeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mThemeNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_simple_mode_icon"

    invoke-static {v2, v3, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFontMessage()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "icon_name_key"

    const-string v1, "1,1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontScale()Ljava/lang/Float;
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v0, "icon_font_scale"

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundSize(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "_foreground"

    invoke-static {p1, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultFgSize:I

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIconSize(Ljava/lang/String;)I
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "_simple_mode_icon"

    invoke-static {p1, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mSimpleModeIconSize:I

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_13
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "_icon"

    invoke-static {p1, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mDefaultIconSize:I

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIsArtSwitchOn(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "custom_theme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_art"

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_21
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsSimpleMode(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getRadiusSize(Ljava/lang/String;)I
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_radius"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTextSize(Ljava/lang/String;)I
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_font"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isIconThemeEnable(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_themeIconEnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1c

    move v0, p1

    :cond_1c
    return v0
.end method

.method public isLocalSpecial(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_localSpecial"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1c

    move v0, p1

    :cond_1c
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putIsSimpleMode(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p2, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    return-void
.end method

.method public saveFontMessage(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "icon_name_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    return-void
.end method

.method public saveFontScale(Ljava/lang/Float;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "icon_font_scale"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveForegroundSize(Ljava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_foreground"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveIconSize(Ljava/lang/String;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_simple_mode_icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_41

    :cond_23
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_41
    return-void
.end method

.method public saveIconThemeEnable(Ljava/lang/String;Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_themeIconEnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveIsArtSwitchOn(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "_art"

    invoke-static {p1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLocalSpecial(Ljava/lang/String;Z)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_localSpecial"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveRadiusSize(Ljava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_radius"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTextSize(Ljava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_font"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveThemeNames(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mThemeNames:Ljava/util/ArrayList;

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->mIsSimpleMode:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/util/UxPreferenceSingleton;->clearPreference()V

    :cond_9
    return-void
.end method
