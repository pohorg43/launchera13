.class public Lcom/nearme/instant/xcard/utils/PublicPrefUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INIT_STATUS_NOT_INITIALIZED:I = 0x0

.field public static final INIT_STATUS_START_FINISHED:I = 0x2

.field public static final INIT_STATUS_START_NOT_FINISHED:I = 0x1

.field private static final PREF_KEY_CARD_INIT_STATUS:Ljava/lang/String; = "pref_card_init_status"

.field private static final PREF_KEY_SDK_CLASSES_LIST:Ljava/lang/String; = "pref_sdk_classes_list"

.field private static final PUBLIC_SHARED_PREF:Ljava/lang/String; = "public_shared_pref"

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCardPkgListUpdate()V
    .registers 3

    new-instance v0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;

    sget-object v1, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "pref_sdk_classes_list"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->getCardPackageList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->setCardPackageList(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static getCardInitStatus()I
    .registers 3
    .annotation build Lcom/nearme/instant/xcard/utils/PublicPrefUtil$InitStat;
    .end annotation

    sget-object v0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "public_shared_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_card_init_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCardPackageList()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "public_shared_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_sdk_classes_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    sput-object p0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    goto :goto_b

    :cond_9
    sput-object v0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    :goto_b
    return-void
.end method

.method public static setCardInitStatus(I)V
    .registers 4
    .param p0  # I
        .annotation build Lcom/nearme/instant/xcard/utils/PublicPrefUtil$InitStat;
        .end annotation
    .end param

    sget-object v0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "public_shared_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_card_init_status"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCardPackageList(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "public_shared_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
