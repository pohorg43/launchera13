.class public Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_ADJUST_TO_MAX_WIDTH:Ljava/lang/String; = "adjust_to_max_width"

.field private static final SPLIT_SCREEN_PREFERENCE:Ljava/lang/String; = "com.oplusos.systemui.stackdivider"

.field private static sInstance:Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;


# instance fields
.field private final mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.oplusos.systemui.stackdivider"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->sInstance:Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->sInstance:Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    :cond_b
    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->sInstance:Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public getBooleanPref(Ljava/lang/String;Z)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIntPref(Ljava/lang/String;I)I
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLongPref(Ljava/lang/String;J)J
    .registers 4

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public putBooleanPref(Ljava/lang/String;Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putIntPref(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putLongPref(Ljava/lang/String;J)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/splitscreen/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
