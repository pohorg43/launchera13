.class public abstract Lcom/oplus/settingsdynamic/SettingsDynamicController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;,
        Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsDynamicController"


# instance fields
.field private mAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mIsDestroy:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mParentCategory:Landroidx/preference/PreferenceScreen;

.field private mPreKeyToAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreferenceHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreKeyToAuthority:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mIsDestroy:Z

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    if-nez p2, :cond_2d

    iput-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    goto :goto_2f

    :cond_2d
    iput-object p2, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    :goto_2f
    return-void
.end method

.method public static synthetic a(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$initOrUpdatePreferenceCategory$5(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$initOrUpdatePreference$7(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/widget/COUISwitch;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$stopLoading$13(Lcom/coui/appcompat/widget/COUISwitch;Ljava/lang/String;)V

    return-void
.end method

.method private createPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreference->type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsDynamicController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const-string v2, "TYPE_PREFRENCE_JUMP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/preference/COUIJumpPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oplus/settingsdynamic/b;

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/settingsdynamic/b;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_ab

    :cond_41
    const-string v2, "TYPE_PREFRENCE_SWITCH"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oplus/settingsdynamic/a;

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/settingsdynamic/a;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_ab

    :cond_59
    const-string v1, "TYPE_PREFRENCE_LOADING_SWITCH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController$1;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;)V

    goto :goto_ab

    :cond_71
    const-string v1, "TYPE_PREFRENCE_JUMP_SWITCH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_93

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oplus/settingsdynamic/a;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/settingsdynamic/a;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance p1, Lcom/oplus/settingsdynamic/b;

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/settingsdynamic/b;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_ab

    :cond_93
    const-string v1, "TYPE_PREFRENCE_LIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ab

    new-instance v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Lcom/coui/appcompat/preference/COUIListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oplus/settingsdynamic/a;

    const/4 v1, 0x2

    invoke-direct {p1, p0, p2, v1}, Lcom/oplus/settingsdynamic/a;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_ab
    :goto_ab
    return-object v0
.end method

.method public static synthetic d(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$onCreatePreference$0()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$createPreference$8(Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$createPreference$10(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$onDestroyPreference$3()V

    return-void
.end method

.method private getIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 10

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_10

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    move p0, v1

    goto :goto_11

    :cond_10
    move p0, v0

    :goto_11
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    const/4 v3, 0x0

    if-nez p0, :cond_29

    if-eqz v2, :cond_51

    :cond_29
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz p0, :cond_33

    invoke-virtual {v3, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    if-eqz v2, :cond_38

    invoke-virtual {v3, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_38
    if-eqz v1, :cond_51

    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_44
    array-length p2, p1

    if-ge v0, p2, :cond_51

    aget-object p2, p1, v0

    aget-object p3, p0, v0

    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_51
    return-object v3
.end method

.method public static synthetic h(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$onResumePreference$1()V

    return-void
.end method

.method public static synthetic i(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$createPreference$12(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initOrUpdatePreference(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/settingsdynamic/f;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/oplus/settingsdynamic/f;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initOrUpdatePreferenceCategory(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/settingsdynamic/e;

    invoke-direct {v1, p0, p1}, Lcom/oplus/settingsdynamic/e;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic j(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$createPreference$9(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/oplus/settingsdynamic/SettingsDynamicController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$onStopPreference$2()V

    return-void
.end method

.method public static synthetic l(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$createPreference$11(Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPreference$10(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPreference$11(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onJump(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPreference$12(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onListClick(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPreference$8(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onJump(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPreference$9(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initOrUpdatePreference$6(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .registers 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->startActivitySafely(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method private lambda$initOrUpdatePreference$7(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Ljava/lang/String;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)V
    .registers 13

    iget-boolean v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mIsDestroy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreferenceHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    if-nez v0, :cond_53

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->g(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->createPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreferenceHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreKeyToAuthority:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mParentCategory:Landroidx/preference/PreferenceScreen;

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->b(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_53

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_53

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_53
    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->h(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5d

    move p2, v2

    goto :goto_5e

    :cond_5d
    move p2, v1

    :goto_5e
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->b(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I

    move-result p2

    if-ne p2, v2, :cond_69

    move p2, v2

    goto :goto_6a

    :cond_69
    move p2, v1

    :goto_6a
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->d(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->f(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->e(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    instance-of p2, v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p2, :cond_90

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->a(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :cond_90
    instance-of v3, v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v3, :cond_a3

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)I

    move-result v4

    if-ne v4, v2, :cond_9f

    move v4, v2

    goto :goto_a0

    :cond_9f
    move v4, v1

    :goto_a0
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_a3
    instance-of v3, v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-eqz v3, :cond_b6

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)I

    move-result v4

    if-ne v4, v2, :cond_b2

    move v4, v2

    goto :goto_b3

    :cond_b2
    move v4, v1

    :goto_b3
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_b6
    instance-of v3, v0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    if-eqz v3, :cond_ce

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)I

    move-result v4

    if-ne v4, v2, :cond_c4

    move v1, v2

    :cond_c4
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Lcom/android/launcher/x;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher/x;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    iput-object v1, v3, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->o:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;

    :cond_ce
    instance-of v1, v0, Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v1, :cond_10c

    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->d(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->f(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-static {v2, v3}, Lcom/oplus/settingsdynamic/SettingsDynamicConstants;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->g(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/oplus/settingsdynamic/SettingsDynamicConstants;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->e(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->a(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v1, Lcom/coui/appcompat/preference/COUIListPreference;->c:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10c

    iput-object p1, v1, Lcom/coui/appcompat/preference/COUIListPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_10c
    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->i(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->j(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->k(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->h(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;->a(Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_12b

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_133

    :cond_12b
    if-eqz p2, :cond_133

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/preference/COUIPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    :cond_133
    :goto_133
    return-void
.end method

.method private synthetic lambda$initOrUpdatePreferenceCategory$5(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mIsDestroy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mParentCategory:Landroidx/preference/PreferenceScreen;

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_28

    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mParentCategory:Landroidx/preference/PreferenceScreen;

    if-eqz p0, :cond_28

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_28
    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->f(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->d(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method private synthetic lambda$onCreatePreference$0()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryAction()V

    const-string v0, "onCreate"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callAllProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getAllCategory()V

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getAllPreference()V

    return-void
.end method

.method private synthetic lambda$onDestroyPreference$3()V
    .registers 3

    const-string v0, "onDestroy"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callAllProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$onResumePreference$1()V
    .registers 3

    const-string v0, "onResume"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callAllProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getAllCategory()V

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getAllPreference()V

    return-void
.end method

.method private synthetic lambda$onStopPreference$2()V
    .registers 3

    const-string v0, "onStop"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callAllProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$queryAllProvider$4(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "queryAllProvider() curThreadId = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsDynamicController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method private synthetic lambda$stopLoading$13(Lcom/coui/appcompat/widget/COUISwitch;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUISwitch;->stopLoading()V

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreKeyToAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "preference"

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$initOrUpdatePreference$6(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    return-void
.end method

.method public static synthetic n(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->lambda$queryAllProvider$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/String;)V

    return-void
.end method

.method private operatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreKeyToAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Warning, null authority while "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "for key, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsDynamicController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_2a
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p4, :cond_35

    const-string p3, "preference"

    invoke-direct {p0, v0, p3, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-object p2
.end method

.method private queryAction()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/oplus/settingsdynamic/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsDynamicController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_64
    return-void
.end method

.method private queryAllProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/oplus/settingsdynamic/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/settingsdynamic/d;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_15

    invoke-virtual {v0}, Lcom/oplus/settingsdynamic/d;->run()V

    goto :goto_1a

    :cond_15
    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method private queryProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_58

    const-string v1, "/"

    if-eqz v0, :cond_2d

    :try_start_8
    iget-object p3, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_65

    :cond_2d
    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "KEY=?"

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, v6, p2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_65

    :catch_58
    move-exception p2

    const-string p3, "queryProvider error:"

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "SettingsDynamicController"

    invoke-static {p2, p3, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_65
    if-nez p2, :cond_68

    return-void

    :cond_68
    :goto_68
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_8c

    new-instance p3, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;

    invoke-direct {p3, p0, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Landroid/database/Cursor;)V

    invoke-static {p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->g(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE_CATEGORY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-direct {p0, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->initOrUpdatePreferenceCategory(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)V

    goto :goto_68

    :cond_83
    new-instance v0, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;

    invoke-direct {v0, p0, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Landroid/database/Cursor;)V

    invoke-direct {p0, p3, v0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->initOrUpdatePreference(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;Lcom/oplus/settingsdynamic/SettingsDynamicController$PreferenceModel;Ljava/lang/String;)V

    goto :goto_68

    :cond_8c
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "SettingsDynamicController"

    if-nez p1, :cond_a

    const-string p0, "startActivitySafely: intent == null.."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_24

    :catch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method private stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/String;)V
    .registers 6

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUISwitch;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/launcher/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher/z;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Lcom/coui/appcompat/widget/COUISwitch;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/coui/appcompat/widget/COUISwitch;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method


# virtual methods
.method public callAllProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mAuthorities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->callProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public callProviderImp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    const-string v0, "SettingsDynamicController"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "newValue"

    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "callProviderImp: authority = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", method = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_57
    .catchall {:try_start_3 .. :try_end_3c} :catchall_55

    if-nez p0, :cond_49

    :try_start_3e
    const-string p1, "callProviderImp contentResolver is null."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_53
    .catchall {:try_start_3e .. :try_end_43} :catchall_71

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_48
    return-object v1

    :cond_49
    :try_start_49
    const-string p1, ""

    invoke-virtual {p0, p2, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4f} :catch_53
    .catchall {:try_start_49 .. :try_end_4f} :catchall_71

    :goto_4f
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_70

    :catch_53
    move-exception p1

    goto :goto_59

    :catchall_55
    move-exception p1

    goto :goto_73

    :catch_57
    move-exception p1

    move-object p0, v1

    :goto_59
    :try_start_59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callProviderImp error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_71

    if-eqz p0, :cond_70

    goto :goto_4f

    :cond_70
    :goto_70
    return-object v1

    :catchall_71
    move-exception p1

    move-object v1, p0

    :goto_73
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_78
    throw p1
.end method

.method public abstract getAction()Ljava/lang/String;
.end method

.method public getAllCategory()V
    .registers 3

    const-string v0, "category"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryAllProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllPreference()V
    .registers 3

    const-string v0, "preference"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryAllProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCategory(Ljava/lang/String;)V
    .registers 3

    const-string v0, "category"

    invoke-direct {p0, v0, p1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->queryAllProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreference(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mParentCategory:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mIsDestroy:Z

    iget-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/settingsdynamic/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/oplus/settingsdynamic/c;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroyPreference()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mIsDestroy:Z

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreferenceHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mPreKeyToAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/settingsdynamic/c;

    invoke-direct {v2, p0, v0}, Lcom/oplus/settingsdynamic/c;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onJump(Ljava/lang/String;)Z
    .registers 5

    const-string v0, ""

    const-string v1, "onJump"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->operatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const-string p1, "block"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onListClick(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "onListClick"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->operatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const-string p1, "block"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onResumePreference()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/settingsdynamic/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/settingsdynamic/c;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopPreference()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController;->mThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/settingsdynamic/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/oplus/settingsdynamic/c;-><init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "onSwitch"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->operatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_a

    return v1

    :cond_a
    const-string p1, "block"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public onSwitchStartLoading(Ljava/lang/String;)Z
    .registers 5

    const-string v0, ""

    const-string v1, "onStartLoading"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->operatePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    const-string p1, "block"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
