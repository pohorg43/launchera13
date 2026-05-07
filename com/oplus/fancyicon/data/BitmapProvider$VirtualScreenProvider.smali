.class Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;
.super Lcom/oplus/fancyicon/data/BitmapProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lcom/oplus/fancyicon/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/BitmapProvider;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public createBitmap()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/fancyicon/elements/VirtualScreen;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/oplus/fancyicon/elements/VirtualScreen;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/oplus/fancyicon/elements/VirtualScreen;

    :cond_10
    iget-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/oplus/fancyicon/elements/VirtualScreen;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
