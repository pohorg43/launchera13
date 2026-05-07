.class public Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;
.super Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;
.source ""

# interfaces
.implements Lcom/oplus/iconctrl/IAppsFancyDrawable;


# static fields
.field private static final BADGE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "IconFancyDrawable"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableAlpha:F

.field private mIsDisabled:Z

.field private mIsWork:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslateX:I

.field private mTranslateY:I

.field private mWorkResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;-><init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateX:I

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateY:I

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleX:F

    iput p3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleY:F

    const/4 p4, 0x0

    iput p4, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotX:F

    iput p4, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotY:F

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsDisabled:Z

    iput p3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mDisableAlpha:F

    iput-boolean p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsWork:Z

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawWorkRes(Landroid/graphics/Canvas;)V
    .registers 13

    iget-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsWork:Z

    if-eqz v0, :cond_b1

    iget v0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mWorkResId:I

    if-nez v0, :cond_a

    goto/16 :goto_b1

    :cond_a
    const-string v0, "drawWorkRes() resId= "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mWorkResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsDisabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFancyDrawable"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mWorkResId:I

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_33

    return-void

    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getIconScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getIconWidth()F

    move-result v3

    const/high16 v4, 0x42480000  # 50.0f

    mul-float/2addr v4, v2

    float-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    float-to-double v9, v2

    sub-double/2addr v7, v9

    mul-double/2addr v7, v5

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    div-double/2addr v7, v5

    double-to-int v5, v7

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "drawWorkRes() scale= "

    const-string v7, " iconWidth= "

    const-string v8, " size= "

    invoke-static {v6, v2, v7, v3, v8}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " offset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int v1, v4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsDisabled:Z

    if-eqz v3, :cond_8f

    iget v3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mDisableAlpha:F

    invoke-direct {p0, v3}, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8f
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr p0, v3

    add-int/2addr p0, v5

    int-to-float p0, p0

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method private getDisabledColorFilter(F)Landroid/graphics/ColorFilter;
    .registers 6

    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000  # 0.5f

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0x7f

    int-to-float v2, v2

    const/4 v3, 0x4

    aput v2, v1, v3

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x12

    aput p1, v1, v2

    invoke-virtual {v0, p0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p0
.end method


# virtual methods
.method public clearDarkEffect()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz p0, :cond_16

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    :cond_16
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleX:F

    iget v2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleY:F

    iget v3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotX:F

    iget v4, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotY:F

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->drawWorkRes(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getScaleX()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleX:F

    return p0
.end method

.method public getScaleY()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleY:F

    return p0
.end method

.method public getTranslateX()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateX:I

    return p0
.end method

.method public getTranslateY()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateY:I

    return p0
.end method

.method public onCleanUp()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->onPause()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->cleanUp()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

    invoke-interface {p0, v0}, Lcom/oplus/fancyicon/IHelperCallback;->onCleanUp(Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;)V

    :cond_1c
    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->resetDefaultThemeFlag()V

    return-void
.end method

.method public setDarkEffect(ILandroid/graphics/ColorFilter;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    :cond_13
    return-void
.end method

.method public setIsDisabled(ZF)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsDisabled isDisabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " disabledAlpha= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFancyDrawable"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsDisabled:Z

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mDisableAlpha:F

    return-void
.end method

.method public setScale(FFFF)V
    .registers 5

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleX:F

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mScaleY:F

    iput p3, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotX:F

    iput p4, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mPivotY:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTranslate(II)V
    .registers 3

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateX:I

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mTranslateY:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setWorkFlag(ZI)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWorkFlag isWork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " badgeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconFancyDrawable"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mIsWork:Z

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;->mWorkResId:I

    return-void
.end method
