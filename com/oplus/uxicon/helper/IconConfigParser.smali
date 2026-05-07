.class public Lcom/oplus/uxicon/helper/IconConfigParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ART_PLUS_BIT_LENGTH:I = 0x4

.field public static final DARKMODE_ICON_BIT_LENGTH:I = 0x1

.field public static final DARKMODE_ICON_TRANSLATE_BIT_LENGTH:I = 0x3d

.field public static final FOREGROUND_SIZE_BIT_LENGTH:I = 0x10

.field public static final FOREIGN_BIT_LENGTH:I = 0x4

.field public static final ICON_RADIUS_BIT_LENGTH:I = 0xc

.field public static final ICON_RADIUS_PX_BIT_LENGTH:I = 0x1

.field public static final ICON_SHAPE_BIT_LENGTH:I = 0x4

.field public static final ICON_SIZE_BIT_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "IconConfigParser"

.field public static final THEME_BIT_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static float2int(F)I
    .registers 6

    float-to-int v0, p0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    cmpl-double p0, v1, v3

    if-lez p0, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    return v0
.end method

.method public static getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    const/high16 v1, 0x45af0000  # 5600.0f

    div-float/2addr p0, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1b
    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    return p0
.end method

.method public static getDefaultIconSize(Landroid/content/res/Resources;)I
    .registers 2

    sget v0, Lcom/oplus/uxicon/helper/R$dimen;->icon_sample_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDpFromIconConfigPx(FI)I
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x42c80000  # 100.0f

    mul-float/2addr p1, p0

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->float2int(F)I

    move-result p0

    return p0
.end method

.method public static getHexString(Ljava/lang/Long;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaterialIconSize(Landroid/content/res/Resources;)I
    .registers 2

    sget v0, Lcom/oplus/uxicon/helper/R$dimen;->material_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPxFromIconConfigDp(FI)I
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->float2int(F)I

    move-result p0

    return p0
.end method

.method public static isDarkModeIconEnabled(Ljava/lang/Long;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 p0, 0x3d

    shr-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_20

    move v1, v0

    :cond_20
    return v1
.end method

.method public static mergeConfig(Lcom/oplus/uxicon/helper/IconConfig;)J
    .registers 10

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    or-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getDarkModeIcon()I

    move-result v2

    shl-long/2addr v4, v3

    and-int/2addr v2, v3

    int-to-long v6, v2

    or-long/2addr v4, v6

    shl-long/2addr v4, v3

    int-to-long v2, v3

    or-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v4

    const/16 v5, 0xc

    shl-long/2addr v2, v5

    and-int/lit16 v4, v4, 0xfff

    int-to-long v4, v4

    or-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v4

    const/16 v5, 0x10

    shl-long/2addr v2, v5

    const v6, 0xffff

    and-int/2addr v4, v6

    int-to-long v7, v4

    or-long/2addr v2, v7

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v4

    shl-long/2addr v2, v5

    and-int/2addr v4, v6

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    and-int/lit8 v0, v0, 0xf

    int-to-long v5, v0

    or-long/2addr v2, v5

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    shl-long/2addr v2, v4

    and-int/lit8 v0, v0, 0xf

    int-to-long v5, v0

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    and-int/lit8 v0, v1, 0xf

    int-to-long v0, v0

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->getForeign()Z

    move-result p0

    shl-long/2addr v0, v4

    and-int/lit8 p0, p0, 0xf

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Lcom/oplus/uxicon/helper/IconConfig;

    invoke-direct {v0}, Lcom/oplus/uxicon/helper/IconConfig;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setForeign(Z)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 p1, 0x4

    shr-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v0, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shr-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v0, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shr-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v0, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shr-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const v4, 0xffff

    and-int/2addr v1, v4

    if-nez v1, :cond_7b

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget v5, Lcom/oplus/uxicon/helper/R$dimen;->icon_sample_size:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/oplus/uxicon/helper/IconConfigParser;->getDpFromIconConfigPx(FI)I

    move-result v1

    :cond_7b
    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 p1, 0x10

    shr-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v5

    and-int/2addr v4, v5

    if-nez v4, :cond_a0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sget v5, Lcom/oplus/uxicon/helper/R$dimen;->icon_sample_size:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v4, p0}, Lcom/oplus/uxicon/helper/IconConfigParser;->getDpFromIconConfigPx(FI)I

    move-result v4

    :cond_a0
    invoke-virtual {v0, v4}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shr-long p0, v4, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p1

    and-int/lit16 p1, p1, 0xfff

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconRadius(I)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const/16 v1, 0xd

    shr-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p1

    and-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setDarkModeIcon(I)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shr-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_da

    move v2, v3

    :cond_da
    invoke-virtual {v0, v2}, Lcom/oplus/uxicon/helper/IconConfig;->setLocalSpecial(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parseConfig::icon config =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconConfigParser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static reverseDarkModeIconConfig(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x2000000000000000L

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
