.class public final Lcom/oplus/wallpaper/sdk/ImageProcess;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BLACK:I = -0xcfcfd0

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS:I = 0x258

.field private static final DEBUG:Z

.field public static final POSITION_B:I = 0x2

.field public static final POSITION_G:I = 0x1

.field public static final POSITION_R:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WS.ImageProcess"

.field private static final VALIDITY_B:I = 0xb4

.field private static final VALIDITY_G:I = 0xb4

.field private static final VALIDITY_R:I = 0xb4

.field public static final WHITE:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/oplus/wallpaper/sdk/ImageProcess;->DEBUG:Z

    const-string v0, "oplus_image_process"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTextColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I
    .registers 11

    invoke-static {p0, p1}, Lcom/oplus/wallpaper/sdk/ImageProcess;->checkArguments(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/oplus/wallpaper/sdk/ImageProcess;->calculateTextColorNative(Landroid/graphics/Bitmap;IIIII)[I

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/wallpaper/sdk/ImageProcess;->checkWhite([I)Z

    move-result p0

    if-nez p0, :cond_20

    const p0, -0xcfcfd0

    return p0

    :cond_20
    return v1
.end method

.method private static native calculateTextColorNative(Landroid/graphics/Bitmap;IIIII)[I
.end method

.method private static checkArguments(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .registers 6

    const-string v0, "WS.ImageProcess"

    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2d

    if-nez p1, :cond_e

    goto :goto_2d

    :cond_e
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v2, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v1, 0x1

    goto :goto_36

    :cond_23
    sget-boolean p0, Lcom/oplus/wallpaper/sdk/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_36

    const-string p0, "Arguments illegal, rect isn\'t in bitmap\'s region."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_2d
    :goto_2d
    sget-boolean p0, Lcom/oplus/wallpaper/sdk/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_36

    const-string p0, "Arguments illegal, bitmap or rect useless."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    if-nez v1, :cond_41

    sget-boolean p0, Lcom/oplus/wallpaper/sdk/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_41

    const-string p0, "Arguments illegal, do nothing about calculate, we will return Default Color."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return v1
.end method

.method private static checkWhite([I)Z
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/16 v2, 0xb4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_c

    aget v1, p0, v3

    if-lt v1, v2, :cond_19

    :cond_c
    aget v1, p0, v0

    aget v2, p0, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget p0, p0, v2

    add-int/2addr v1, p0

    const/16 p0, 0x258

    if-ge v1, p0, :cond_1a

    :cond_19
    move v0, v3

    :cond_1a
    return v0
.end method

.method public static native getBitmapBrightnessValue(Landroid/graphics/Bitmap;)I
.end method

.method public static native getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native getBitmapBrightnessValue([IIIIIII)I
.end method

.method public static native saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method
