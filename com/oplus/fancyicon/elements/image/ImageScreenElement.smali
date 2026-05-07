.class public Lcom/oplus/fancyicon/elements/image/ImageScreenElement;
.super Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;
    }
.end annotation


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final DEGREE_180:I = 0xb4

.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final SCALE_TYPE_CROP_CENTER:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final mModeStrs:[Ljava/lang/String;

.field private static final mModes:[Landroid/graphics/Xfermode;


# instance fields
.field private mAniHeight:F

.field private mAniWidth:F

.field private mAntiAlias:Z

.field public mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

.field public mBlurMaskColors:[I

.field public mBlurRadius:I

.field private mBmpHeight:F

.field private mBmpSizeHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mBmpWidth:F

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

.field public mCoverColors:[I

.field public mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mHasSrcRect:Z

.field private mHeight:F

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field public mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:I

.field private mSrcExpH:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mSrcExpW:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mSrcExpX:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mSrcExpY:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mSrcH:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mModes:[Landroid/graphics/Xfermode;

    const-string v3, "Clear"

    const-string v4, "Src"

    const-string v5, "Dst"

    const-string v6, "SrcOver"

    const-string v7, "DstOver"

    const-string v8, "SrcIn"

    const-string v9, "DstIn"

    const-string v10, "SrcOut"

    const-string v11, "DstOut"

    const-string v12, "SrcATop"

    const-string v13, "DstATop"

    const-string v14, "Xor"

    const-string v15, "Darken"

    const-string v16, "Lighten"

    const-string v17, "Multiply"

    const-string v18, "Screen"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mModeStrs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAntiAlias:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getPorterDuffMode(Lorg/w3c/dom/Element;)Landroid/graphics/Xfermode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "srcX"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpX:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v1, "srcY"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpY:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v1, "srcW"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpW:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v1, "srcH"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpH:Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpX:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpY:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpW:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v2, :cond_93

    if-eqz v1, :cond_93

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHasSrcRect:Z

    :cond_93
    const-string v1, "useVirtualScreen"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "srcType"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_a7

    const-string v2, "VirtualScreen"

    :cond_a7
    const-string v1, "scaleType"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b9

    const-string v1, "centerCrop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mScaleType:I

    :cond_b9
    invoke-static {p2, v2}, Lcom/oplus/fancyicon/data/BitmapProvider;->create(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;)Lcom/oplus/fancyicon/data/BitmapProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_e5

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "bmp_width"

    invoke-direct {p1, p2, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpSizeWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "bmp_height"

    invoke-direct {p1, p2, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpSizeHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_e5
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mKey:Ljava/lang/String;

    :cond_e
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "Mask"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_1b
    if-ge v0, v1, :cond_32

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v3, v4, v5}, Lcom/oplus/fancyicon/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lcom/oplus/fancyicon/animation/AnimatedElement;II)V
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_25

    return-void

    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    float-to-double v13, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    float-to-double v5, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_106

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_53

    int-to-double v1, v10

    sub-double/2addr v13, v1

    int-to-double v1, v11

    sub-double/2addr v5, v1

    goto/16 :goto_108

    :cond_53
    sub-float v16, v0, v1

    float-to-double v0, v1

    const-wide v17, 0x400921fb54442d18L  # Math.PI

    mul-double v0, v0, v17

    const-wide v19, 0x4066800000000000L  # 180.0

    div-double v21, v0, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getPivotX()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getPivotY()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    if-nez v0, :cond_79

    new-instance v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    invoke-direct {v0, v15}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;-><init>(Lcom/oplus/fancyicon/elements/image/a;)V

    iput-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    :cond_79
    iget-object v7, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    move-object/from16 v0, p0

    move-wide/from16 v23, v5

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v7}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->rotateXY(DDDLcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;)V

    int-to-double v0, v10

    iget-object v2, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    iget-object v2, v2, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v25, v2, v0

    int-to-double v0, v11

    iget-object v2, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    iget-object v2, v2, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v10, v2, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    float-to-double v5, v0

    mul-double v5, v5, v17

    div-double v5, v5, v19

    iget-object v7, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->rotateXY(DDDLcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;)V

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    iget-object v0, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v13, v0

    sub-double v13, v13, v25

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mRotateXYpair:Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;

    iget-object v0, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v0

    float-to-double v0, v0

    add-double v5, v23, v0

    sub-double/2addr v5, v10

    mul-double v0, v13, v13

    mul-double v2, v5, v5

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmpl-double v4, v5, v10

    if-lez v4, :cond_f3

    add-double v21, v21, v2

    goto :goto_f7

    :cond_f3
    add-double v21, v21, v17

    sub-double v21, v21, v2

    :goto_f7
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v13, v2, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v5, v2, v0

    move/from16 v0, v16

    goto :goto_108

    :cond_106
    move-wide/from16 v23, v5

    :goto_108
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v8, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v1

    float-to-double v1, v1

    add-double/2addr v1, v13

    double-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v8, v2, v3}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v2, v5

    double-to-float v2, v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    double-to-int v0, v13

    double-to-int v1, v5

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v8, v2, v3}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-gez v2, :cond_138

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :cond_138
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getHeight()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v8, v3, v4}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-gez v3, :cond_14b

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :cond_14b
    iget-object v4, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getAlpha()I

    move-result v1

    iget-object v2, v8, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootAlpha()I

    move-result v2

    mul-int/2addr v2, v1

    div-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v1, v8, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private rotateXY(DDDLcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_39

    div-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    sub-double/2addr v4, v2

    sub-double/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p5, v0

    add-double/2addr p5, p1

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p7, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP1:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    sub-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p7, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP2:Ljava/lang/Object;

    goto :goto_3d

    :cond_39
    iput-object p0, p7, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP2:Ljava/lang/Object;

    iput-object p0, p7, Lcom/oplus/fancyicon/elements/image/ImageScreenElement$Pair;->mP1:Ljava/lang/Object;

    :goto_3d
    return-void
.end method

.method private updateBitmap()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/BitmapProvider;->init(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpSizeWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpSizeHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_35
    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniWidth:F

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpWidth:F

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4a

    move v0, v1

    :cond_4a
    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniHeight:F

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getBitmapHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpHeight:F

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniHeight:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_60

    move v0, v1

    :cond_60
    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mX:F

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getY()F

    move-result v0

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mY:F

    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    invoke-virtual {v2, v1}, Lcom/oplus/fancyicon/data/BitmapProvider;->init(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1c6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getAlpha()I

    move-result v10

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootAlpha()I

    move-result v3

    mul-int/2addr v3, v10

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v11

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    const/4 v12, 0x0

    cmpl-float v3, v2, v12

    const-string v4, "ImageScreenElement"

    if-eqz v3, :cond_1aa

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_1aa

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mX:F

    invoke-virtual {v0, v3, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->getLeft(FF)F

    move-result v2

    float-to-int v13, v2

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mY:F

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    invoke-virtual {v0, v2, v3}, Lcom/oplus/fancyicon/elements/ScreenElement;->getTop(FF)F

    move-result v2

    float-to-int v14, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_e0

    int-to-float v15, v13

    int-to-float v7, v14

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v13

    int-to-float v4, v1

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v14

    int-to-float v5, v1

    iget-object v6, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/16 v16, 0x1f

    move-object/from16 v1, p1

    move v2, v15

    move v3, v7

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniWidth:F

    cmpl-float v1, v1, v12

    if-gtz v1, :cond_a0

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniHeight:F

    cmpl-float v1, v1, v12

    if-gtz v1, :cond_a0

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_98

    goto :goto_a0

    :cond_98
    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move/from16 v2, v17

    invoke-virtual {v8, v9, v15, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_c5

    :cond_a0
    :goto_a0
    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    float-to-int v2, v2

    add-int/2addr v2, v13

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    float-to-int v3, v3

    add-int/2addr v3, v14

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_be

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcX:I

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcY:I

    iget v4, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcW:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcH:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_be
    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_c5
    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-direct {v0, v8, v2, v13, v14}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lcom/oplus/fancyicon/animation/AnimatedElement;II)V

    goto :goto_cb

    :cond_db
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_173

    :cond_e0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_124

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v2

    if-eqz v2, :cond_10f

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v3, v13

    iget v4, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v14

    iget v5, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v13, v14, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v1, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_173

    :cond_10f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_173

    :cond_124
    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mScaleType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14c

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpWidth:F

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpHeight:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_13f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mX:F

    invoke-virtual {v0, v2, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->getLeft(FF)F

    move-result v1

    float-to-int v13, v1

    goto :goto_14c

    :cond_13f
    div-float/2addr v2, v1

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    iget v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mY:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->getTop(FF)F

    move-result v1

    float-to-int v14, v1

    :cond_14c
    :goto_14c
    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v2, v13

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v14

    iget v4, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_16c

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcX:I

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcY:I

    iget v4, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcW:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcH:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_16c
    iget-object v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_173
    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

    if-eqz v1, :cond_1a3

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    iget v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/clock/ClockHandView;->updateSize(FF)V

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootAlpha()I

    move-result v2

    mul-int/2addr v2, v10

    div-int/lit16 v2, v2, 0xff

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/clock/ClockHandView;->updatePaint(ILandroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

    iget-object v2, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHour12()Ljava/lang/Double;

    move-result-object v2

    iget-object v0, v0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getMinute()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v8, v2, v0}, Lcom/oplus/fancyicon/clock/ClockHandView;->drawHandle(Landroid/graphics/Canvas;Ljava/lang/Double;Ljava/lang/Double;)V

    :cond_1a3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v8, v11}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_1c6

    :cond_1aa
    const-string v1, "doRender mWidth = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c6
    :goto_1c6
    return-void
.end method

.method public drawBitmapNoMask(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .registers 9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object p2

    if-eqz p2, :cond_30

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v1, p3

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p4

    iget v3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_c0

    :cond_30
    const-string p1, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageScreenElement"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    :cond_4a
    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_69

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_69

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-nez v0, :cond_69

    invoke-static {p2}, Lcom/oplus/fancyicon/util/ImageUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_c0

    int-to-float p3, p3

    int-to-float p4, p4

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_c0

    :cond_69
    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mScaleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_91

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpWidth:F

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBmpHeight:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_84

    div-float/2addr v0, v1

    iget p3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    iget p3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mX:F

    invoke-virtual {p0, p3, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->getLeft(FF)F

    move-result p3

    float-to-int p3, p3

    goto :goto_91

    :cond_84
    div-float/2addr v1, v0

    iget p4, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    mul-float/2addr v1, p4

    iput v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    iget p4, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mY:F

    invoke-virtual {p0, p4, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->getTop(FF)F

    move-result p4

    float-to-int p4, p4

    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    int-to-float v1, p3

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p4

    iget v3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz p3, :cond_b1

    iget p4, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcX:I

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcY:I

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcW:I

    add-int/2addr v1, p4

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcH:I

    add-int/2addr v2, v0

    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_b1
    invoke-static {p2}, Lcom/oplus/fancyicon/util/ImageUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p3

    if-eqz p3, :cond_c0

    iget-object p3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public drawBitmapWithMask(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .registers 10

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getMaxWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getMaxHeight()F

    move-result v1

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_32

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_52

    :cond_32
    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getResourceManager()Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    :cond_52
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_78

    iget v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mAniHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_78

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-nez v0, :cond_78

    invoke-static {p2}, Lcom/oplus/fancyicon/util/ImageUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a5

    :cond_78
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    float-to-int v1, v1

    iget v3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_94

    iget v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcX:I

    iget v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcY:I

    iget v3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcW:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcH:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_94
    invoke-static {p2}, Lcom/oplus/fancyicon/util/ImageUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a5
    :goto_a5
    iget-object p2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ab
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/animation/AnimatedElement;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lcom/oplus/fancyicon/animation/AnimatedElement;II)V

    goto :goto_ab

    :cond_bd
    iget-object p2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/oplus/fancyicon/util/ImageUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_ce

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    int-to-float p3, p3

    int-to-float p4, p4

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_ce
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBitmapHeight()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_b

    return p0

    :cond_a
    return v0

    :catch_b
    const-string p0, "ImageScreenElement"

    const-string v1, "getBitmapHeight, mCurrentBitmap == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getBitmapWidth()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_b

    return p0

    :cond_a
    return v0

    :catch_b
    const-string p0, "ImageScreenElement"

    const-string v1, "getBitmapWidth, mCurrentBitmap == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getBlurredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_ee

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_ee

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-nez v4, :cond_ee

    iget v4, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurRadius:I

    if-lez v4, :cond_ee

    :try_start_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v7, v4

    const/high16 v8, 0x40400000  # 3.0f

    div-float v9, v7, v8

    float-to-int v9, v9

    int-to-float v14, v6

    div-float v8, v14, v8

    float-to-int v8, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v10
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_2f} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_ee

    if-ge v10, v2, :cond_50

    :try_start_31
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-ge v10, v2, :cond_3a

    move v2, v4

    move v8, v6

    goto :goto_51

    :cond_3a
    if-le v9, v8, :cond_41

    int-to-float v8, v2

    mul-float/2addr v8, v14

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_51

    :cond_41
    if-ge v9, v8, :cond_50

    int-to-float v8, v2

    mul-float/2addr v8, v7

    div-float/2addr v8, v14

    float-to-int v8, v8

    move/from16 v25, v8

    move v8, v2

    move/from16 v2, v25

    goto :goto_51

    :catch_4d
    const/4 v3, 0x0

    goto/16 :goto_f0

    :cond_50
    move v2, v9

    :goto_51
    const/4 v9, 0x0

    if-eq v4, v2, :cond_58

    if-eq v6, v8, :cond_58

    move v10, v5

    goto :goto_59

    :cond_58
    move v10, v9

    :goto_59
    if-eqz v10, :cond_60

    invoke-static {v1, v2, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_5f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31 .. :try_end_5f} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5f} :catch_4d

    goto :goto_61

    :cond_60
    move-object v11, v1

    :goto_61
    :try_start_61
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v11, v12, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_71} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_ee

    if-eqz v10, :cond_76

    :try_start_73
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_73 .. :try_end_76} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_4d

    :cond_76
    :try_start_76
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v10, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurMaskColors:[I
    :try_end_7d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_76 .. :try_end_7d} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_ee

    const/4 v11, 0x3

    if-eqz v10, :cond_b2

    :try_start_80
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000  # 1.0f

    int-to-float v13, v8

    iget-object v11, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurMaskColors:[I

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v3

    move/from16 v21, v13

    move-object/from16 v22, v11

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v15, v3, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_80 .. :try_end_b2} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b2} :catch_4d

    :cond_b2
    :try_start_b2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_b8} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b8} :catch_ee

    :try_start_b8
    invoke-virtual {v15, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v7, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    invoke-virtual {v15, v12, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCoverColors:[I

    if-eqz v3, :cond_ec

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000  # 1.0f

    iget-object v0, v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCoverColors:[I

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v3

    move-object v5, v15

    move-object v15, v0

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b8 .. :try_end_ec} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ec} :catch_ec

    :catch_ec
    :cond_ec
    move-object v3, v1

    goto :goto_f0

    :catch_ee
    :cond_ee
    const/4 v5, 0x0

    move-object v3, v5

    :goto_f0
    return-object v3
.end method

.method public getHeight()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHeight:F

    return p0
.end method

.method public getPorterDuffMode(Lorg/w3c/dom/Element;)Landroid/graphics/Xfermode;
    .registers 4

    if-eqz p1, :cond_1e

    const-string p0, "porterduffmode"

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    sget-object v0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mModeStrs:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1e

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mModes:[Landroid/graphics/Xfermode;

    aget-object p0, p0, p1

    return-object p0

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1e
    sget-object p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mModes:[Landroid/graphics/Xfermode;

    const/4 p1, 0x6

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mWidth:F

    return p0
.end method

.method public getX()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mX:F

    return p0
.end method

.method public getY()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mY:F

    return p0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/animation/AnimatedElement;->init()V

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->init(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "ImageScreenElement"

    if-eqz p1, :cond_72

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    const-string v1, "blur"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurRadius:I

    :cond_19
    :try_start_19
    const-string v1, "blurMaskGradient"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_6b

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "\\|"

    if-nez v2, :cond_45

    :try_start_29
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v6, v1

    if-lt v6, v4, :cond_45

    new-array v6, v2, [I

    iput-object v6, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurMaskColors:[I

    move v6, v3

    :goto_36
    if-ge v6, v2, :cond_45

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBlurMaskColors:[I

    aget-object v8, v1, v6

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_45
    const-string v1, "coverGradient"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-lt v1, v4, :cond_71

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCoverColors:[I

    :goto_5c
    if-ge v3, v1, :cond_71

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCoverColors:[I

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_68} :catch_6b

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :catch_6b
    move-exception p0

    const-string p1, "create wallpaper error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    return-void

    :cond_72
    const-string p0, "node is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oplus/fancyicon/ScreenElementLoadException;

    invoke-direct {p1, p0}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRenderThreadStoped()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onRenderThreadStoped()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/BitmapProvider;->setNull()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->updateBitmap()V

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    :goto_c
    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->pause()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->pause()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public reset(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->reset(J)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->reset(J)V

    goto :goto_b

    :cond_1b
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmapProvider:Lcom/oplus/fancyicon/data/BitmapProvider;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/BitmapProvider;->reset()V

    :cond_22
    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->resume()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->resume()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->updateBitmap()V

    :cond_9
    return-void
.end method

.method public shouldDrawClockHandView()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clock_day_bg.png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

    if-nez v0, :cond_19

    new-instance v0, Lcom/oplus/fancyicon/clock/ClockHandView;

    invoke-direct {v0}, Lcom/oplus/fancyicon/clock/ClockHandView;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mClockHandView:Lcom/oplus/fancyicon/clock/ClockHandView;

    :cond_19
    return-void
.end method

.method public tick(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->tick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->tick(J)V

    goto :goto_12

    :cond_22
    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mHasSrcRect:Z

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpX:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcX:I

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpY:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcY:I

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpW:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcW:I

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcExpH:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->mSrcH:I

    :cond_5a
    invoke-direct {p0}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;->updateBitmap()V

    return-void
.end method
