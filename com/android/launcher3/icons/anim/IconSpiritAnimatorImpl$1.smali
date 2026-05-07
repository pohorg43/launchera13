.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/oplus/iconctrl/IAppsFancyDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/iconctrl/IAppsFancyDrawable;)Ljava/lang/Float;
    .registers 2

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->getScaleX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$1;->get(Lcom/oplus/iconctrl/IAppsFancyDrawable;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/oplus/iconctrl/IAppsFancyDrawable;F)V
    .registers 5

    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-interface {p1, p2, p2, v0, v1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setScale(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$1;->setValue(Lcom/oplus/iconctrl/IAppsFancyDrawable;F)V

    return-void
.end method
