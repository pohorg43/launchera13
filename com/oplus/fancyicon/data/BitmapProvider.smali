.class public abstract Lcom/oplus/fancyicon/data/BitmapProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;,
        Lcom/oplus/fancyicon/data/BitmapProvider$ResourceImageProvider;,
        Lcom/oplus/fancyicon/data/BitmapProvider$AppIconProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    return-void
.end method

.method public static create(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;)Lcom/oplus/fancyicon/data/BitmapProvider;
    .registers 3

    const-string v0, "ResourceImageProvider"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Lcom/oplus/fancyicon/data/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/data/BitmapProvider$ResourceImageProvider;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p1

    :cond_e
    const-string v0, "VirtualScreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/data/BitmapProvider$VirtualScreenProvider;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p1

    :cond_1c
    const-string v0, "AppIconProvider"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    new-instance p1, Lcom/oplus/fancyicon/data/BitmapProvider$AppIconProvider;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/data/BitmapProvider$AppIconProvider;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p1

    :cond_2a
    new-instance p1, Lcom/oplus/fancyicon/data/BitmapProvider$ResourceImageProvider;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/data/BitmapProvider$ResourceImageProvider;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p1
.end method


# virtual methods
.method public abstract createBitmap()V
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->createBitmap()V

    :cond_d
    iget-object p0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mSrc:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->setNull()V

    :cond_b
    iput-object p1, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mSrc:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->reset()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setNull()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/BitmapProvider;->mSrc:Ljava/lang/String;

    return-void
.end method
