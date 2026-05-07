.class public Lcom/coui/appcompat/textutil/COUIChangeTextUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->a:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
        0x3f8ccccd  # 1.1f
        0x3fa00000  # 1.25f
        0x3fb9999a  # 1.45f
        0x3fd33333  # 1.65f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Paint;Z)V
    .registers 4

    if-eqz p0, :cond_1d

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1d

    :cond_e
    if-eqz p1, :cond_18

    const/4 p1, 0x0

    const-string v0, "sans-serif-medium"

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1a

    :cond_18
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1, p1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static c(FF)F
    .registers 4

    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_e

    return p0

    :cond_e
    const p0, 0x3fd33333  # 1.65f

    cmpg-float p0, p1, p0

    const p1, 0x3f933333  # 1.15f

    if-gez p0, :cond_1a

    mul-float/2addr v0, p1

    return v0

    :cond_1a
    mul-float/2addr v0, p1

    return v0
.end method

.method public static d(FFI)F
    .registers 7

    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    return p0

    :cond_4
    sget-object v1, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->a:[F

    array-length v2, v1

    if-le p2, v2, :cond_a

    array-length p2, v1

    :cond_a
    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3f8ccccd  # 1.1f

    if-eq p2, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_28

    add-int/lit8 p2, p2, -0x1

    aget v0, v1, p2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_26

    aget p1, v1, p2

    :goto_24
    mul-float/2addr p0, p1

    return p0

    :cond_26
    mul-float/2addr p0, p1

    return p0

    :cond_28
    cmpg-float p2, p1, v3

    if-gez p2, :cond_2e

    mul-float/2addr p0, v2

    return p0

    :cond_2e
    const p2, 0x3fb9999a  # 1.45f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_37

    mul-float/2addr p0, v3

    return p0

    :cond_37
    const/high16 p1, 0x3fa00000  # 1.25f

    goto :goto_24

    :cond_3a
    cmpg-float p1, p1, v3

    if-gez p1, :cond_40

    mul-float/2addr p0, v2

    return p0

    :cond_40
    mul-float/2addr p0, v3

    return p0
.end method
