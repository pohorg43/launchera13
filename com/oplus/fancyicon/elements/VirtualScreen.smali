.class public Lcom/oplus/fancyicon/elements/VirtualScreen;
.super Lcom/oplus/fancyicon/elements/ElementGroup;
.source ""


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init()V
    .registers 5

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->init()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v2, "screen_width"

    invoke-static {v2, v0}, Lcom/oplus/fancyicon/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_34

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    const-string v2, "screen_height"

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v2

    :cond_34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getTargetDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ElementGroup;->onRenderThreadStoped()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
