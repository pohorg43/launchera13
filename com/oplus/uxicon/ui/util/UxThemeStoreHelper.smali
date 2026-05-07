.class public Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_MORE_ICON:Ljava/lang/String; = "com.oplus.themestore.action.icon"

.field public static final ACTION_THEME_STORE:Ljava/lang/String; = "com.nearme.themespace.SET_THEME"

.field public static final EXTRA_FROM_TAG:Ljava/lang/String; = "extra_from_tag"

.field public static final EXTRA_FROM_VALUE:Ljava/lang/String; = "extra_from_uxiconstyle"

.field public static final EXTRA_FROM_VALUE_UXDESIGN:Ljava/lang/String; = "extra_from_uxdesign"

.field public static final PACKAGE_HEYTAP:Ljava/lang/String; = "com.heytap.themestore"

.field public static final PACKAGE_THEMESPACE:Ljava/lang/String; = "com.nearme.themespace"

.field public static final PACKAGE_THEMESTORE:Ljava/lang/String; = "com.nearme.themestore"

.field public static final PACKAGE_THEMESTORE_OVERSEA:Ljava/lang/String; = "com.oplus.themestore"

.field public static final TAG:Ljava/lang/String; = "UxThemeStoreHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "com.heytap.themestore"

    invoke-static {p0, v0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.nearme.themestore"

    const-string v3, "com.nearme.themespace"

    const-string v4, "com.oplus.themestore"

    if-eqz v1, :cond_f

    goto :goto_28

    :cond_f
    invoke-static {p0, v4}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v4

    goto :goto_28

    :cond_17
    invoke-static {p0, v3}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v3

    goto :goto_28

    :cond_1f
    invoke-static {p0, v2}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    move-object v0, v2

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0
.end method

.method public static isIntentExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->getPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1f

    return v1

    :cond_1f
    const/high16 v2, 0x10000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_4c

    :cond_2e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    return v1
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x100

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_e

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :catch_e
    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isShow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->getPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v0

    :cond_f
    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isIntentExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static startMoreIconActivity(Landroid/content/Context;)V
    .registers 4

    const-string v0, "com.oplus.themestore.action.icon"

    invoke-static {p0, v0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->isIntentExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string p0, "UxThemeStoreHelper"

    const-string v0, "startMoreIconActivity error: intent not exist."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->getPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_from_tag"

    const-string v1, "extra_from_uxdesign"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startThemeStoreActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->getPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_from_tag"

    const-string v0, "extra_from_uxiconstyle"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
