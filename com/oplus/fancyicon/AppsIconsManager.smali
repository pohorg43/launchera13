.class public Lcom/oplus/fancyicon/AppsIconsManager;
.super Lcom/oplus/fancyicon/AppsIconsHelper;
.source ""

# interfaces
.implements Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsIconsManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/fancyicon/AppsIconsHelper;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/AppsIconsHelper;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/AppsIconsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/fancyicon/util/FeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->updateIconConfig(Landroid/content/Context;)V

    return-void
.end method

.method private getIconFancyDrawable(Ljava/lang/String;II)Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;
    .registers 7

    iget-object v0, p0, Lcom/oplus/fancyicon/AppsIconsManager;->mContext:Landroid/content/Context;

    const-string v1, "AppsIconsManager"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string p0, "getIconFancyDrawable , LauncherActivityInfo or mContext is null"

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_d
    :try_start_d
    invoke-virtual {p0, v0, p1}, Lcom/oplus/fancyicon/AppsIconsHelper;->getFancyDrawableRoot(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v2

    :cond_14
    invoke-virtual {p1, p2, p3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;->createFacyDrawable(II)Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    move-result-object p1

    if-nez p1, :cond_1b

    return-object v2

    :cond_1b
    iget-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setHelperCallback(Lcom/oplus/fancyicon/IHelperCallback;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getIcon error! e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getIcon(Landroid/content/pm/LauncherActivityInfo;II)Landroid/graphics/drawable/Drawable;
    .registers 7

    const-string v0, "AppsIconsManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_11

    const-string p0, "getIcon , applicationInfo is null"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_11
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3}, Lcom/oplus/fancyicon/AppsIconsManager;->getIconFancyDrawable(Ljava/lang/String;II)Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    move-result-object v1

    if-nez v1, :cond_1e

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1e
    const-string p1, "getIcon , mName = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return  = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getIcon(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/AppsIconsManager;->getIconFancyDrawable(Ljava/lang/String;II)Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    move-result-object p0

    return-object p0
.end method

.method public onCleanUp(Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;)V
    .registers 3

    sget-object v0, Lcom/oplus/fancyicon/AppsIconsHelper;->sFancyDrawableRootList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->updateIconConfig(Landroid/content/Context;)V

    return-void
.end method
