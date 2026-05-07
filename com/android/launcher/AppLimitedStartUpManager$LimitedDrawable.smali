.class public Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/AppLimitedStartUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitedDrawable"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public final sLimitColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field public final synthetic this$0:Lcom/android/launcher/AppLimitedStartUpManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/AppLimitedStartUpManager;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->this$0:Lcom/android/launcher/AppLimitedStartUpManager;

    iget-object p1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, -0x4d000000

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->sLimitColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->mPackageName:Ljava/lang/String;

    :cond_26
    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->sLimitColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isLimitType()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateFilter()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/AppLimitedStartUpManager$LimitedDrawable;->sLimitColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
