.class public Lcom/coui/appcompat/grid/COUIPercentUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FIIILandroid/content/Context;)F
    .registers 11

    if-lez p1, :cond_52

    if-le p1, p2, :cond_5

    goto :goto_52

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_f

    if-ne p3, v1, :cond_d

    goto :goto_f

    :cond_d
    move v3, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v3, v2

    :goto_10
    if-ne p3, v1, :cond_1d

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/support/appcompat/R$dimen;->grid_guide_coulmn_card_margin_start:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_27

    :cond_1d
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/support/appcompat/R$dimen;->grid_guide_coulmn_default_margin_start:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    :goto_27
    mul-int/2addr p3, v1

    int-to-float v1, p3

    sub-float/2addr p0, v1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->grid_guide_coulmn_gap:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr v4, v1

    int-to-float v1, v4

    sub-float/2addr p0, v1

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p2, p1

    mul-float/2addr p0, p2

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p0, p1

    if-eqz v3, :cond_50

    move v0, p3

    :cond_50
    int-to-float p1, v0

    add-float/2addr p0, p1

    :cond_52
    :goto_52
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v0, 0x4

    const/16 v1, 0x258

    if-ge p0, v1, :cond_10

    return v0

    :cond_10
    const/16 v1, 0x348

    if-ge p0, v1, :cond_17

    const/16 p0, 0x8

    return p0

    :cond_17
    if-le p0, v1, :cond_1c

    const/16 p0, 0xc

    return p0

    :cond_1c
    return v0
.end method
