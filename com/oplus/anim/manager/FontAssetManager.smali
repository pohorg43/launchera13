.class public Lcom/oplus/anim/manager/FontAssetManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/oplus/anim/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/anim/model/MutablePair<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/oplus/anim/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/model/MutablePair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/oplus/anim/FontAssetDelegate;)V
    .registers 4
    .param p2  # Lcom/oplus/anim/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/anim/model/MutablePair;

    invoke-direct {v0}, Lcom/oplus/anim/model/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->tempPair:Lcom/oplus/anim/model/MutablePair;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/anim/manager/FontAssetManager;->delegate:Lcom/oplus/anim/FontAssetDelegate;

    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_2b

    const-string p1, "EffectiveAnimationDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void

    :cond_2b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oplus/anim/manager/FontAssetManager;->delegate:Lcom/oplus/anim/FontAssetDelegate;

    if-eqz v1, :cond_14

    invoke-virtual {v1, p1}, Lcom/oplus/anim/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/oplus/anim/manager/FontAssetManager;->delegate:Lcom/oplus/anim/FontAssetDelegate;

    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    invoke-virtual {v1, p1}, Lcom/oplus/anim/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_26
    if-nez v0, :cond_3d

    const-string v0, "fonts/"

    invoke-static {v0, p1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_3d
    iget-object p0, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    const-string p0, "Italic"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "Bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p0, :cond_12

    if-eqz p2, :cond_12

    const/4 p0, 0x3

    goto :goto_1b

    :cond_12
    if-eqz p0, :cond_16

    const/4 p0, 0x2

    goto :goto_1b

    :cond_16
    if-eqz p2, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    if-ne p2, p0, :cond_22

    return-object p1

    :cond_22
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 5

    iget-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->tempPair:Lcom/oplus/anim/model/MutablePair;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/anim/manager/FontAssetManager;->tempPair:Lcom/oplus/anim/model/MutablePair;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    invoke-direct {p0, p1}, Lcom/oplus/anim/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/oplus/anim/manager/FontAssetManager;->tempPair:Lcom/oplus/anim/model/MutablePair;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    return-void
.end method

.method public setDelegate(Lcom/oplus/anim/FontAssetDelegate;)V
    .registers 2
    .param p1  # Lcom/oplus/anim/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/anim/manager/FontAssetManager;->delegate:Lcom/oplus/anim/FontAssetDelegate;

    return-void
.end method
