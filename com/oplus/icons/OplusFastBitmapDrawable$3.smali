.class Lcom/oplus/icons/OplusFastBitmapDrawable$3;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/icons/OplusFastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/oplus/icons/OplusFastBitmapDrawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/icons/OplusFastBitmapDrawable;)Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAlpha()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable$3;->get(Lcom/oplus/icons/OplusFastBitmapDrawable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/oplus/icons/OplusFastBitmapDrawable;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setAlpha(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rsub-int p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setSubLayerAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/icons/OplusFastBitmapDrawable$3;->set(Lcom/oplus/icons/OplusFastBitmapDrawable;Ljava/lang/Integer;)V

    return-void
.end method
