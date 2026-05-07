.class public Lcom/oplus/fancyicon/AppsIconsHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/IHelperCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppsIconsHelper"

.field public static final sFancyDrawableRootList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;",
            ">;"
        }
    .end annotation
.end field

.field private static sRegistered:Z


# instance fields
.field private mCacheDirectory:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

.field private mLogObserver:Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;

.field public mName:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/AppsIconsHelper;->sFancyDrawableRootList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/fancyicon/AppsIconsHelper;->sRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oplus/fancyicon/IconZipFileProvider;

    invoke-direct {v1}, Lcom/oplus/fancyicon/IconZipFileProvider;-><init>()V

    iput-object v1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

    new-instance v1, Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;

    invoke-direct {v1, v0}, Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mLogObserver:Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;

    return-void
.end method

.method private getFancyDrawableRootInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;
    .registers 5

    new-instance v0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;

    invoke-direct {v0, p2}, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mIconZipFileProvider:Lcom/oplus/fancyicon/IconZipFileProvider;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->bindZipProvider(Lcom/oplus/fancyicon/IconZipFileProvider;Landroid/content/Context;)V

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_1d

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/oplus/fancyicon/content/res/ResourceLoader;

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getManifestRoot(Landroid/content/Context;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return-object p0

    :cond_25
    new-instance v1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    invoke-direct {v1, p1, v0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    invoke-virtual {v1, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->setName(Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/fancyicon/AppsIconsHelper;->sFancyDrawableRootList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->loadElements(Lorg/w3c/dom/Element;)V

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->initRoot()V

    return-object v1
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2c

    instance-of v1, v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz v1, :cond_26

    check-cast v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onPause()V

    invoke-virtual {v0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->cleanUp()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/oplus/fancyicon/AppsIconsHelper;->sFancyDrawableRootList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->resetDefaultThemeFlag()V

    :cond_2c
    return-void
.end method

.method public getFancyDrawableRoot(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/AppsIconsHelper;->initTheme(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/oplus/theme/OplusAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_20

    invoke-static {p2}, Lcom/oplus/theme/OplusAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    if-eqz p2, :cond_20

    const-string v0, ".png"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/AppsIconsHelper;->getFancyDrawableRootInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method public getIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;II)Landroid/graphics/drawable/Drawable;
    .registers 7

    const-string v0, "AppsIconsHelper"

    iget-object v1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_50

    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    :try_start_a
    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/oplus/fancyicon/AppsIconsHelper;->getFancyDrawableRoot(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_50

    :cond_1d
    invoke-virtual {v1, p3, p4}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;->createDrawable(II)Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    iget-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setHelperCallback(Lcom/oplus/fancyicon/IHelperCallback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "debugFancyIcon, getIcon, createDrawable mName = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception p0

    const-string p1, "getIcon, error! e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_50
    :goto_50
    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public initTheme(Landroid/content/Context;)V
    .registers 6

    const-string v0, "AppsIconsHelper"

    if-nez p1, :cond_a

    const-string p0, "initTheme. The context is null!"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iput-object p1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/oplus/fancyicon/AppsIconsHelper;->sRegistered:Z

    if-nez v1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mLogObserver:Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/fancyicon/AppsIconsHelper;->sRegistered:Z

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result p1

    if-eqz p0, :cond_59

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->isOplusThemeChange(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {p0, p1}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    invoke-static {p1}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    invoke-static {}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;->clearFontCache()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "theme change:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_59
    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->hasInit()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {p0, p1}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    :cond_62
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->getAppsNumbers()I

    move-result p0

    if-gtz p0, :cond_6b

    invoke-static {p1}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    :cond_6b
    :goto_6b
    return-void
.end method

.method public isFancyIcon()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_a

    instance-of p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onCleanUp(Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;)V
    .registers 3

    sget-object v0, Lcom/oplus/fancyicon/AppsIconsHelper;->sFancyDrawableRootList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mLogObserver:Lcom/oplus/fancyicon/AppsIconsHelper$LogObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onPause()V

    :cond_d
    return-void
.end method

.method public onPauseThread()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onPauseThread()V

    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onResume()V

    :cond_d
    return-void
.end method

.method public onResumeThread()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onResumeThread()V

    :cond_d
    return-void
.end method

.method public resetDrawable(Landroid/content/Context;Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/oplus/fancyicon/AppsIconsHelper;->getFancyDrawableRootInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->isThreadStoped()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;->resetDrawable(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object p2, p0, Lcom/oplus/fancyicon/AppsIconsHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x1

    return p0

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "debugFancyIcon, resetDrawable failed! name = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", fancyDrawableRoot = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AppsIconsHelper"

    invoke-static {p2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    const-string p0, "debugFancyIcon, resetDrawable failed! fancyDrawableRoot.isThreadStoped() = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->isThreadStoped()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    const/4 p0, 0x0

    return p0
.end method
