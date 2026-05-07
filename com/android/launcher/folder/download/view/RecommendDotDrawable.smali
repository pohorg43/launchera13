.class public final Lcom/android/launcher/folder/download/view/RecommendDotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/IBadgeScale;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/view/RecommendDotDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/view/RecommendDotDrawable$Companion;

.field public static final DOT_SCALE:F = 0.36f


# instance fields
.field private mBadgeScale:F

.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleSizeScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->Companion:Lcom/android/launcher/folder/download/view/RecommendDotDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mVisibleSizeScale:F

    const v0, 0x7f080553

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_19

    const/4 p1, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1d
    iput-object p1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final applyScaleAndOffset()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/BaseDraggingActivity;

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v0, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070725

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x3eb851ec  # 0.36f

    invoke-virtual {p0, v2}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->updateBadgeScale(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getBubbleIconSize()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->setVisibleSizeScale(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    return-void
.end method

.method public getBadgeScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mBadgeScale:F

    return p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_6

    const/4 p0, -0x3

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getVisibleSizeScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mVisibleSizeScale:F

    return p0
.end method

.method public invalidateSelf()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_8
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_8
    return-void
.end method

.method public final setMDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setVisibleSizeScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mVisibleSizeScale:F

    return-void
.end method

.method public updateBadgeScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->mBadgeScale:F

    return-void
.end method
