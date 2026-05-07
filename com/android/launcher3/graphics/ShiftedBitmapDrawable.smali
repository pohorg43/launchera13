.class public Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/ShiftedBitmapDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShiftX:F

.field private mShiftY:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FF)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftX:F

    iput p3, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftY:F

    new-instance p2, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable$MyConstantState;

    iget p3, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftX:F

    iget v0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftY:F

    invoke-direct {p2, p1, p3, v0}, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;FF)V

    iput-object p2, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftX:F

    iget v2, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftY:F

    iget-object p0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public getShiftX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftX:F

    return p0
.end method

.method public getShiftY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftY:F

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setShiftX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftX:F

    return-void
.end method

.method public setShiftY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mShiftY:F

    return-void
.end method
