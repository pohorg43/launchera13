.class public Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;
.super Lcom/oplus/fancyicon/ScreenElementRoot;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DynmicDrawableRoot"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/ResourceLoader;)V

    return-void
.end method


# virtual methods
.method public createDrawable(II)Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;
    .registers 6

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V

    const-string p1, "pause"

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    return-object v0

    :cond_17
    const-string p0, "DynmicDrawableRoot"

    const-string p1, "create FancyDrawalable failed, engineContext is null!"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFacyDrawable(II)Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DynmicDrawableRoot"

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42600000  # 56.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x42480000  # 50.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    new-instance v5, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-direct {v5, v6, v7, v4, v4}, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V

    sub-int v6, v4, v0

    invoke-static {v5, v1, v6}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_40

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v4

    div-float/2addr v0, v1

    goto :goto_41

    :cond_40
    move v0, v3

    :goto_41
    new-instance v1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-direct {v1, v4, v5, p1, p2}, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V

    const-string p1, "pause"

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    cmpl-float p0, v0, v3

    if-eqz p0, :cond_6c

    invoke-virtual {v1, v0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->addTransparentPixels(F)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "third party need addTransparentPixels scale: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    return-object v1

    :cond_6d
    const-string p0, "create createFacyDrawable failed, engineContext is null!"

    invoke-static {v2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public createResourceLoader(Ljava/lang/String;)Lcom/oplus/fancyicon/content/res/ResourceLoader;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;

    invoke-direct {v0, p1}, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/fancyicon/IconZipFileProvider;

    invoke-direct {p1}, Lcom/oplus/fancyicon/IconZipFileProvider;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/fancyicon/content/res/loader/FancyDrawableResourceLoader;->bindZipProvider(Lcom/oplus/fancyicon/IconZipFileProvider;Landroid/content/Context;)V

    return-object v0
.end method

.method public createScreenElementFactory()Lcom/oplus/fancyicon/elements/ScreenElementFactory;
    .registers 1

    new-instance p0, Lcom/oplus/fancyicon/elements/ScreenElementFactory;

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/ScreenElementFactory;-><init>()V

    return-object p0
.end method

.method public createView()Lcom/oplus/fancyicon/UIEngineView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->isAllRenderablePaused()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->onPause()V

    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->isAllRenderablePaused()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->onResume()V

    :cond_9
    return-void
.end method

.method public resetDrawable(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/BaseRendererController;->addRenderable(Lcom/oplus/fancyicon/IRenderable;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/ScreenElementRoot;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setController(Lcom/oplus/fancyicon/BaseRendererController;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onResume()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
